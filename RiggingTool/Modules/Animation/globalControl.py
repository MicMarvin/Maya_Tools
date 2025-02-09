CLASS_NAME = "GlobalControl"

TITLE = "Global Control"

DESCRIPTION = "This module provides a global control for translation, rotation and scale."

import System.utils as utils
import importlib
importlib.reload(utils)

import maya.cmds as cmds

# import System.controlObject as controlObject
# importlib.reload(controlObject)

# import System.controlModule as controlModule
# #reload(controlModule)

class GlobalControl():
    def __init__(self, moduleNamespace):
        print(moduleNamespace)
    #     controlModule.ControlModule.__init__(self, moduleNamespace)

    def compatibleBlueprintModules(self):
        return ("Finger", "RootTransform",)

    def install(self):
        print(f"Installing {TITLE} module")
        
    # def install_custom(self, joints, moduleGrp, moduleContainer):
    #     joint = joints[1]
    #     name = "globalControl"

    #     controlObjectInstance = controlObject.ControlObject()
    #     globalControlInfo = controlObjectInstance.create(name, "globalControl.ma", self, lod=1, translation=True, rotation=True, globalScale=True, spaceSwitching=True)
    #     globalControl = globalControlInfo[0]
    #     globalControl_rootParent = globalControlInfo[1]

    #     pos = cmds.xform(joint, q=True, worldSpace=True, translation=True)
    #     orient = cmds.xform(joint, q=True, worldSpace=True, rotation=True)

    #     cmds.xform(globalControl, worldSpace=True, absolute=True, translation=pos)
    #     cmds.xform(globalControl, worldSpace=True, absolute=True, rotation=orient)

    #     cmds.parent(globalControl_rootParent, moduleGrp, absolute=True)

    #     cmds.connectAttr(joint + ".rotateOrder", globalControl + ".rotateOrder")

    #     parentConstraint = cmds.parentConstraint(globalControl, joint, maintainOffset=False, n=joint + "_parentConstraint")[0]
    #     scaleConstraint = cmds.scaleConstraint(globalControl, joint, maintainOffset=False, n=joint + "_scaleConstraint")[0]

    #     utils.addNodeToContainer(moduleContainer, [parentConstraint, scaleConstraint])

    # def UI(self, parentLayout):
    #     globalControl = self.blueprintNamespace + ":" + self.moduleNamespace + ":globalControl"

    #     controlObjectInstance = controlObject.ControlObject(globalControl)
    #     controlObjectInstance.UI(parentLayout)

    # def match(self, *args):
    #     jointsGrp = self.blueprintNamespace + ":blueprint_joints_grp"
    #     joint = utils.findJointChain(jointsGrp)[1]

    #     globalControl = self.blueprintNamespace + ":" + self.moduleNamespace + ":globalControl"

    #     position = cmds.xform(joint, q=True, worldSpace=True, translation=True)
    #     orientation = cmds.xform(joint, q=True, worldSpace=True, rotation=True)
    #     scale = cmds.getAttr(joint + ".scaleY")

    #     cmds.xform(globalControl, worldSpace=True, absolute=True, translation=position)
    #     cmds.xform(globalControl, worldSpace=True, absolute=True, rotation=orientation)
    #     cmds.setAttr(globalControl + ".globalScale", scale)