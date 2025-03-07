CLASS_NAME = "FK"

TITLE = "Forward Kinematics"

DESCRIPTION = "This module provides FK rotational controls for every joint in the blueprint it is installed on."

import System.utils as utils
import importlib
importlib.reload(utils)

import maya.cmds as cmds

import System.controlObject as controlObject
importlib.reload(controlObject)

import System.controlModule as controlModule
importlib.reload(controlModule)

class FK(controlModule.ControlModule):
    def __init__(self, moduleNamespace):
        controlModule.ControlModule.__init__(self, moduleNamespace)

    def compatibleBlueprintModules(self):
        return ("Finger", "HingeJoint", "LegFoot", "SingleJointSegment", "SingleOrientableJoint", "Spline", "Thumb",)

    def install_custom(self, joints, moduleGrp, moduleContainer):
        controlsGrp = cmds.group(empty=True, name=self.blueprintNamespace + ":" + self.moduleNamespace + ":controls_grp")
        cmds.parent(controlsGrp, moduleGrp, absolute=True)
        utils.addNodeToContainer(moduleContainer, controlsGrp)

        numJoints = len(joints)-1

        for i in range(1, len(joints)):
            if i < numJoints or numJoints == 1:
                self.createFKControl(joints[i], controlsGrp, moduleContainer)

    def createFKControl(self, joint, parent, moduleContainer):
        jointName = utils.stripAllNamespaces(joint)[1]
        containedNodes = []
        name = jointName + "_fkControl"

        controlObjectInstance = controlObject.ControlObject()

        fkControlInfo = controlObjectInstance.create(name, "sphere.ma", self, lod=1, translation=False, rotation=True, globalScale=False, spaceSwitching=False)
        fkControl = fkControlInfo[0]
        #translationControl = fkControlInfo[2]

        cmds.connectAttr(joint + ".rotateOrder", fkControl + ".rotateOrder")

        orientGrp = cmds.group(n=fkControl + "_orientGrp", empty=True, parent=parent)
        containedNodes.append(orientGrp)

        orientGrp_parentConstraint = cmds.parentConstraint(joint, orientGrp, maintainOffset=False)[0]
        cmds.delete(orientGrp_parentConstraint)

        jointParent = cmds.listRelatives(joint, parent=True)[0]

        #orientGrp_parentConstraint = cmds.parentConstraint(jointParent, orientGrp, maintainOffset=True, skipTranslate=["x", "y", "z"], n=orientGrp + "_parentConstraint")[0]
        orientGrp_parentConstraint = cmds.parentConstraint(jointParent, orientGrp, maintainOffset=True, n=orientGrp + "_parentConstraint")[0]

        # pointConstraint_parent = joint
        # if translationControl:
        #     pointConstraint_parent = jointParent

        # orientGrp_pointConstraint = cmds.pointConstraint(pointConstraint_parent, orientGrp, maintainOffset=False, n=orientGrp + "_pointConstraint")[0]

        orientGrp_scaleConstraint = cmds.scaleConstraint(jointParent, orientGrp, maintainOffset=True, n=orientGrp + "_scaleConstraint")[0]

        containedNodes.extend([orientGrp_parentConstraint, orientGrp_scaleConstraint])

        cmds.parent(fkControl, orientGrp, relative=True)

        orientConstraint = cmds.orientConstraint(fkControl, joint, maintainOffset=False, n=joint + "_orientConstraint")[0]
        containedNodes.append(orientConstraint)

        # if translationControl:
        #     cmds.xform(fkControl, worldSpace=True, absolute=True, translation=cmds.xform(joint, q=True, worldSpace=True, translation=True))
        #     pointConstraint = cmds.pointConstraint(fkControl, joint, maintainOffset=False, n=joint + "_pointConstraint")[0]
        #     containedNodes.append(pointConstraint)

        utils.addNodeToContainer(moduleContainer, containedNodes)

        return fkControl

    # def initFKControl(self, joint, spaceSwitchable=False):
    #     translationControl = False
    #     jointName = utils.stripAllNamespaces(joint)[1]
    #     blueprintJoint = self.blueprintNamespace + ":blueprint_" + jointName
    #     if cmds.objExists(blueprintJoint + "_addTranslate"):
    #         translationControl = True

    #     name = jointName + "_fkControl"

    #     controlObjectInstance = controlObject.ControlObject()

    #     fkControlInfo = controlObjectInstance.create(name, "sphere.ma", self, lod=1, translation=translationControl, rotation=True, globalScale=False, spaceSwitching=spaceSwitchable)
    #     fkControl = fkControlInfo[0]

    #     cmds.connectAttr(joint + ".rotateOrder", fkControl + ".rotateOrder")

    #     return (fkControlInfo[0], fkControlInfo[1], translationControl)


    def UI(self, parentLayout):
        jointsGrp = self.blueprintNamespace + ":" + self.moduleNamespace + ":joints_grp"

        joints = utils.findJointChain(jointsGrp)
        joints.pop(0)

        numJoints = len(joints)
        if numJoints > 1:
            numJoints -= 1

        for i in range(numJoints):
            fkControl = joints[i] + "_fkControl"
            controlObjectInstance = controlObject.ControlObject(fkControl)
            controlObjectInstance.UI(parentLayout)

    # def match(self, *args):
    #     jointsGrp = self.blueprintNamespace + ":blueprint_joints_grp"
    #     joints = utils.findJointChain(jointsGrp)
    #     joints.pop(0)

    #     jointsGrp = self.blueprintNamespace + ":" + self.moduleNamespace + ":joints_grp"
    #     moduleJoints = utils.findJointChain(jointsGrp)
    #     moduleJoints.pop(0)

    #     if len(moduleJoints) > 1:
    #         moduleJoints.pop()

    #     index = 0
    #     fkControls = []
    #     for joint in moduleJoints:
    #         fkControl = joint + "_fkControl"
    #         fkControls.append(fkControl)

    #         if not cmds.getAttr(fkControl + ".translateX", l=True):
    #             cmds.xform(fkControl, worldSpace=True, absolute=True, translation=cmds.xform(joints[index], q=True, worldSpace=True, translation=True))


    #         cmds.xform(fkControl, worldSpace=True, absolute=True, rotation=cmds.xform(joints[index], q=True, worldSpace=True, rotation=True))
    #         index += 1

    #     return (joints, fkControls)

