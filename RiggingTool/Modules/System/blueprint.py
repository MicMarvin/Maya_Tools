import os
import maya.cmds as cmds
import RiggingTool.Modules.System.utils as utils
from PySide2 import QtWidgets
import importlib

class Blueprint():
    def __init__(self, moduleName, userSpecifiedName, jointInfo, hookObjectIn):
        self.moduleName = moduleName
        self.userSpecifiedName = userSpecifiedName
        self.moduleNamespace = self.moduleName + "__" + self.userSpecifiedName
        self.containerName = self.moduleNamespace + ":module_container"
        self.jointInfo = jointInfo

        self.hookObject = None
        if hookObjectIn != None:
            partitionInfo = hookObjectIn.rpartition("_translation_control")
            if partitionInfo[1] != "" and partitionInfo[2] == "":
                self.hookObject = hookObjectIn

        self.canBeMirrored = True
        self.mirrored = False

    # Methods intended for overriding by derived classes
    def install_custom(self, joints):
        print("install_custom() method is not implemented by derived class")

    def lock_phase1(self):
        # Gather and return all required information from this module's control objects
        #
        # jointPositions = list of joint positions, from root down the hierarchy
        # jointOrientations = a list of orientations, or a list of axis information (orientJoint and secondaryAxisOrient for joint command)
        #               # These are passed in the following tuple: (orientations, None) or (None, axisInfo)
        # jointRotationOrders = a list of joint rotation orders (integer values gathered with getAttr)
        # jointPreferredAngles = a list of joint preferred angles, optional (can pass None)
        # hookObject = self.findHookObjectForLock()
        # rootTransform = a bool, either True or False. True = R, T, and S on root joint. False = R only
        #
        # moduleInfo = (jointPositions, jointOrientations, jointRotationOrders, jointPreferredAngles, hookObject, rootTransform)
        # return moduleInfo
        return None

    def UI_custom(self):
        temp = 1

    def mirror_custom(self, originalModule):
        print("mirror_custom() method is not implemented by derived class")

# Base Class Methods
    def install(self):
        cmds.namespace(setNamespace=":")
        cmds.namespace(add=self.moduleNamespace)

        self.jointsGrp = cmds.group(empty=True, name=self.moduleNamespace + ":joints_grp")
        self.hierarchyRepresentationGrp = cmds.group(empty=True, name=self.moduleNamespace + ":hierarchyRepresentations_grp")
        self.orientationControlsGrp = cmds.group(empty=True, name=self.moduleNamespace + ":orientationControls_grp")
        self.preferredAngleRepresentationGrp = cmds.group(empty=True, name=self.moduleNamespace + ":preferredAngleRepresentation_grp")
        self.moduleGrp = cmds.group([self.jointsGrp, self.hierarchyRepresentationGrp, self.orientationControlsGrp, self.preferredAngleRepresentationGrp], name=self.moduleNamespace + ":module_grp")

        cmds.container(name=self.containerName, addNode=self.moduleGrp, ihb=True)

        cmds.select(clear=True)

        index = 0
        joints = []

        for joint in self.jointInfo:
            jointName = joint[0]
            jointPos = joint[1]

            parentJoint = ""
            if index > 0:
                parentJoint = self.moduleNamespace + ":" + self.jointInfo[index - 1][0]
                cmds.select(parentJoint, replace=True)

            jointName_full = cmds.joint(n=self.moduleNamespace + ":" + jointName, p=jointPos)
            joints.append(jointName_full)

            cmds.setAttr(jointName_full + ".visibility", 0)

            utils.addNodeToContainer(self.containerName, jointName_full)

            cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full + ".rotate", jointName + "_R"])
            cmds.container(self.containerName, edit=True, publishAndBind=[jointName_full + ".rotateOrder", jointName + "rotateOrder"])

            if index > 0:
                cmds.joint(parentJoint, edit=True, orientJoint="xyz", sao="yup")

            index += 1

        if self.mirrored:
            mirrorXY = False
            mirrorYZ = False
            mirrorXZ = False
            if self.mirrorPlane == "XY":
                mirrorXY = True
            elif self.mirrorPlane == "YZ":
                mirrorYZ = True
            elif self.mirrorPlane == "XZ":
                mirrorXZ = True

            mirrorBehavior = False
            if self.rotationFunction == "Behaviour":
                mirrorBehavior = True

            mirroredNodes = cmds.mirrorJoint(joints[0], mirrorXY=mirrorXY, mirrorYZ=mirrorYZ, mirrorXZ=mirrorXZ, mirrorBehavior=mirrorBehavior)

            cmds.delete(joints)

            mirroredJoints = []
            for node in mirroredNodes:
                if cmds.objectType(node, isType="joint"):
                    mirroredJoints.append(node)
                else:
                    cmds.delete(node)

            index = 0
            for joint in mirroredJoints:
                jointName = self.jointInfo[index][0]
                newJointName = cmds.rename(joint, self.moduleNamespace + ":" + jointName)

                self.jointInfo[index][1] = cmds.xform(newJointName, q=True, worldSpace=True, translation=True)

                index += 1

        # Parent the entire hierarchy (root joint with its children) to the joints group
        cmds.parent(joints[0], self.jointsGrp, absolute=True)

        self.initializeModuleTransform(self.jointInfo[0][1])

        translationControls = []
        for joint in joints:
            translationControls.append(self.createTranslationControlAtJoint(joint))

        rootJoint_pointConstraint = cmds.pointConstraint(translationControls[0], joints[0], maintainOffset=False, name=joints[0] + "_pointConstraint")
        utils.addNodeToContainer(self.containerName, rootJoint_pointConstraint)

        self.initializeHook(translationControls[0])

        # Setup stretchy joint segments
        for index in range(len(joints) -1):
            self.setupStretchyJointSegment(joints[index], joints[index + 1])

        self.install_custom(joints)

        utils.forceSceneUpdate()

    def createTranslationControlAtJoint(self, joint):
        posControlFile = os.environ["RIGGING_TOOL_ROOT"] + "/RiggingTool/ControlObjects/Blueprint/translation_control.ma"
        cmds.file(posControlFile, i=True, defaultNamespace=True)

        container = cmds.rename("translation_control_container", joint + "_translation_control_container")
        utils.addNodeToContainer(self.containerName, container)

        for node in cmds.container(container, q=True, nodeList=True):
            cmds.rename(node, joint + "_" + node, ignoreShape=True)

        control = joint + "_translation_control"

        cmds.parent(control, self.moduleTransform, absolute=True)

        jointPos = cmds.xform(joint, q=True, worldSpace=True, translation=True)
        cmds.xform(control, worldSpace=True, absolute=True, translation=jointPos)

        niceName = utils.stripLeadingNamespace(joint)[1]
        attrName = niceName + "_T"

        cmds.container(container, edit=True, publishAndBind=[control + ".translate", attrName])
        cmds.container(self.containerName, edit=True, publishAndBind=[container + "." + attrName, attrName])

        return control

    def getTranslationControl(self, jointName):
        return jointName + "_translation_control"

    def setupStretchyJointSegment(self, parentJoint, childJoint):
        parentTranslationControl = self.getTranslationControl(parentJoint)
        childTranslationControl = self.getTranslationControl(childJoint)

        poleVectorLocator = cmds.spaceLocator(n=parentTranslationControl + "_poleVectorLocator")[0]
        poleVectorLocatorGrp = cmds.group(poleVectorLocator, name=poleVectorLocator + "_parentConstraintGrp")

        cmds.parent(poleVectorLocatorGrp, self.moduleGrp, absolute=True)
        parentConstraint = cmds.parentConstraint(parentTranslationControl, poleVectorLocatorGrp, maintainOffset=False)[0]

        cmds.setAttr(poleVectorLocator + ".visibility", 0)

        cmds.setAttr(poleVectorLocator + ".ty", -0.5)

        ikNodes = utils.basic_stretchy_IK(parentJoint, childJoint, container=self.containerName, lockMinimumLength=False, poleVectorObject=poleVectorLocator, scaleCorrectionAttribute=None)
        ikHandle = ikNodes["ikHandle"]
        rootLocator = ikNodes["rootLocator"]
        endLocator = ikNodes["endLocator"]

        if self.mirrored:
            if self.mirrorPlane == "XZ":
                cmds.setAttr(ikHandle + ".twist", 90)

        childPointConstraint = cmds.pointConstraint(childTranslationControl, endLocator, maintainOffset=False, n=endLocator + "_pointConstraint")[0]

        utils.addNodeToContainer(self.containerName, [poleVectorLocatorGrp, parentConstraint, childPointConstraint], ihb=True)

        for node in [ikHandle, rootLocator, endLocator]:
            cmds.parent(node, self.jointsGrp, absolute=True)
            cmds.setAttr(node + ".visibility", 0)

        self.createHierarchyRepresentation(parentJoint, childJoint)

    def createHierarchyRepresentation(self, parentJoint, childJoint):
        nodes = self.createStretchyObject("/ControlObjects/Blueprint/hierarchy_representation.ma", "hierarchy_representation_container", "hierarchy_representation", parentJoint, childJoint)
        constrainedGrp = nodes[2]

        cmds.parent(constrainedGrp, self.hierarchyRepresentationGrp, relative=True)

    def createStretchyObject(self, objectRelativeFilepath, objectContainerName, objectName, parentJoint, childJoint):
        objectFile = os.environ["RIGGING_TOOL_ROOT"] + "/RiggingTool" + objectRelativeFilepath
        cmds.file(objectFile, i=True, defaultNamespace=True)

        objectContainer = cmds.rename(objectContainerName, parentJoint + "_" + objectContainerName)

        for node in cmds.container(objectContainer, q =True, nodeList=True):
            cmds.rename(node, parentJoint + "_" + node, ignoreShape=True)

        object = parentJoint + "_" + objectName

        constrainedGrp = cmds.group(empty=True, name=object + "_parentConstraint_grp")
        cmds.parent(object, constrainedGrp, absolute=True)

        parentConstraint = cmds.parentConstraint(parentJoint, constrainedGrp, maintainOffset=False)[0]

        cmds.connectAttr(childJoint + ".translateX", constrainedGrp + ".scaleX")

        scaleConstraint = cmds.scaleConstraint(self.moduleTransform, constrainedGrp, skip=["x"], maintainOffset=False)[0]

        utils.addNodeToContainer(objectContainer, [constrainedGrp, parentConstraint, scaleConstraint], ihb=True)
        utils.addNodeToContainer(self.containerName, objectContainer)

        return (objectContainer,object, constrainedGrp)

    def initializeModuleTransform(self, rootPos):
        controlGrpFile = os.environ["RIGGING_TOOL_ROOT"] + "/RiggingTool/ControlObjects/Blueprint/controlGroup_control.ma"
        cmds.file(controlGrpFile, i=True, defaultNamespace=True)

        self.moduleTransform = cmds.rename("controlGroup_control", self.moduleNamespace + ":module_transform")

        cmds.xform(self.moduleTransform, worldSpace=True, absolute=True, translation=rootPos)

        if self.mirrored:
            duplicateTransform = cmds.duplicate(self.originalModule + ":module_transform", parentOnly=True, name="TEMP_TRANSFORM")[0]
            emptyGroup = cmds.group(empty=True)
            cmds.parent(duplicateTransform, emptyGroup, absolute=True)

            scaleAttr = ".scaleX"
            if self.mirrorPlane == "XZ":
                scaleAttr = ".scaleY"
            elif self.mirrorPlane == "XY":
                scaleAttr = ".scaleZ"

            cmds.setAttr(emptyGroup + scaleAttr, -1)

            parentConstraint = cmds.parentConstraint(duplicateTransform, self.moduleTransform, maintainOffset=False)
            cmds.delete(parentConstraint)
            cmds.delete(emptyGroup)

            tempLocator = cmds.spaceLocator()[0]
            scaleConstraint = cmds.scaleConstraint(self.originalModule + ":module_transform", tempLocator, maintainOffset=False)[0]
            scale = cmds.getAttr(tempLocator + ".scaleX")
            cmds.delete([tempLocator, scaleConstraint])

            cmds.xform(self.moduleTransform, objectSpace=True, scale=[scale, scale, scale])

        utils.addNodeToContainer(self.containerName, self.moduleTransform, ihb=True)

        # Setup global Scaling
        cmds.connectAttr(self.moduleTransform + ".scaleY", self.moduleTransform + ".scaleX")
        cmds.connectAttr(self.moduleTransform + ".scaleY", self.moduleTransform + ".scaleZ")

        cmds.aliasAttr("globalScale", self.moduleTransform + ".scaleY")


        cmds.container(self.containerName, edit=True, publishAndBind=[self.moduleTransform + ".translate", "moduleTransform_T"])
        cmds.container(self.containerName, edit=True, publishAndBind=[self.moduleTransform + ".rotate", "moduleTransform_R"])
        cmds.container(self.containerName, edit=True, publishAndBind=[self.moduleTransform + ".globalScale", "moduleTransform_globalScale"])

    def deleteHierarchyRepresentation(self, parentJoint):
        hierarchyContainer = parentJoint + "_hierarchy_representation_container"
        cmds.delete(hierarchyContainer)

    def createOrientationControl(self, parentJoint, childJoint):
        self.deleteHierarchyRepresentation(parentJoint)

        nodes = self.createStretchyObject("/ControlObjects/Blueprint/orientation_control.ma", "orientation_control_container", "orientation_control", parentJoint, childJoint)
        orientationContainer = nodes[0]
        orientationControl = nodes[1]
        constrainedGrp = nodes[2]

        cmds.parent(constrainedGrp, self.orientationControlsGrp, relative=True)

        parentJointWithoutNamespace = utils.stripAllNamespaces(parentJoint)[1]
        attrName = parentJointWithoutNamespace + "_orientation"
        cmds.container(orientationContainer, edit=True, publishAndBind=[orientationControl + ".rotateX", attrName])
        cmds.container(self.containerName, edit=True, publishAndBind=[orientationContainer + "." + attrName, attrName])

        return orientationControl

    def getJoints(self):
        jointBasename = self.moduleNamespace + ":"
        joints = []

        for jointInf in self.jointInfo:
            joints.append(jointBasename + jointInf[0])

        return joints

    def getOrientationControl(self, jointName):
        return jointName + "_orientation_control"

    def orientationControlledJoint_getOrientation(self, joint, cleanParent):

        newCleanParent = cmds.duplicate(joint, parentOnly=True)[0]

        if not cleanParent in cmds.listRelatives(newCleanParent, p=True):
            cmds.parent(newCleanParent, cleanParent, absolute=True)

        cmds.makeIdentity(newCleanParent, apply=True, rotate=True, scale=False, translate=False)

        orientationControl = self.getOrientationControl(joint)
        cmds.setAttr(newCleanParent + ".rotateX", cmds.getAttr(orientationControl + ".rotateX"))

        cmds.makeIdentity(newCleanParent, apply=True, rotate=True, scale=False, translate=False)

        orientX = cmds.getAttr(newCleanParent + ".jointOrientX")
        orientY = cmds.getAttr(newCleanParent + ".jointOrientY")
        orientZ = cmds.getAttr(newCleanParent + ".jointOrientZ")

        orientationValues = (orientX, orientY, orientZ)

        return (orientationValues, newCleanParent)


    def lock_phase2(self, moduleInfo):
        jointPositions = moduleInfo[0]
        numJoints = len(jointPositions)

        jointOrientations = moduleInfo[1]
        orientWithAxis = False
        pureOrientation = False
        if jointOrientations[0] == None:
            orientWithAxis = True
            jointOrientations = jointOrientations[1]
        else:
            pureOrientation = True
            jointOrientations = jointOrientations[0]

        numOrientations = len(jointOrientations)

        jointRotationOrders = moduleInfo[2]
        numRotationOrders = len(jointRotationOrders)

        jointPreferredAngles = moduleInfo[3]
        numPreferredAngles = 0
        if jointPreferredAngles != None:
            numPreferredAngles = len(jointPreferredAngles)

        hookObject = moduleInfo[4]

        rootTransform = moduleInfo[5]

        mirrorInfo = None
        oldModuleGrp = self.moduleNamespace + ":module_grp"
        if cmds.attributeQuery("mirrorInfo", n=oldModuleGrp, exists=True):
            mirrorInfo = cmds.getAttr(oldModuleGrp + ".mirrorInfo")

        # Delete blueprint controls
        cmds.delete(self.containerName)

        cmds.namespace(setNamespace=":")

        jointRadius = 1
        if numJoints == 1:
            jointRadius = 1.5

        newJoints = []
        for i in range(numJoints):
            newJoint = ""
            cmds.select(clear=True)

            if orientWithAxis:
                newJoint = cmds.joint(n=self.moduleNamespace + ":blueprint_" + self.jointInfo[i][0], p=jointPositions[i], rotationOrder="xyz", radius=jointRadius)
                if i != 0:
                    cmds.parent(newJoint,newJoints[i-1], absolute=True)
                    offsetIndex = i -1
                    if offsetIndex < numOrientations:
                        cmds.joint(newJoints[offsetIndex], edit=True, oj=jointOrientations[offsetIndex][0], sao=jointOrientations[offsetIndex][1])

                        cmds.makeIdentity(newJoint, rotate=True, apply=True)


            else:
                if i != 0:
                    cmds.select(newJoints[i-1])

                jointOrientation = [0.0, 0.0, 0.0]
                if i < numOrientations:
                    jointOrientation = [jointOrientations[i][0], jointOrientations[i][1], jointOrientations[i][2]]

                newJoint = cmds.joint(n=self.moduleNamespace + ":blueprint_" + self.jointInfo[i][0], p=jointPositions[i], orientation=jointOrientation, rotationOrder="xyz", radius=jointRadius)

            newJoints.append(newJoint)

            if i < numRotationOrders:
                cmds.setAttr(newJoint + ".rotateOrder", int(jointRotationOrders[i]))

            if i < numPreferredAngles:
                cmds.setAttr(newJoint + ".preferredAngleX", jointPreferredAngles[i][0])
                cmds.setAttr(newJoint + ".preferredAngleY", jointPreferredAngles[i][1])
                cmds.setAttr(newJoint + ".preferredAngleZ", jointPreferredAngles[i][2])

            cmds.setAttr(newJoint + ".segmentScaleCompensate", 0)

        blueprintGrp = cmds.group(empty=True, name=self.moduleNamespace + ":blueprint_joints_grp")
        cmds.parent(newJoints[0], blueprintGrp, absolute=True)

        creationPoseGrpNodes = cmds.duplicate(blueprintGrp, name=self.moduleNamespace + ":creationPose_joints_grp", renameChildren=True)
        creationPoseGrp = creationPoseGrpNodes[0]

        creationPoseGrpNodes.pop(0)
        i = 0
        for node in creationPoseGrpNodes:
            renameNode = cmds.rename(node, self.moduleNamespace + ":creationPose_" + self.jointInfo[i][0])
            cmds.setAttr(renameNode + ".visibility", 0)
            i += 1

        cmds.select(blueprintGrp, replace=True)
        cmds.addAttr(at="bool", defaultValue=0, longName="controlModulesInstalled", k=False)

        hookGrp = cmds.group(empty=True, name=self.moduleNamespace + ":HOOK_IN")
        for obj in [blueprintGrp, creationPoseGrp]:
            cmds.parent(obj, hookGrp, absolute=True)


        settingsLocator = cmds.spaceLocator(n=self.moduleNamespace + ":SETTINGS")[0]
        cmds.setAttr(settingsLocator + ".visibility", 0)

        cmds.select(settingsLocator, replace=True)
        cmds.addAttr(at="enum", ln="activeModule", en="None:", k=False)
        cmds.addAttr(at="float", ln="creationPoseWeight", defaultValue=1, k=False)

        i = 0
        utilityNodes = []
        for joint in newJoints:
            if i < (numJoints - 1) or numJoints == 1:
                addNode = cmds.shadingNode("plusMinusAverage", n=joint + "_addRotations", asUtility=True)
                cmds.connectAttr(addNode + ".output3D", joint + ".rotate", f=True)
                utilityNodes.append(addNode)

                dummyRotationsMultiply = cmds.shadingNode("multiplyDivide", n=joint + "_dummyRotationsMultiply", asUtility=True)
                cmds.connectAttr(dummyRotationsMultiply + ".output", addNode + ".input3D[0]", f=True)
                utilityNodes.append(dummyRotationsMultiply)

            if i > 0:
                originalTx = cmds.getAttr(joint + ".tx")
                addTxNode = cmds.shadingNode("plusMinusAverage", n=joint + "_addTx", asUtility=True)
                cmds.connectAttr(addTxNode + ".output1D", joint + ".translateX", f=True)
                utilityNodes.append(addTxNode)

                originalTxMultiply = cmds.shadingNode("multiplyDivide", n=joint + "_original_Tx", asUtility=True)
                cmds.setAttr(originalTxMultiply + ".input1X", originalTx, lock=True)
                cmds.connectAttr(settingsLocator + ".creationPoseWeight", originalTxMultiply + ".input2X", force=True)

                cmds.connectAttr(originalTxMultiply + ".outputX", addTxNode + ".input1D[0]", force=True)
                utilityNodes.append(originalTxMultiply)
            else:
                if rootTransform:
                    originalTranslates = cmds.getAttr(joint + ".translate")[0]
                    addTranslateNode = cmds.shadingNode("plusMinusAverage", n=joint + "_addTranslate", asUtility=True)
                    cmds.connectAttr(addTranslateNode + ".output3D", joint + ".translate", f=True)
                    utilityNodes.append(addTranslateNode)

                    originalTranslateMultiply = cmds.shadingNode("multiplyDivide", n=joint + "_original_Translate", asUtility=True)
                    cmds.setAttr(originalTranslateMultiply + ".input1", originalTranslates[0], originalTranslates[1], originalTranslates[2], type="double3")
                    for attr in ["X", "Y", "Z"]:
                        cmds.connectAttr(settingsLocator + ".creationPoseWeight", originalTranslateMultiply + ".input2" + attr)

                    cmds.connectAttr(originalTranslateMultiply + ".output", addTranslateNode + ".input3D[0]", force=True)
                    utilityNodes.append(originalTranslateMultiply)

                    # Scale
                    originalScales = cmds.getAttr(joint + ".scale")[0]
                    addScaleNode = cmds.shadingNode("plusMinusAverage", n=joint + "_addScale", asUtility=True)
                    cmds.connectAttr(addScaleNode + ".output3D", joint + ".scale", f=True)
                    utilityNodes.append(addScaleNode)

                    originalScaleMultiply = cmds.shadingNode("multiplyDivide", n=joint + "_original_Scale", asUtility=True)
                    cmds.setAttr(originalScaleMultiply + ".input1", originalScales[0], originalScales[1], originalScales[2], type="double3")
                    for attr in ["X", "Y", "Z"]:
                        cmds.connectAttr(settingsLocator + ".creationPoseWeight", originalScaleMultiply + ".input2" + attr)

                    cmds.connectAttr(originalScaleMultiply + ".output", addScaleNode + ".input3D[0]", force=True)
                    utilityNodes.append(originalScaleMultiply)

            i =+ 1

        blueprintNodes = utilityNodes
        blueprintNodes.append(blueprintGrp)
        blueprintNodes.append(creationPoseGrp)

        blueprintContainer = cmds.container(n=self.moduleNamespace + ":blueprint_container")
        utils.addNodeToContainer(blueprintContainer, blueprintNodes, ihb=True)

        moduleGrp = cmds.group(empty=True, name=self.moduleNamespace + ":module_grp")
        for obj in [hookGrp, settingsLocator]:
            cmds.parent(obj, moduleGrp, absolute=True)

        moduleContainer = cmds.container(n=self.moduleNamespace + ":module_container")
        utils.addNodeToContainer(moduleContainer, [moduleGrp, hookGrp, settingsLocator, blueprintContainer], includeShapes=True)

        cmds.container(moduleContainer, edit=True, publishAndBind=[settingsLocator + ".activeModule", "activeModule"])
        cmds.container(moduleContainer, edit=True, publishAndBind=[settingsLocator + ".creationPoseWeight", "creationPoseWeight"])

        if mirrorInfo != None:
            enumNames = "node:x:y:z"
            cmds.select(moduleGrp)
            cmds.addAttr(at="enum", enumName=enumNames, longName="mirrorInfo", k=False)
            cmds.setAttr(moduleGrp + ".mirrorInfo", mirrorInfo)

        cmds.select(moduleGrp)
        cmds.addAttr(at="float", longName="hierarchicalScale")
        cmds.connectAttr(hookGrp + ".scaleY", moduleGrp + ".hierarchicalScale")




    def UI(self, blueprint_UI_instance, parentTopRowLayout, parentColumn01Layout, parentColumn02Layout, parentColumn03Layout, parentBottomRowLayout):
        self.blueprint_UI_instance = blueprint_UI_instance
        self.parentTopRowLayout = parentTopRowLayout
        self.parentColumn01Layout = parentColumn01Layout
        self.parentColumn02Layout = parentColumn02Layout
        self.parentColumn03Layout = parentColumn03Layout
        self.parentBottomRowLayout = parentBottomRowLayout
        self.UI_custom()


    def createRotationOrderUIControl(self, joint):
        # Create a label for the joint name
        jointName = utils.stripAllNamespaces(joint)[1]
        jointLabel = QtWidgets.QLabel(jointName)
        self.parentColumn01Layout.addRow(jointLabel)

        # Create a combo box for rotation order
        rotationOrderComboBox = QtWidgets.QComboBox()
        self.parentColumn01Layout.addRow(jointLabel, rotationOrderComboBox)

        # Add rotation order options
        rotationOrders = ['xyz', 'yzx', 'zxy', 'xzy', 'yxz', 'zyx']
        rotationOrderComboBox.addItems(rotationOrders)

        # Get current rotation order from the joint and set it in the combo box
        if cmds.objExists(joint):
            currentRotationOrder = cmds.getAttr(joint + ".rotateOrder")
            rotationOrderComboBox.setCurrentIndex(currentRotationOrder)

        # Connect combo box selection change to update the joint's rotateOrder attribute in Maya
        def updateRotationOrder():
            newOrder = rotationOrderComboBox.currentIndex()
            cmds.setAttr(joint + ".rotateOrder", newOrder)

            self.attributeChange_callbackMethod(joint, ".rotateOrder")

        rotationOrderComboBox.currentIndexChanged.connect(updateRotationOrder)



    def attributeChange_callbackMethod(self, object, attribute, *args):
        if self.blueprint_UI_instance.symmetryMoveCheckBox.isChecked():
            moduleInfo = utils.stripLeadingNamespace(object)
            module = moduleInfo[0]
            objectName = moduleInfo[1]

            moduleGroup = module + ":module_grp"
            if cmds.attributeQuery("mirrorLinks", n=moduleGroup, exists=True):
                mirrorLinks = cmds.getAttr(moduleGroup + ".mirrorLinks")
                mirrorModule = mirrorLinks.rpartition("__")[0]

                newValue = cmds.getAttr(object + attribute)
                mirrorObj = mirrorModule + ":" + objectName
                cmds.setAttr(mirrorObj + attribute, newValue)



    def delete(self):
        validModuleInfo = utils.findAllModuleNames("/Modules/Blueprint")
        validModules = validModuleInfo[0]
        validModuleNames = validModuleInfo[1]

        hookedModules = set()
        for jointInf in self.jointInfo:
            joint = jointInf[0]
            translationControl = self.getTranslationControl(self.moduleNamespace + ":" + joint)

            connections = cmds.listConnections(translationControl)

            for connection in connections:
                moduleInstance = utils.stripLeadingNamespace(connection)

                if moduleInstance != None:
                    splitString = moduleInstance[0].partition("__")
                    if moduleInstance[0] != self.moduleNamespace and splitString[0] in validModuleNames:
                        index = validModuleNames.index(splitString[0])
                        hookedModules.add((validModules[index], splitString[2]))

        for module in hookedModules:
            mod = __import__("Blueprint." + module[0], {}, {}, [module[0]])
            moduleClass = getattr(mod, mod.CLASS_NAME)
            moduleInst = moduleClass(module[1], None)
            moduleInst.rehook(None)

        if cmds.attributeQuery("mirrorLinks", node=self.moduleNamespace + ":module_grp", exists=True):
            mirrorLinks = cmds.getAttr(self.moduleNamespace + ":module_grp.mirrorLinks")

            linkedBlueprint = mirrorLinks.rpartition("__")[0]
            cmds.deleteAttr(linkedBlueprint + ":module_grp.mirrorLinks")

        moduleTransform = self.moduleNamespace + ":module_transform"
        moduleTransformParent = cmds.listRelatives(moduleTransform, parent=True)

        cmds.delete(self.containerName)

        cmds.namespace(setNamespace=":")
        cmds.namespace(removeNamespace=self.moduleNamespace)

        if moduleTransformParent != None:
            parentGroup = moduleTransformParent[0]

            children = cmds.listRelatives(parentGroup, children=True)
            children = cmds.ls(children, transforms=True)

            if len(children) == 0:
                cmds.select(parentGroup, replace=True)
                import RiggingTool.Modules.System.groupSelected as groupSelected
                importlib.reload(groupSelected)

                groupSelected.UngroupSelected()




    def renameModuleInstance(self, newName):
        if newName == self.userSpecifiedName:
            return True

        if utils.doesBlueprintUserSpecifiedNameExist(newName):
            QtWidgets.QMessageBox.critical(self.blueprint_UI_instance, "Name Conflict", f"The name '{newName}' already exists, aborting rename.", QtWidgets.QMessageBox.StandardButton.Ok)
            return False

        else:
            newNamespace = self.moduleName + "__" + newName

            cmds.namespace(setNamespace=":")
            cmds.namespace(add=newNamespace)
            cmds.namespace(setNamespace=":")

            cmds.namespace(moveNamespace=[self.moduleNamespace, newNamespace])
            cmds.namespace(removeNamespace=self.moduleNamespace)

            if cmds.attributeQuery("mirrorLinks", node=newNamespace + ":module_grp", exists=True):
                mirrorLinks = cmds.getAttr(newNamespace + ":module_grp.mirrorLinks")

                nodeAndAxis = mirrorLinks.rpartition("__")
                node = nodeAndAxis[0]
                axis = nodeAndAxis[2]

                cmds.setAttr(node + ":module_grp.mirrorLinks", newNamespace + "__" + axis, type="string")

            self.moduleNamespace = newNamespace
            self.containerName = self.moduleNamespace + ":module_container"

            return True



    def initializeHook(self, rootTranslationControl):
        unhookedLocator = cmds.spaceLocator(name=self.moduleNamespace + ":unhookedTarget")[0]
        cmds.pointConstraint(rootTranslationControl, unhookedLocator, offset=[0.0, 0.001, 0])
        cmds.setAttr(unhookedLocator + ".visibility", 0)

        if self.hookObject == None:
            self.hookObject = unhookedLocator

        rootPos = cmds.xform(rootTranslationControl, q=True, worldSpace=True, translation=True)
        targetPos = cmds.xform(self.hookObject, q=True, worldSpace=True, translation=True)

        cmds.select(clear=True)

        rootJointWithoutNamespace = "hook_root_joint"
        rootJoint = cmds.joint(n=self.moduleNamespace + ":" + rootJointWithoutNamespace, p=rootPos)
        cmds.setAttr(rootJoint + ".visibility", 0)

        targetJointWithoutNamespace = "hook_target_joint"
        targetJoint = cmds.joint(n=self.moduleNamespace + ":" + targetJointWithoutNamespace, p=targetPos)
        cmds.setAttr(targetJoint + ".visibility", 0)

        cmds.joint(rootJoint, edit=True, orientJoint="xyz", sao="yup")

        hookGroup = cmds.group([rootJoint, unhookedLocator], name=self.moduleNamespace + ":hook_grp", parent=self.moduleGrp)

        hookContainer = cmds.container(n=self.moduleNamespace + ":hook_container")
        utils.addNodeToContainer(hookContainer, hookGroup, ihb=True)
        utils.addNodeToContainer(self.containerName, hookContainer)

        for joint in [rootJoint, targetJoint]:
            jointName = utils.stripAllNamespaces(joint)[1]
            cmds.container(hookContainer, edit=True, publishAndBind=[joint + ".rotate", jointName + "_R"])

        ikNodes = utils.basic_stretchy_IK(rootJoint, targetJoint, hookContainer, lockMinimumLength=False)
        ikHandle = ikNodes["ikHandle"]
        rootLocator = ikNodes["rootLocator"]
        endLocator = ikNodes["endLocator"]
        poleVectorLocator = ikNodes["poleVectorObject"]

        rootPointConstraint = cmds.pointConstraint(rootTranslationControl, rootJoint, maintainOffset=False, n=rootJoint + "_pointConstraint")[0]
        targetPointConstraint = cmds.pointConstraint(self.hookObject, endLocator, maintainOffset=False, n=self.moduleNamespace + ":hook_pointConstraint")[0]

        utils.addNodeToContainer(hookContainer, [rootPointConstraint, targetPointConstraint])

        for node in [ikHandle, rootLocator, endLocator, poleVectorLocator]:
            cmds.parent(node, hookGroup, absolute=True)
            cmds.setAttr(node + ".visibility", 0)

        objectNodes = self.createStretchyObject("/ControlObjects/Blueprint/hook_representation.ma", "hook_representation_container", "hook_representation", rootJoint, targetJoint)
        constrainedGrp = objectNodes[2]
        cmds.parent(constrainedGrp, hookGroup, absolute=True)

        hookRepresentationContainer = objectNodes[0]
        cmds.container(self.containerName, edit=True, removeNode=hookRepresentationContainer)
        utils.addNodeToContainer(hookContainer, hookRepresentationContainer)



    def rehook(self, newHookObject):
        oldHookObject = self.findHookObject()

        self.hookObject = self.moduleNamespace + ":unhookedTarget"

        if newHookObject != None:
            if newHookObject.find("_translation_control") != -1:
                splitString = newHookObject.split("_translation_control")
                if splitString[1] == "":
                    if utils.stripLeadingNamespace(newHookObject)[0] != self.moduleNamespace:
                        self.hookObject = newHookObject

        if self.hookObject == oldHookObject:
            return

        self.unconstrainRootFromHook()

        hookConstraint = self.moduleNamespace + ":hook_pointConstraint"

        cmds.connectAttr(self.hookObject + ".parentMatrix[0]", hookConstraint + ".target[0].targetParentMatrix", force=True )
        cmds.connectAttr(self.hookObject + ".translate", hookConstraint + ".target[0].targetTranslate", force=True)
        cmds.connectAttr(self.hookObject + ".rotatePivot", hookConstraint + ".target[0].targetRotatePivot", force=True)
        cmds.connectAttr(self.hookObject + ".rotatePivotTranslate", hookConstraint + ".target[0].targetRotateTranslate", force=True)


    def findHookObject(self):
        hookConstraint = self.moduleNamespace + ":hook_pointConstraint"
        sourceAttr = cmds.connectionInfo(hookConstraint + ".target[0].targetParentMatrix", sourceFromDestination=True)
        sourceNode = str(sourceAttr).rpartition(".")[0]
        return sourceNode


    def findHookObjectForLock(self):
        hookObject = self.findHookObject()

        if hookObject == self.moduleNamespace + ":unhookedTarget":
            hookObject = None
        else:
            self.rehook(None)

        return hookObject



    def lock_phase3(self, hookObject):
        moduleContainer = self.moduleNamespace + ":module_container"
        if hookObject != None:
            hookObjectModuleNodes = utils.stripLeadingNamespace(hookObject)
            hookObjModule = hookObjectModuleNodes[0]
            hookObjJoint = hookObjectModuleNodes[1].split("_translation_control")[0]

            hookObj = hookObjModule + ":blueprint_" + hookObjJoint

            parentConstraint = cmds.parentConstraint(hookObj, self.moduleNamespace + ":HOOK_IN", maintainOffset=True, n=self.moduleNamespace + ":hook_parent_constraint")[0]
            scaleConstraint = cmds.scaleConstraint(hookObj, self.moduleNamespace + ":HOOK_IN", maintainOffset=True, n=self.moduleNamespace + ":hook_scale_constraint")[0]

            utils.addNodeToContainer(moduleContainer, [parentConstraint, scaleConstraint])



    def snapRootToHook(self):
        rootControl = self.getTranslationControl(self.moduleNamespace + ":" + self.jointInfo[0][0])
        hookObject = self.findHookObject()

        if hookObject == self.moduleNamespace + ":unhookedTarget":
            return

        hookObjectPos = cmds.xform(hookObject, q=True, worldSpace=True, translation=True)
        cmds.xform(rootControl, worldSpace=True, absolute=True, translation=hookObjectPos)



    def constrainRootToHook(self):
        rootControl = self.getTranslationControl(self.moduleNamespace + ":" + self.jointInfo[0][0])
        hookObject = self.findHookObject()

        if hookObject == self.moduleNamespace + ":unhookedTarget":
            return

        cmds.pointConstraint(hookObject, rootControl, maintainOffset=False, n=rootControl + "_hookConstraint")
        cmds.setAttr(rootControl + ".translate", l=True)
        cmds.setAttr(rootControl + ".visibility", l=False)
        cmds.setAttr(rootControl + ".visibility", 0)
        cmds.setAttr(rootControl + ".visibility", l=True)

        cmds.select(clear=True)



    def unconstrainRootFromHook(self):
        rootControl = self.getTranslationControl(self.moduleNamespace + ":" + self.jointInfo[0][0])
        rootControl_hookConstraint = rootControl + "_hookConstraint"

        if cmds.objExists(rootControl_hookConstraint):
            cmds.delete(rootControl_hookConstraint)

            cmds.setAttr(rootControl + ".translate", l=False)
            cmds.setAttr(rootControl + ".visibility", l=False)
            cmds.setAttr(rootControl + ".visibility", 1)
            cmds.setAttr(rootControl + ".visibility", l=False)

            cmds.select(rootControl, replace=True)
            cmds.setToolTo("moveSuperContext")



    def isRootConstrained(self):
        rootControl = self.getTranslationControl(self.moduleNamespace + ":" + self.jointInfo[0][0])
        rootControl_hookConstraint = rootControl + "_hookConstraint"

        return cmds.objExists(rootControl_hookConstraint)



    def canModuleBeMirrored(self):
        return self.canBeMirrored


    def mirror(self, originalModule, mirrorPlane, rotationFunction, translationFunction):
        self.mirrored = True
        self.originalModule = originalModule
        self.mirrorPlane = mirrorPlane
        self.rotationFunction = rotationFunction

        self.install()

        for jointInfo in self.jointInfo:
            jointName = jointInfo[0]

            originalJoint = self.originalModule + ":" + jointName
            newJoint = self.moduleNamespace + ":" + jointName

            originalRotationOrder = cmds.getAttr(originalJoint + ".rotateOrder")
            cmds.setAttr(newJoint + ".rotateOrder", originalRotationOrder)

        index = 0
        for jointInfo in self.jointInfo:
            mirrorPoleVectorLocator = False
            if index < len(self.jointInfo) - 1:
                mirrorPoleVectorLocator = True

            jointName = jointInfo[0]

            originalJoint = self.originalModule + ":" + jointName
            newJoint = self.moduleNamespace + ":" + jointName

            originalTranslationControl = self.getTranslationControl(originalJoint)
            newTranslationControl = self.getTranslationControl(newJoint)

            originalTranslationControlPosition = cmds.xform(originalTranslationControl, q=True, worldSpace=True, translation=True)

            if self.mirrorPlane == "YZ":
                originalTranslationControlPosition[0] *= -1
            elif self.mirrorPlane == "XZ":
                originalTranslationControlPosition[1] *= -1
            elif self.mirrorPlane == "XY":
                originalTranslationControlPosition[2] *= -1

            cmds.xform(newTranslationControl, worldSpace=True, absolute=True, translation=originalTranslationControlPosition)


            if mirrorPoleVectorLocator:
                originalPoleVectorLocator = originalTranslationControl + "_poleVectorLocator"
                newPoleVectorLocator = newTranslationControl + "_poleVectorLocator"
                originalPoleVectorLocatorPosition = cmds.xform(originalPoleVectorLocator, q=True, worldSpace=True, translation=True)

                if self.mirrorPlane == "YZ":
                    originalPoleVectorLocatorPosition[0] *= -1
                elif self.mirrorPlane == "XZ":
                    originalPoleVectorLocatorPosition[1] *= -1
                elif self.mirrorPlane == "XY":
                    originalPoleVectorLocatorPosition[2] *= -1

                cmds.xform(newPoleVectorLocator, worldSpace=True, absolute=True, translation=originalPoleVectorLocatorPosition)

            index += 1

        self.mirror_custom(originalModule)

        moduleGroup = self.moduleNamespace + ":module_grp"
        cmds.select(moduleGroup, replace=True)
        enumNames = "none:x:y:z"
        cmds.addAttr(at="enum", enumName=enumNames, longName="mirrorInfo", k=True)

        enumValue = 0
        if translationFunction == "Mirrored":
            if mirrorPlane == "YZ":
                enumValue = 1
            elif mirrorPlane == "XZ":
                enumValue = 2
            elif mirrorPlane == "XY":
                enumValue = 3

        cmds.setAttr(moduleGroup + ".mirrorInfo", enumValue)

        linkedAttribute = "mirrorLinks"

        for moduleLink in ((originalModule, self.moduleNamespace), (self.moduleNamespace, originalModule)):
            moduleGroup = moduleLink[0] + ":module_grp"
            attributeValue = moduleLink[1] + "__"

            if mirrorPlane == "YZ":
                attributeValue += "X"
            elif mirrorPlane == "XZ":
                attributeValue += "Y"
            elif mirrorPlane == "XY":
                attributeValue += "Z"

            cmds.select(moduleGroup)
            cmds.addAttr(dt="string", longName=linkedAttribute, k=False)
            cmds.setAttr(moduleGroup + "." + linkedAttribute, attributeValue, type="string")

        cmds.select(clear=True)



    def createPreferredAngleRepresentation(self, joint, scaleTarget, childOfOrientationControl=False):
        paRepresentationFile = os.environ["RIGGING_TOOL_ROOT"] + "/RiggingTool/ControlObjects/Blueprint/preferredAngle_representation.ma"
        cmds.file(paRepresentationFile, i=True, defaultNamespace=True)

        container = cmds.rename("preferredAngle_representation_container", joint + "_preferredAngle_representation_container")
        utils.addNodeToContainer(self.containerName, container)

        for node in cmds.container(container, q=True, nodeList=True):
            cmds.rename(node, joint + "_" + node, ignoreShape=True)

        control = joint + "_preferredAngle_representation"
        controlName = utils.stripAllNamespaces(control)[1]
        cmds.container(self.containerName, edit=True, publishAndBind=[container + ".axis", controlName + "_axis"])

        controlGroup = cmds.group(control, n=joint + "_preferredAngle_parentConstraintGrp", absolute=True)
        containedNodes = [controlGroup]

        cmds.parent(controlGroup, self.preferredAngleRepresentationGrp, absolute=True)

        containedNodes.append(cmds.parentConstraint(joint, controlGroup, maintainOffset=False)[0])

        if childOfOrientationControl:
            rotateXGrp = cmds.group(control, n=control + "_rotateX_grp", absolute=True)
            orientationControl = self.getOrientationControl(joint)
            cmds.connectAttr(orientationControl + ".rotateX", rotateXGrp + ".rotateX")

            containedNodes.append(rotateXGrp)

        containedNodes.append(cmds.scaleConstraint(scaleTarget, controlGroup, maintainOffset=False)[0])

        utils.addNodeToContainer(container, containedNodes)

        return control



    def getPreferredAngleControl(self, jointName):
        return jointName + "_preferredAngle_representation"


    def createPreferredAngleUIControl(self, preferredAngle_representation):
        jointName = utils.stripLeadingNamespace(preferredAngle_representation)[1].partition("_preferredAngle")[0]
        jointLabel = QtWidgets.QLabel(jointName)
        self.parentColumn03Layout.addRow(jointLabel)

        # Create a combo box for Preferred Angle
        preferredAngleComboBox = QtWidgets.QComboBox()
        self.parentColumn03Layout.addRow(jointLabel, preferredAngleComboBox)

        # Add preferred angle options
        preferredAngles = ['+Y', '-Y', '+Z', '-Z']
        preferredAngleComboBox.addItems(preferredAngles)

        # Get current rotation order from the joint and set it in the combo box
        if cmds.objExists(preferredAngle_representation + ".axis"):
            currentPreferredAngle = cmds.getAttr(preferredAngle_representation + ".axis")
            preferredAngleComboBox.setCurrentIndex(currentPreferredAngle)

        def updatePreferredAngle():
            newOrder = preferredAngleComboBox.currentIndex()
            cmds.setAttr(preferredAngle_representation + ".axis", newOrder)

            self.attributeChange_callbackMethod(preferredAngle_representation, ".axis")

        preferredAngleComboBox.currentIndexChanged.connect(updatePreferredAngle)



    def createSingleJointOrientationControlAtJoint(self, joint):
        controlFile = os.environ["RIGGING_TOOL_ROOT"] + "/RiggingTool/ControlObjects/Blueprint/singleJointOrientation_control.ma"
        cmds.file(controlFile, i=True)

        container = cmds.rename("singleJointOrientation_control_container", joint + "_singleJointOrientation_control_container")
        utils.addNodeToContainer(self.containerName, container)

        for node in cmds.container(container, q=True, nodeList=True):
            cmds.rename(node, joint + "_" + node, ignoreShape=True)

        control = joint + "_singleJointOrientation_control"

        cmds.parent(control, self.moduleTransform, absolute=True)

        translationControl = self.getTranslationControl(joint)
        pointConstraint = cmds.pointConstraint(translationControl, control, maintainOffset=False, n=control + "_pointConstraint")[0]
        utils.addNodeToContainer(self.containerName, pointConstraint)

        jointOrient = cmds.xform(joint, q=True, worldSpace=True, rotation=True)
        cmds.xform(control, worldSpace=True, absolute=True, rotation=jointOrient)

        jointNameWithoutNamespace = utils.stripLeadingNamespace(joint)[1]
        attrName = jointNameWithoutNamespace + "_R"
        cmds.container(container, edit=True, publishAndBind=[control + ".rotate", attrName])
        cmds.container(self.containerName, edit=True, publishAndBind=[container + "." + attrName, attrName])

        return control


    def getSingleJointOrientationControl(self, jointName):
        return jointName + "_singleJointOrientation_control"

