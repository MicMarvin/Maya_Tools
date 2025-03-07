//Maya ASCII 2022 scene
//Name: __duplicationCache.ma
//Last modified: Thu, Dec 12, 2024 12:42:59 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires "mtoa" "5.0.0.1";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202110272215-ad32f8f1e6";
fileInfo "osv" "Windows 10 Pro for Workstations v2009 (Build: 19045)";
fileInfo "UUID" "FBBB17DB-49F8-6198-2E92-04925342ADBD";
createNode transform -n "Finger__instance_1:module_grp";
	rename -uid "D2868D74-41FE-86B3-E4DE-F294A5291845";
createNode transform -n "Finger__instance_1:joints_grp" -p "Finger__instance_1:module_grp";
	rename -uid "4AA0DB17-46DE-8433-9A74-E4879E08064A";
createNode joint -n "Finger__instance_1:root_joint" -p "Finger__instance_1:joints_grp";
	rename -uid "E01C58F1-4C3E-F323-2B22-7BB96172AAE1";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Finger__instance_1:knuckle_1_joint" -p "Finger__instance_1:root_joint";
	rename -uid "C093E19D-45B4-B5AB-3100-D69BADB137BB";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Finger__instance_1:knuckle_2_joint" -p "Finger__instance_1:knuckle_1_joint";
	rename -uid "CF9387A5-4D67-CB05-497C-1991B3CC8C63";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Finger__instance_1:knuckle_3_joint" -p "Finger__instance_1:knuckle_2_joint";
	rename -uid "ECA3A0AE-4A19-199B-A7FB-9FB36F9755A6";
	setAttr ".v" no;
	setAttr ".ro" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "Finger__instance_1:end_joint" -p "Finger__instance_1:knuckle_3_joint";
	rename -uid "829678FA-4D39-0F35-4870-9AB8263CFE46";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "Finger__instance_1:knuckle_3_jointikEffector" -p "Finger__instance_1:knuckle_3_joint";
	rename -uid "4A9956CC-4F64-1153-8D28-ABB2BDD3EDC9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Finger__instance_1:knuckle_2_jointikEffector" -p "Finger__instance_1:knuckle_2_joint";
	rename -uid "657B53A6-4DE7-55C6-7CC0-10A505ED8539";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "Finger__instance_1:knuckle_1_jointikEffector" -p "Finger__instance_1:knuckle_1_joint";
	rename -uid "F16D0DED-4D2E-8BF7-CFD9-D88E73E4E32B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Finger__instance_1:root_joint_pointConstraint" -p "Finger__instance_1:root_joint";
	rename -uid "C0EF8FCC-4E0B-705B-7176-F19349770934";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikEffector -n "Finger__instance_1:root_jointikEffector" -p "Finger__instance_1:root_joint";
	rename -uid "B4A20F82-42E0-40DC-29E8-37A7CEE2CE36";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "Finger__instance_1:root_joint_ikHandle" -p "Finger__instance_1:joints_grp";
	rename -uid "BF3ABA71-404F-74C9-328D-929E4D896745";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "root_joint_ikHandle_poleVectorConstraint1" -p
		 "Finger__instance_1:root_joint_ikHandle";
	rename -uid "3CEEFF75-44B7-8E80-BA73-74987056627C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Finger__instance_1:root_joint_ikHandle_pointConstraint" 
		-p "Finger__instance_1:root_joint_ikHandle";
	rename -uid "CE2D22D3-4D21-F991-B053-14AB99088D7D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:root_joint_rootPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "AAF2CDCE-4782-C9CD-A4E0-D187D1F8A187";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:root_joint_rootPosLocatorShape" -p "Finger__instance_1:root_joint_rootPosLocator";
	rename -uid "925EF519-4753-F7B1-B0B7-71819843074E";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:root_joint_rootPosLocator_pointConstraint" 
		-p "Finger__instance_1:root_joint_rootPosLocator";
	rename -uid "91F33B31-4632-E41C-0443-658BF781B5D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_endPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "4F2F7F68-44EE-A243-872C-B287A4CA8BF2";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_1_joint_endPosLocatorShape" -p "Finger__instance_1:knuckle_1_joint_endPosLocator";
	rename -uid "DA620E8D-4505-60E1-7223-9F9DF136467C";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_1_joint_endPosLocator";
	rename -uid "F25D0A0A-4E99-98E2-2843-818E6A48F9B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Finger__instance_1:knuckle_1_joint_ikHandle" -p "Finger__instance_1:joints_grp";
	rename -uid "B68D8D3C-42B3-844D-A612-AEAE10B0A320";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "knuckle_1_joint_ikHandle_poleVectorConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_ikHandle";
	rename -uid "7AD22AB8-4694-013E-7A69-D7A049866852";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint" 
		-p "Finger__instance_1:knuckle_1_joint_ikHandle";
	rename -uid "F02C8F3A-4241-D868-A1D7-D2982DC84AA0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_rootPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "03D354C3-4B6B-7587-2FFA-58B709A2DE3E";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_1_joint_rootPosLocatorShape" -p
		 "Finger__instance_1:knuckle_1_joint_rootPosLocator";
	rename -uid "FB5BF5C0-40CF-9337-DEA9-169E58E86FCD";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_1_joint_rootPosLocator";
	rename -uid "92CED75E-489D-3B2F-7E6D-329F9A1D7672";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_endPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "4730DE33-44D2-F1A0-5F3B-FDB686E6CBB9";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_2_joint_endPosLocatorShape" -p "Finger__instance_1:knuckle_2_joint_endPosLocator";
	rename -uid "89F20549-4345-8121-4690-0590B5BDD4CC";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_2_joint_endPosLocator";
	rename -uid "730E711C-40B3-B753-CC53-0CB382C10ADE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 0 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Finger__instance_1:knuckle_2_joint_ikHandle" -p "Finger__instance_1:joints_grp";
	rename -uid "3267DF7A-46A4-A146-322E-B6A74CE4D8D1";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "knuckle_2_joint_ikHandle_poleVectorConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_ikHandle";
	rename -uid "76BF696F-4D99-1110-9468-CE90F9804758";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint" 
		-p "Finger__instance_1:knuckle_2_joint_ikHandle";
	rename -uid "AFF59322-4B66-6043-345D-CCAC538BE69A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_rootPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "8A730387-4809-E2A5-F164-77902D993401";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_2_joint_rootPosLocatorShape" -p
		 "Finger__instance_1:knuckle_2_joint_rootPosLocator";
	rename -uid "515B6791-4895-1D57-14C2-E6A51C4743EB";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_2_joint_rootPosLocator";
	rename -uid "06EEB8BE-45EA-68A3-7365-64BA32A25BF3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_endPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "C2511F2C-4FE0-BB03-6C6D-FCB54C91ED47";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_3_joint_endPosLocatorShape" -p "Finger__instance_1:knuckle_3_joint_endPosLocator";
	rename -uid "1854F963-4B1E-FDF0-FE46-468CE712D9F1";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_3_joint_endPosLocator";
	rename -uid "0BE71AA0-4C70-5AD0-E7D1-7D8C7AE10A4A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 0 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Finger__instance_1:knuckle_3_joint_ikHandle" -p "Finger__instance_1:joints_grp";
	rename -uid "F06E3C5E-4944-4F07-F777-2A940F38C373";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "knuckle_3_joint_ikHandle_poleVectorConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_ikHandle";
	rename -uid "53BDD960-4865-3AC4-FF5D-F1B99A888203";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint" 
		-p "Finger__instance_1:knuckle_3_joint_ikHandle";
	rename -uid "5BCDEFBB-4C6E-B27F-DDDC-6CB8BD8EE662";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_endPosLocatorW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_rootPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "1CAA6440-49A1-79F0-AD4B-A9A90EDA8650";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:knuckle_3_joint_rootPosLocatorShape" -p
		 "Finger__instance_1:knuckle_3_joint_rootPosLocator";
	rename -uid "199447C2-404B-A4F0-78A2-4B9904458894";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint" 
		-p "Finger__instance_1:knuckle_3_joint_rootPosLocator";
	rename -uid "7E1774E5-4E71-DE07-C21F-5B8DB489DC49";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:end_joint_endPosLocator" -p "Finger__instance_1:joints_grp";
	rename -uid "38B50026-4810-045D-EB5F-3DBF53E61961";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:end_joint_endPosLocatorShape" -p "Finger__instance_1:end_joint_endPosLocator";
	rename -uid "900A23B4-4E13-1BFF-D9D2-869CCF784AB1";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:end_joint_endPosLocator_pointConstraint" 
		-p "Finger__instance_1:end_joint_endPosLocator";
	rename -uid "1F27FCD5-4AFD-6777-B883-D98CB163E3E5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 16 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:hierarchyRepresentations_grp" -p "Finger__instance_1:module_grp";
	rename -uid "E18FB562-49B2-95EB-C472-E896942D7D31";
createNode transform -n "Finger__instance_1:orientationControls_grp" -p "Finger__instance_1:module_grp";
	rename -uid "4D76A566-4D4C-1D6C-79D1-11BA2DAA01A2";
createNode transform -n "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp" 
		-p "Finger__instance_1:orientationControls_grp";
	rename -uid "67D54609-4018-EDDD-BA76-098CEB0FE82E";
createNode transform -n "Finger__instance_1:root_joint_orientation_control" -p "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp";
	rename -uid "F22BC342-4A18-30DE-2862-0FA79E85CFB6";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Finger__instance_1:root_joint_orientation_controlShape" -p "Finger__instance_1:root_joint_orientation_control";
	rename -uid "6BF6A14C-4156-64CD-12F9-CDB60A1B6C0A";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:10]" "f[28:33]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[11:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.5 0.68843985 0.375 0.3125 0.40000001 0.3125
		 0.5 0.68843985 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.62640893
		 0.064408526 0.65625 0.15625 0.62640893 0.24809144 0.54828393 0.3048526 0.4517161
		 0.3048526 0.37359107 0.24809146 0.34375 0.15625001 0.37359107 0.064408556 0.45171607
		 0.00764741 0.54828387 0.0076473951 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 
		0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0;
	setAttr -s 38 ".vt[0:37]"  0.095147073 0.49463958 -0.069128409 0.036342937 0.49463958 -0.11185211
		 -0.036342964 0.49463958 -0.11185209 -0.095147088 0.49463958 -0.069128387 -0.11760826 0.49463958 7.0099975e-09
		 -0.095147073 0.49463958 0.069128402 -0.036342941 0.49463958 0.11185209 0.036342949 0.49463958 0.11185209
		 0.095147066 0.49463958 0.069128387 0.11760824 0.49463958 0 -4.5564983e-09 0.72985607 -4.205998e-10
		 0.095147073 0.069128409 0.49463958 0.036342937 0.11185211 0.49463958 -0.036342964 0.11185209 0.49463958
		 -0.095147088 0.069128387 0.49463958 -0.11760826 -7.0099975e-09 0.49463958 -0.095147073 -0.069128402 0.49463958
		 -0.036342941 -0.11185209 0.49463958 0.036342949 -0.11185209 0.49463958 0.095147066 -0.069128387 0.49463958
		 0.11760824 1.0983205e-16 0.49463958 -4.5564983e-09 4.2059997e-10 0.72985607 -0.5 -0.075000018 -0.5
		 0.5 -0.075000018 -0.5 -0.5 -0.074999988 0.5 0.5 -0.074999988 0.5 -0.5 0.075000018 0.5
		 0.5 0.075000018 0.5 -0.5 0.074999988 -0.5 0.5 0.074999988 -0.5 -0.5 -0.5 -0.074999988
		 0.5 -0.5 -0.074999988 -0.5 -0.5 0.075000018 0.5 -0.5 0.075000018 -0.5 0.5 0.074999988
		 0.5 0.5 0.074999988 -0.5 0.5 -0.075000018 0.5 0.5 -0.075000018;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 0 10 0 1 10 0 2 10 0 3 10 0 4 10 0 5 10 0 6 10 0 7 10 0 8 10 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 11 0
		 11 21 0 12 21 0 13 21 0 14 21 0 15 21 0 16 21 0 17 21 0 18 21 0 19 21 0 20 21 0 22 23 0
		 24 25 0 26 27 0 28 29 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0 28 22 0 29 23 0
		 30 31 0 32 33 0 34 35 0 36 37 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 30 0
		 37 31 0;
	setAttr -s 34 -ch 128 ".fc[0:33]" -type "polyFaces" 
		f 3 0 11 -11
		mu 0 3 10 11 21
		f 3 1 12 -12
		mu 0 3 11 12 21
		f 3 2 13 -13
		mu 0 3 12 13 21
		f 3 3 14 -14
		mu 0 3 13 14 21
		f 3 4 15 -15
		mu 0 3 14 15 21
		f 3 5 16 -16
		mu 0 3 15 16 21
		f 3 6 17 -17
		mu 0 3 16 17 21
		f 3 7 18 -18
		mu 0 3 17 18 21
		f 3 8 19 -19
		mu 0 3 18 19 21
		f 3 9 10 -20
		mu 0 3 19 20 21
		f 10 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 10 0 9 8 7 6 5 4 3 2 1
		f 3 20 31 -31
		mu 0 3 22 23 24
		f 3 21 32 -32
		mu 0 3 23 25 24
		f 3 22 33 -33
		mu 0 3 25 26 24
		f 3 23 34 -34
		mu 0 3 26 27 24
		f 3 24 35 -35
		mu 0 3 27 28 24
		f 3 25 36 -36
		mu 0 3 28 29 24
		f 3 26 37 -37
		mu 0 3 29 30 24
		f 3 27 38 -38
		mu 0 3 30 31 24
		f 3 28 39 -39
		mu 0 3 31 32 24
		f 3 29 30 -40
		mu 0 3 32 33 24
		f 10 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21
		mu 0 10 34 35 36 37 38 39 40 41 42 43
		f 4 40 45 -42 -45
		mu 0 4 44 45 46 47
		f 4 41 47 -43 -47
		mu 0 4 47 46 48 49
		f 4 42 49 -44 -49
		mu 0 4 49 48 50 51
		f 4 43 51 -41 -51
		mu 0 4 51 50 52 53
		f 4 -52 -50 -48 -46
		mu 0 4 45 54 55 46
		f 4 50 44 46 48
		mu 0 4 56 44 47 57
		f 4 52 57 -54 -57
		mu 0 4 58 59 60 61
		f 4 53 59 -55 -59
		mu 0 4 61 60 62 63
		f 4 54 61 -56 -61
		mu 0 4 63 62 64 65
		f 4 55 63 -53 -63
		mu 0 4 65 64 66 67
		f 4 -64 -62 -60 -58
		mu 0 4 59 68 69 60
		f 4 62 56 58 60
		mu 0 4 70 58 61 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "root_joint_orientation_control_parentConstraint_grp_parentConstraint1" 
		-p "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp";
	rename -uid "C319594C-4E6D-6349-A8A8-B99E77FED415";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1" 
		-p "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp";
	rename -uid "8CBB666D-44AF-78E7-EF5C-B187436F1529";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp" 
		-p "Finger__instance_1:orientationControls_grp";
	rename -uid "5ED5D6EA-4256-269F-298C-178EFD42352F";
createNode transform -n "Finger__instance_1:knuckle_1_joint_orientation_control" 
		-p "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp";
	rename -uid "8D0CA2DD-4F46-D73F-5FAC-B68E9D9D450B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Finger__instance_1:knuckle_1_joint_orientation_controlShape" 
		-p "Finger__instance_1:knuckle_1_joint_orientation_control";
	rename -uid "DE3E9AFD-49C8-5A4E-2387-DABAD18A6458";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:10]" "f[28:33]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[11:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.5 0.68843985 0.375 0.3125 0.40000001 0.3125
		 0.5 0.68843985 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.62640893
		 0.064408526 0.65625 0.15625 0.62640893 0.24809144 0.54828393 0.3048526 0.4517161
		 0.3048526 0.37359107 0.24809146 0.34375 0.15625001 0.37359107 0.064408556 0.45171607
		 0.00764741 0.54828387 0.0076473951 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 
		0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0;
	setAttr -s 38 ".vt[0:37]"  0.095147073 0.49463958 -0.069128409 0.036342937 0.49463958 -0.11185211
		 -0.036342964 0.49463958 -0.11185209 -0.095147088 0.49463958 -0.069128387 -0.11760826 0.49463958 7.0099975e-09
		 -0.095147073 0.49463958 0.069128402 -0.036342941 0.49463958 0.11185209 0.036342949 0.49463958 0.11185209
		 0.095147066 0.49463958 0.069128387 0.11760824 0.49463958 0 -4.5564983e-09 0.72985607 -4.205998e-10
		 0.095147073 0.069128409 0.49463958 0.036342937 0.11185211 0.49463958 -0.036342964 0.11185209 0.49463958
		 -0.095147088 0.069128387 0.49463958 -0.11760826 -7.0099975e-09 0.49463958 -0.095147073 -0.069128402 0.49463958
		 -0.036342941 -0.11185209 0.49463958 0.036342949 -0.11185209 0.49463958 0.095147066 -0.069128387 0.49463958
		 0.11760824 1.0983205e-16 0.49463958 -4.5564983e-09 4.2059997e-10 0.72985607 -0.5 -0.075000018 -0.5
		 0.5 -0.075000018 -0.5 -0.5 -0.074999988 0.5 0.5 -0.074999988 0.5 -0.5 0.075000018 0.5
		 0.5 0.075000018 0.5 -0.5 0.074999988 -0.5 0.5 0.074999988 -0.5 -0.5 -0.5 -0.074999988
		 0.5 -0.5 -0.074999988 -0.5 -0.5 0.075000018 0.5 -0.5 0.075000018 -0.5 0.5 0.074999988
		 0.5 0.5 0.074999988 -0.5 0.5 -0.075000018 0.5 0.5 -0.075000018;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 0 10 0 1 10 0 2 10 0 3 10 0 4 10 0 5 10 0 6 10 0 7 10 0 8 10 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 11 0
		 11 21 0 12 21 0 13 21 0 14 21 0 15 21 0 16 21 0 17 21 0 18 21 0 19 21 0 20 21 0 22 23 0
		 24 25 0 26 27 0 28 29 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0 28 22 0 29 23 0
		 30 31 0 32 33 0 34 35 0 36 37 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 30 0
		 37 31 0;
	setAttr -s 34 -ch 128 ".fc[0:33]" -type "polyFaces" 
		f 3 0 11 -11
		mu 0 3 10 11 21
		f 3 1 12 -12
		mu 0 3 11 12 21
		f 3 2 13 -13
		mu 0 3 12 13 21
		f 3 3 14 -14
		mu 0 3 13 14 21
		f 3 4 15 -15
		mu 0 3 14 15 21
		f 3 5 16 -16
		mu 0 3 15 16 21
		f 3 6 17 -17
		mu 0 3 16 17 21
		f 3 7 18 -18
		mu 0 3 17 18 21
		f 3 8 19 -19
		mu 0 3 18 19 21
		f 3 9 10 -20
		mu 0 3 19 20 21
		f 10 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 10 0 9 8 7 6 5 4 3 2 1
		f 3 20 31 -31
		mu 0 3 22 23 24
		f 3 21 32 -32
		mu 0 3 23 25 24
		f 3 22 33 -33
		mu 0 3 25 26 24
		f 3 23 34 -34
		mu 0 3 26 27 24
		f 3 24 35 -35
		mu 0 3 27 28 24
		f 3 25 36 -36
		mu 0 3 28 29 24
		f 3 26 37 -37
		mu 0 3 29 30 24
		f 3 27 38 -38
		mu 0 3 30 31 24
		f 3 28 39 -39
		mu 0 3 31 32 24
		f 3 29 30 -40
		mu 0 3 32 33 24
		f 10 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21
		mu 0 10 34 35 36 37 38 39 40 41 42 43
		f 4 40 45 -42 -45
		mu 0 4 44 45 46 47
		f 4 41 47 -43 -47
		mu 0 4 47 46 48 49
		f 4 42 49 -44 -49
		mu 0 4 49 48 50 51
		f 4 43 51 -41 -51
		mu 0 4 51 50 52 53
		f 4 -52 -50 -48 -46
		mu 0 4 45 54 55 46
		f 4 50 44 46 48
		mu 0 4 56 44 47 57
		f 4 52 57 -54 -57
		mu 0 4 58 59 60 61
		f 4 53 59 -55 -59
		mu 0 4 61 60 62 63
		f 4 54 61 -56 -61
		mu 0 4 63 62 64 65
		f 4 55 63 -53 -63
		mu 0 4 65 64 66 67
		f 4 -64 -62 -60 -58
		mu 0 4 59 68 69 60
		f 4 62 56 58 60
		mu 0 4 70 58 61 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp";
	rename -uid "5B35029D-4DE6-C837-80CD-8D8DCE84C249";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp";
	rename -uid "64C61B8C-4735-437B-BADC-EDAC5902470D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp" 
		-p "Finger__instance_1:orientationControls_grp";
	rename -uid "9A6CDBE8-4BCA-EAE7-2766-EB8673C0246A";
createNode transform -n "Finger__instance_1:knuckle_2_joint_orientation_control" 
		-p "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp";
	rename -uid "1EB42B3C-4E1F-6E8B-9AC1-AE936F5AB553";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Finger__instance_1:knuckle_2_joint_orientation_controlShape" 
		-p "Finger__instance_1:knuckle_2_joint_orientation_control";
	rename -uid "40FF16A3-405D-BC1B-2A66-279DEF65538F";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:10]" "f[28:33]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[11:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.5 0.68843985 0.375 0.3125 0.40000001 0.3125
		 0.5 0.68843985 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.62640893
		 0.064408526 0.65625 0.15625 0.62640893 0.24809144 0.54828393 0.3048526 0.4517161
		 0.3048526 0.37359107 0.24809146 0.34375 0.15625001 0.37359107 0.064408556 0.45171607
		 0.00764741 0.54828387 0.0076473951 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 
		0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0;
	setAttr -s 38 ".vt[0:37]"  0.095147073 0.49463958 -0.069128409 0.036342937 0.49463958 -0.11185211
		 -0.036342964 0.49463958 -0.11185209 -0.095147088 0.49463958 -0.069128387 -0.11760826 0.49463958 7.0099975e-09
		 -0.095147073 0.49463958 0.069128402 -0.036342941 0.49463958 0.11185209 0.036342949 0.49463958 0.11185209
		 0.095147066 0.49463958 0.069128387 0.11760824 0.49463958 0 -4.5564983e-09 0.72985607 -4.205998e-10
		 0.095147073 0.069128409 0.49463958 0.036342937 0.11185211 0.49463958 -0.036342964 0.11185209 0.49463958
		 -0.095147088 0.069128387 0.49463958 -0.11760826 -7.0099975e-09 0.49463958 -0.095147073 -0.069128402 0.49463958
		 -0.036342941 -0.11185209 0.49463958 0.036342949 -0.11185209 0.49463958 0.095147066 -0.069128387 0.49463958
		 0.11760824 1.0983205e-16 0.49463958 -4.5564983e-09 4.2059997e-10 0.72985607 -0.5 -0.075000018 -0.5
		 0.5 -0.075000018 -0.5 -0.5 -0.074999988 0.5 0.5 -0.074999988 0.5 -0.5 0.075000018 0.5
		 0.5 0.075000018 0.5 -0.5 0.074999988 -0.5 0.5 0.074999988 -0.5 -0.5 -0.5 -0.074999988
		 0.5 -0.5 -0.074999988 -0.5 -0.5 0.075000018 0.5 -0.5 0.075000018 -0.5 0.5 0.074999988
		 0.5 0.5 0.074999988 -0.5 0.5 -0.075000018 0.5 0.5 -0.075000018;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 0 10 0 1 10 0 2 10 0 3 10 0 4 10 0 5 10 0 6 10 0 7 10 0 8 10 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 11 0
		 11 21 0 12 21 0 13 21 0 14 21 0 15 21 0 16 21 0 17 21 0 18 21 0 19 21 0 20 21 0 22 23 0
		 24 25 0 26 27 0 28 29 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0 28 22 0 29 23 0
		 30 31 0 32 33 0 34 35 0 36 37 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 30 0
		 37 31 0;
	setAttr -s 34 -ch 128 ".fc[0:33]" -type "polyFaces" 
		f 3 0 11 -11
		mu 0 3 10 11 21
		f 3 1 12 -12
		mu 0 3 11 12 21
		f 3 2 13 -13
		mu 0 3 12 13 21
		f 3 3 14 -14
		mu 0 3 13 14 21
		f 3 4 15 -15
		mu 0 3 14 15 21
		f 3 5 16 -16
		mu 0 3 15 16 21
		f 3 6 17 -17
		mu 0 3 16 17 21
		f 3 7 18 -18
		mu 0 3 17 18 21
		f 3 8 19 -19
		mu 0 3 18 19 21
		f 3 9 10 -20
		mu 0 3 19 20 21
		f 10 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 10 0 9 8 7 6 5 4 3 2 1
		f 3 20 31 -31
		mu 0 3 22 23 24
		f 3 21 32 -32
		mu 0 3 23 25 24
		f 3 22 33 -33
		mu 0 3 25 26 24
		f 3 23 34 -34
		mu 0 3 26 27 24
		f 3 24 35 -35
		mu 0 3 27 28 24
		f 3 25 36 -36
		mu 0 3 28 29 24
		f 3 26 37 -37
		mu 0 3 29 30 24
		f 3 27 38 -38
		mu 0 3 30 31 24
		f 3 28 39 -39
		mu 0 3 31 32 24
		f 3 29 30 -40
		mu 0 3 32 33 24
		f 10 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21
		mu 0 10 34 35 36 37 38 39 40 41 42 43
		f 4 40 45 -42 -45
		mu 0 4 44 45 46 47
		f 4 41 47 -43 -47
		mu 0 4 47 46 48 49
		f 4 42 49 -44 -49
		mu 0 4 49 48 50 51
		f 4 43 51 -41 -51
		mu 0 4 51 50 52 53
		f 4 -52 -50 -48 -46
		mu 0 4 45 54 55 46
		f 4 50 44 46 48
		mu 0 4 56 44 47 57
		f 4 52 57 -54 -57
		mu 0 4 58 59 60 61
		f 4 53 59 -55 -59
		mu 0 4 61 60 62 63
		f 4 54 61 -56 -61
		mu 0 4 63 62 64 65
		f 4 55 63 -53 -63
		mu 0 4 65 64 66 67
		f 4 -64 -62 -60 -58
		mu 0 4 59 68 69 60
		f 4 62 56 58 60
		mu 0 4 70 58 61 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp";
	rename -uid "55F38D61-42E8-22B4-AF14-1DA940FAD85D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp";
	rename -uid "BCC5E85D-470A-A24A-CD77-EEBCC13F7B3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp" 
		-p "Finger__instance_1:orientationControls_grp";
	rename -uid "10CB28E7-405D-36DB-718C-319C7C2AFDD3";
createNode transform -n "Finger__instance_1:knuckle_3_joint_orientation_control" 
		-p "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp";
	rename -uid "96079F92-4A3F-E7C3-77A3-0A9E117EEA2A";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Finger__instance_1:knuckle_3_joint_orientation_controlShape" 
		-p "Finger__instance_1:knuckle_3_joint_orientation_control";
	rename -uid "581D115C-45D3-B04E-498B-F59C85CCCF3E";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:10]" "f[28:33]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[11:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0.62640893 0.064408526
		 0.54828387 0.0076473951 0.45171607 0.00764741 0.37359107 0.064408556 0.34375 0.15625001
		 0.37359107 0.24809146 0.4517161 0.3048526 0.54828393 0.3048526 0.62640893 0.24809144
		 0.65625 0.15625 0.375 0.3125 0.40000001 0.3125 0.42500001 0.3125 0.45000002 0.3125
		 0.47500002 0.3125 0.5 0.3125 0.52499998 0.3125 0.54999995 0.3125 0.57499993 0.3125
		 0.5999999 0.3125 0.62499988 0.3125 0.5 0.68843985 0.375 0.3125 0.40000001 0.3125
		 0.5 0.68843985 0.42500001 0.3125 0.45000002 0.3125 0.47500002 0.3125 0.5 0.3125 0.52499998
		 0.3125 0.54999995 0.3125 0.57499993 0.3125 0.5999999 0.3125 0.62499988 0.3125 0.62640893
		 0.064408526 0.65625 0.15625 0.62640893 0.24809144 0.54828393 0.3048526 0.4517161
		 0.3048526 0.37359107 0.24809146 0.34375 0.15625001 0.37359107 0.064408556 0.45171607
		 0.00764741 0.54828387 0.0076473951 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5
		 0.375 0.5 0.625 0.75 0.375 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125
		 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375 0.75
		 0.625 1 0.375 1 0.875 0 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 
		0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 
		0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 0 0 0.5 
		0 0 0.5 0 0 0.5 0 0 0.5 0 0;
	setAttr -s 38 ".vt[0:37]"  0.095147073 0.49463958 -0.069128409 0.036342937 0.49463958 -0.11185211
		 -0.036342964 0.49463958 -0.11185209 -0.095147088 0.49463958 -0.069128387 -0.11760826 0.49463958 7.0099975e-09
		 -0.095147073 0.49463958 0.069128402 -0.036342941 0.49463958 0.11185209 0.036342949 0.49463958 0.11185209
		 0.095147066 0.49463958 0.069128387 0.11760824 0.49463958 0 -4.5564983e-09 0.72985607 -4.205998e-10
		 0.095147073 0.069128409 0.49463958 0.036342937 0.11185211 0.49463958 -0.036342964 0.11185209 0.49463958
		 -0.095147088 0.069128387 0.49463958 -0.11760826 -7.0099975e-09 0.49463958 -0.095147073 -0.069128402 0.49463958
		 -0.036342941 -0.11185209 0.49463958 0.036342949 -0.11185209 0.49463958 0.095147066 -0.069128387 0.49463958
		 0.11760824 1.0983205e-16 0.49463958 -4.5564983e-09 4.2059997e-10 0.72985607 -0.5 -0.075000018 -0.5
		 0.5 -0.075000018 -0.5 -0.5 -0.074999988 0.5 0.5 -0.074999988 0.5 -0.5 0.075000018 0.5
		 0.5 0.075000018 0.5 -0.5 0.074999988 -0.5 0.5 0.074999988 -0.5 -0.5 -0.5 -0.074999988
		 0.5 -0.5 -0.074999988 -0.5 -0.5 0.075000018 0.5 -0.5 0.075000018 -0.5 0.5 0.074999988
		 0.5 0.5 0.074999988 -0.5 0.5 -0.075000018 0.5 0.5 -0.075000018;
	setAttr -s 64 ".ed[0:63]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 0 10 0 1 10 0 2 10 0 3 10 0 4 10 0 5 10 0 6 10 0 7 10 0 8 10 0
		 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0 20 11 0
		 11 21 0 12 21 0 13 21 0 14 21 0 15 21 0 16 21 0 17 21 0 18 21 0 19 21 0 20 21 0 22 23 0
		 24 25 0 26 27 0 28 29 0 22 24 0 23 25 0 24 26 0 25 27 0 26 28 0 27 29 0 28 22 0 29 23 0
		 30 31 0 32 33 0 34 35 0 36 37 0 30 32 0 31 33 0 32 34 0 33 35 0 34 36 0 35 37 0 36 30 0
		 37 31 0;
	setAttr -s 34 -ch 128 ".fc[0:33]" -type "polyFaces" 
		f 3 0 11 -11
		mu 0 3 10 11 21
		f 3 1 12 -12
		mu 0 3 11 12 21
		f 3 2 13 -13
		mu 0 3 12 13 21
		f 3 3 14 -14
		mu 0 3 13 14 21
		f 3 4 15 -15
		mu 0 3 14 15 21
		f 3 5 16 -16
		mu 0 3 15 16 21
		f 3 6 17 -17
		mu 0 3 16 17 21
		f 3 7 18 -18
		mu 0 3 17 18 21
		f 3 8 19 -19
		mu 0 3 18 19 21
		f 3 9 10 -20
		mu 0 3 19 20 21
		f 10 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 10 0 9 8 7 6 5 4 3 2 1
		f 3 20 31 -31
		mu 0 3 22 23 24
		f 3 21 32 -32
		mu 0 3 23 25 24
		f 3 22 33 -33
		mu 0 3 25 26 24
		f 3 23 34 -34
		mu 0 3 26 27 24
		f 3 24 35 -35
		mu 0 3 27 28 24
		f 3 25 36 -36
		mu 0 3 28 29 24
		f 3 26 37 -37
		mu 0 3 29 30 24
		f 3 27 38 -38
		mu 0 3 30 31 24
		f 3 28 39 -39
		mu 0 3 31 32 24
		f 3 29 30 -40
		mu 0 3 32 33 24
		f 10 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21
		mu 0 10 34 35 36 37 38 39 40 41 42 43
		f 4 40 45 -42 -45
		mu 0 4 44 45 46 47
		f 4 41 47 -43 -47
		mu 0 4 47 46 48 49
		f 4 42 49 -44 -49
		mu 0 4 49 48 50 51
		f 4 43 51 -41 -51
		mu 0 4 51 50 52 53
		f 4 -52 -50 -48 -46
		mu 0 4 45 54 55 46
		f 4 50 44 46 48
		mu 0 4 56 44 47 57
		f 4 52 57 -54 -57
		mu 0 4 58 59 60 61
		f 4 53 59 -55 -59
		mu 0 4 61 60 62 63
		f 4 54 61 -56 -61
		mu 0 4 63 62 64 65
		f 4 55 63 -53 -63
		mu 0 4 65 64 66 67
		f 4 -64 -62 -60 -58
		mu 0 4 59 68 69 60
		f 4 62 56 58 60
		mu 0 4 70 58 61 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp";
	rename -uid "8815B584-43C5-402C-8848-E7955EEA0639";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp";
	rename -uid "827B4C6F-416D-590E-1274-4485B51BDA51";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:preferredAngleRepresentation_grp" -p "Finger__instance_1:module_grp";
	rename -uid "78472AB7-49A2-2775-B0F4-EDB91B0E7538";
createNode transform -n "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp" 
		-p "Finger__instance_1:preferredAngleRepresentation_grp";
	rename -uid "B5406837-4FDC-0169-474C-79A8F1464FAC";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode parentConstraint -n "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp";
	rename -uid "4E2222A7-45C2-F72B-1405-5388A3F9DF44";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1920928955078125e-07 -0.00014042854309082031 -0.11461406946182251 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:root_joint_preferredAngle_representation_rotateX_grp" 
		-p "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp";
	rename -uid "B629EFAB-4188-0E90-2E6A-D4964037429F";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode transform -n "Finger__instance_1:root_joint_preferredAngle_representation" 
		-p "Finger__instance_1:root_joint_preferredAngle_representation_rotateX_grp";
	rename -uid "883F5E1E-4EB9-26A9-CB58-C7931DD3E49E";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".axis" 3;
createNode mesh -n "Finger__instance_1:root_joint_preferredAngle_representationShape" 
		-p "Finger__instance_1:root_joint_preferredAngle_representation";
	rename -uid "940641C6-431B-8E8B-254A-7EABBA3154B1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07
		 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07
		 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006
		 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07
		 0.70000011 -1.5646219e-07;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07
		 0 0 0.15838426 1.4050773e-16 0.30901742 0.95105654 0.15838476 1 0.15063262 0 0.30901688
		 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116
		 0 0.99999857 0 4.1442365e-07 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239
		 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079
		 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223
		 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429
		 0 2.9547712e-16 0.16653505 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16
		 0.15838474 0 0.15838425 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229
		 1 0.72654295 0 1 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558
		 0.11195894 1 0.32491878 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839
		 0 0.79360545 0 0.06706205 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1
		 0.72654241 0.63769084 0 1 0 0 0.32492003 0.29311422 0.11195964 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968
		 0.49979484 0.99958968 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638
		 0.99958968 0.35000002 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968
		 0.40000004 0.5 0.49991792 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005
		 0.5 0.49995896 0.99958968 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5
		 0.99958968 0.52500004 0.5 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968
		 0.57499999 0.5 0.50006157 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994
		 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365
		 0.99958968 0.69999987 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968
		 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001
		 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999
		 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002
		 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999
		 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008
		 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011
		 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999
		 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998
		 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998
		 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998
		 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998
		 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996
		 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996
		 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996
		 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996
		 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995
		 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995
		 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995
		 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995
		 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994
		 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994
		 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994
		 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994
		 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993
		 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07 0.15000001
		 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07 0.35000002
		 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006 -1.5646219e-07
		 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07 0.70000011
		 -1.5646219e-07 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07 0 0 0.15838426
		 1.4050773e-16 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-07
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-16 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-09 -2 0.15000002 0.046352547 -2 0.1426585 0.088167787 -2 0.12135256
		 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0 0.14265858 2 -0.04635258
		 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856 0 2 -0.15000008
		 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816 -0.14265852 2 -0.046352562
		 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809 -0.088167809 2 0.12135258
		 -0.046352562 2 0.1426585 -4.4703485e-09 2 0.15000002 0.046352547 2 0.1426585 0.088167787 2 0.12135256
		 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0 -0.0027888119 1.46116579 0.89826292
		 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486 -0.0027888119 1.67254364 0.68688512
		 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512 -0.0027888119 1.96779668 0.73364866
		 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298 -0.0027888119 2.10350943 1.000000119209
		 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578 -0.0027888119 1.96779656 1.26635158
		 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864 -0.0027888119 1.67254376 1.313115
		 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578 -0.0027888119 1.4611659 1.10173738
		 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209 0.45642692 1.77402389 0.99991667
		 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161 0.45642692 1.77419746 0.99974322
		 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322 0.45642692 1.77443969 0.99978161
		 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667 0.45642692 1.77455115 1.000000119209
		 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598 0.45642692 1.77443969 1.00021874905
		 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667 0.45642692 1.77419746 1.00025713444
		 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598 0.45642692 1.77402389 1.000083565712
		 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545 0.72811574 1.77428091 -0.52900702
		 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131 0 1.77428091 -0.90000039
		 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556 -0.7281155 1.77428091 -0.52900684
		 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0 -0.85595107 1.77428091 0.27811536
		 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538 -0.27811536 1.77428091 0.85595095
		 -2.6822089e-08 1.77428091 0.9000001 0.89999998 1.77428091 0 0.86060625 1.80518258 -0.27962789
		 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533 0.27962789 1.80518258 -0.86060613
		 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607 -0.53188378 1.80518258 -0.73207521
		 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278 -0.90489459 1.80518258 0
		 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366 -0.53188366 1.80518258 0.73207504
		 -0.2796278 1.80518258 0.86060578 -2.6967953e-08 1.80518258 0.90489447 0.90489435 1.80518258 0
		 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278 0.54023278 1.83305943 -0.74356663
		 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873 -0.28401715 1.83305943 -0.87411487
		 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326 -0.87411469 1.83305943 -0.28401706
		 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706 -0.74356633 1.83305943 0.54023254
		 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457 -2.7391264e-08 1.83305943 0.91909844
		 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362 0.76146466 1.85518265 -0.55323642
		 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531 0 1.85518265 -0.94122195
		 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448 -0.76146442 1.85518265 -0.55323625
		 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0 -0.89515507 1.85518265 0.2908535
		 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643 -0.2908535 1.85518265 0.89515495
		 -2.8050586e-08 1.85518265 0.94122159 0.94122148 1.85518265 0 0.92166787 1.86938655 -0.29946804
		 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175 0.29946801 1.86938655 -0.92166775
		 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677 -0.56962192 1.86938655 -0.78401732
		 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792 -0.96909857 1.86938655 0
		 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218 -0.5696218 1.86938655 0.78401715
		 -0.29946792 1.86938655 0.9216674 -2.8881381e-08 1.86938655 0.96909845 0.96909833 1.86938655 0
		 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856 0.5877856 1.87428093 -0.80901748
		 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-08 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-08 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-08 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-08 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-08 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-08 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-08 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-08 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-08 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-08 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-08 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-08 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-08 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-08 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-08 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-08 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-08 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-08 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-08 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-08 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-08 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-08 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-08 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-08 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-08 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-08 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-08 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-08 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-08 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-08 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-08 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-08 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-08 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-08 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-08 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode scaleConstraint -n "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp";
	rename -uid "F6E54688-4383-D349-6AFA-95BF46F7E373";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp" 
		-p "Finger__instance_1:preferredAngleRepresentation_grp";
	rename -uid "2C9AC6E7-4C21-9EE2-7AB7-7F824895A9BB";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode parentConstraint -n "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp";
	rename -uid "32425B68-4B76-A4A5-C491-DFAE4FDAFAF6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.0000001192092896 -0.00014042854309082031 -0.11461406946182251 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX_grp" 
		-p "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp";
	rename -uid "64D433B3-4157-6CA3-CEA2-75856F3856D7";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode transform -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representation" 
		-p "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX_grp";
	rename -uid "3DD0712D-4B04-711E-72BE-7EAD45893776";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".axis" 3;
createNode mesh -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representationShape" 
		-p "Finger__instance_1:knuckle_1_joint_preferredAngle_representation";
	rename -uid "7AE3310E-47B4-7C84-13B6-C58F2349C2B6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07
		 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07
		 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006
		 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07
		 0.70000011 -1.5646219e-07;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07
		 0 0 0.15838426 1.4050773e-16 0.30901742 0.95105654 0.15838476 1 0.15063262 0 0.30901688
		 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116
		 0 0.99999857 0 4.1442365e-07 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239
		 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079
		 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223
		 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429
		 0 2.9547712e-16 0.16653505 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16
		 0.15838474 0 0.15838425 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229
		 1 0.72654295 0 1 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558
		 0.11195894 1 0.32491878 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839
		 0 0.79360545 0 0.06706205 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1
		 0.72654241 0.63769084 0 1 0 0 0.32492003 0.29311422 0.11195964 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968
		 0.49979484 0.99958968 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638
		 0.99958968 0.35000002 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968
		 0.40000004 0.5 0.49991792 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005
		 0.5 0.49995896 0.99958968 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5
		 0.99958968 0.52500004 0.5 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968
		 0.57499999 0.5 0.50006157 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994
		 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365
		 0.99958968 0.69999987 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968
		 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001
		 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999
		 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002
		 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999
		 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008
		 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011
		 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999
		 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998
		 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998
		 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998
		 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998
		 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996
		 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996
		 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996
		 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996
		 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995
		 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995
		 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995
		 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995
		 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994
		 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994
		 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994
		 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994
		 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993
		 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07 0.15000001
		 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07 0.35000002
		 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006 -1.5646219e-07
		 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07 0.70000011
		 -1.5646219e-07 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07 0 0 0.15838426
		 1.4050773e-16 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-07
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-16 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-09 -2 0.15000002 0.046352547 -2 0.1426585 0.088167787 -2 0.12135256
		 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0 0.14265858 2 -0.04635258
		 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856 0 2 -0.15000008
		 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816 -0.14265852 2 -0.046352562
		 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809 -0.088167809 2 0.12135258
		 -0.046352562 2 0.1426585 -4.4703485e-09 2 0.15000002 0.046352547 2 0.1426585 0.088167787 2 0.12135256
		 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0 -0.0027888119 1.46116579 0.89826292
		 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486 -0.0027888119 1.67254364 0.68688512
		 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512 -0.0027888119 1.96779668 0.73364866
		 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298 -0.0027888119 2.10350943 1.000000119209
		 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578 -0.0027888119 1.96779656 1.26635158
		 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864 -0.0027888119 1.67254376 1.313115
		 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578 -0.0027888119 1.4611659 1.10173738
		 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209 0.45642692 1.77402389 0.99991667
		 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161 0.45642692 1.77419746 0.99974322
		 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322 0.45642692 1.77443969 0.99978161
		 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667 0.45642692 1.77455115 1.000000119209
		 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598 0.45642692 1.77443969 1.00021874905
		 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667 0.45642692 1.77419746 1.00025713444
		 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598 0.45642692 1.77402389 1.000083565712
		 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545 0.72811574 1.77428091 -0.52900702
		 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131 0 1.77428091 -0.90000039
		 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556 -0.7281155 1.77428091 -0.52900684
		 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0 -0.85595107 1.77428091 0.27811536
		 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538 -0.27811536 1.77428091 0.85595095
		 -2.6822089e-08 1.77428091 0.9000001 0.89999998 1.77428091 0 0.86060625 1.80518258 -0.27962789
		 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533 0.27962789 1.80518258 -0.86060613
		 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607 -0.53188378 1.80518258 -0.73207521
		 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278 -0.90489459 1.80518258 0
		 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366 -0.53188366 1.80518258 0.73207504
		 -0.2796278 1.80518258 0.86060578 -2.6967953e-08 1.80518258 0.90489447 0.90489435 1.80518258 0
		 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278 0.54023278 1.83305943 -0.74356663
		 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873 -0.28401715 1.83305943 -0.87411487
		 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326 -0.87411469 1.83305943 -0.28401706
		 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706 -0.74356633 1.83305943 0.54023254
		 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457 -2.7391264e-08 1.83305943 0.91909844
		 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362 0.76146466 1.85518265 -0.55323642
		 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531 0 1.85518265 -0.94122195
		 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448 -0.76146442 1.85518265 -0.55323625
		 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0 -0.89515507 1.85518265 0.2908535
		 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643 -0.2908535 1.85518265 0.89515495
		 -2.8050586e-08 1.85518265 0.94122159 0.94122148 1.85518265 0 0.92166787 1.86938655 -0.29946804
		 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175 0.29946801 1.86938655 -0.92166775
		 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677 -0.56962192 1.86938655 -0.78401732
		 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792 -0.96909857 1.86938655 0
		 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218 -0.5696218 1.86938655 0.78401715
		 -0.29946792 1.86938655 0.9216674 -2.8881381e-08 1.86938655 0.96909845 0.96909833 1.86938655 0
		 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856 0.5877856 1.87428093 -0.80901748
		 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-08 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-08 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-08 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-08 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-08 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-08 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-08 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-08 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-08 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-08 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-08 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-08 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-08 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-08 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-08 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-08 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-08 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-08 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-08 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-08 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-08 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-08 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-08 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-08 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-08 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-08 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-08 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-08 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-08 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-08 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-08 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-08 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-08 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-08 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-08 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode scaleConstraint -n "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp";
	rename -uid "8647BFBC-44AB-0B36-9CBB-ACB40673B12F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp" 
		-p "Finger__instance_1:preferredAngleRepresentation_grp";
	rename -uid "155E90F2-4963-0A6F-60C7-D2878DDFFC41";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode parentConstraint -n "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp";
	rename -uid "8747F07F-4724-6647-757A-B0BFD127FD1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8.0000001192092896 -0.00014042854309082031 -0.11461406946182251 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX_grp" 
		-p "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp";
	rename -uid "05F77917-4C50-0876-AFFA-6DA793D2CAFC";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode transform -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representation" 
		-p "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX_grp";
	rename -uid "1C3AB399-4955-C3AE-F8EA-8A9C32D49339";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".axis" 3;
createNode mesh -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representationShape" 
		-p "Finger__instance_1:knuckle_2_joint_preferredAngle_representation";
	rename -uid "8307857E-4577-0FC2-E9D3-DAB400C4194D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07
		 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07
		 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006
		 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07
		 0.70000011 -1.5646219e-07;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07
		 0 0 0.15838426 1.4050773e-16 0.30901742 0.95105654 0.15838476 1 0.15063262 0 0.30901688
		 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116
		 0 0.99999857 0 4.1442365e-07 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239
		 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079
		 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223
		 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429
		 0 2.9547712e-16 0.16653505 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16
		 0.15838474 0 0.15838425 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229
		 1 0.72654295 0 1 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558
		 0.11195894 1 0.32491878 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839
		 0 0.79360545 0 0.06706205 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1
		 0.72654241 0.63769084 0 1 0 0 0.32492003 0.29311422 0.11195964 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968
		 0.49979484 0.99958968 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638
		 0.99958968 0.35000002 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968
		 0.40000004 0.5 0.49991792 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005
		 0.5 0.49995896 0.99958968 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5
		 0.99958968 0.52500004 0.5 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968
		 0.57499999 0.5 0.50006157 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994
		 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365
		 0.99958968 0.69999987 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968
		 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001
		 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999
		 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002
		 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999
		 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008
		 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011
		 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999
		 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998
		 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998
		 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998
		 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998
		 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996
		 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996
		 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996
		 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996
		 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995
		 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995
		 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995
		 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995
		 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994
		 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994
		 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994
		 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994
		 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993
		 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07 0.15000001
		 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07 0.35000002
		 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006 -1.5646219e-07
		 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07 0.70000011
		 -1.5646219e-07 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07 0 0 0.15838426
		 1.4050773e-16 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-07
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-16 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-09 -2 0.15000002 0.046352547 -2 0.1426585 0.088167787 -2 0.12135256
		 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0 0.14265858 2 -0.04635258
		 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856 0 2 -0.15000008
		 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816 -0.14265852 2 -0.046352562
		 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809 -0.088167809 2 0.12135258
		 -0.046352562 2 0.1426585 -4.4703485e-09 2 0.15000002 0.046352547 2 0.1426585 0.088167787 2 0.12135256
		 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0 -0.0027888119 1.46116579 0.89826292
		 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486 -0.0027888119 1.67254364 0.68688512
		 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512 -0.0027888119 1.96779668 0.73364866
		 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298 -0.0027888119 2.10350943 1.000000119209
		 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578 -0.0027888119 1.96779656 1.26635158
		 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864 -0.0027888119 1.67254376 1.313115
		 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578 -0.0027888119 1.4611659 1.10173738
		 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209 0.45642692 1.77402389 0.99991667
		 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161 0.45642692 1.77419746 0.99974322
		 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322 0.45642692 1.77443969 0.99978161
		 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667 0.45642692 1.77455115 1.000000119209
		 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598 0.45642692 1.77443969 1.00021874905
		 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667 0.45642692 1.77419746 1.00025713444
		 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598 0.45642692 1.77402389 1.000083565712
		 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545 0.72811574 1.77428091 -0.52900702
		 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131 0 1.77428091 -0.90000039
		 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556 -0.7281155 1.77428091 -0.52900684
		 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0 -0.85595107 1.77428091 0.27811536
		 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538 -0.27811536 1.77428091 0.85595095
		 -2.6822089e-08 1.77428091 0.9000001 0.89999998 1.77428091 0 0.86060625 1.80518258 -0.27962789
		 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533 0.27962789 1.80518258 -0.86060613
		 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607 -0.53188378 1.80518258 -0.73207521
		 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278 -0.90489459 1.80518258 0
		 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366 -0.53188366 1.80518258 0.73207504
		 -0.2796278 1.80518258 0.86060578 -2.6967953e-08 1.80518258 0.90489447 0.90489435 1.80518258 0
		 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278 0.54023278 1.83305943 -0.74356663
		 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873 -0.28401715 1.83305943 -0.87411487
		 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326 -0.87411469 1.83305943 -0.28401706
		 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706 -0.74356633 1.83305943 0.54023254
		 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457 -2.7391264e-08 1.83305943 0.91909844
		 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362 0.76146466 1.85518265 -0.55323642
		 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531 0 1.85518265 -0.94122195
		 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448 -0.76146442 1.85518265 -0.55323625
		 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0 -0.89515507 1.85518265 0.2908535
		 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643 -0.2908535 1.85518265 0.89515495
		 -2.8050586e-08 1.85518265 0.94122159 0.94122148 1.85518265 0 0.92166787 1.86938655 -0.29946804
		 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175 0.29946801 1.86938655 -0.92166775
		 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677 -0.56962192 1.86938655 -0.78401732
		 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792 -0.96909857 1.86938655 0
		 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218 -0.5696218 1.86938655 0.78401715
		 -0.29946792 1.86938655 0.9216674 -2.8881381e-08 1.86938655 0.96909845 0.96909833 1.86938655 0
		 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856 0.5877856 1.87428093 -0.80901748
		 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-08 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-08 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-08 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-08 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-08 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-08 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-08 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-08 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-08 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-08 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-08 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-08 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-08 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-08 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-08 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-08 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-08 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-08 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-08 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-08 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-08 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-08 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-08 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-08 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-08 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-08 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-08 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-08 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-08 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-08 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-08 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-08 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-08 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-08 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-08 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode scaleConstraint -n "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp";
	rename -uid "A6167885-4D2C-96A6-72CF-EB91F3310171";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp" 
		-p "Finger__instance_1:preferredAngleRepresentation_grp";
	rename -uid "07AAC6EE-474E-FAD1-C167-F894B7DF0BCF";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode parentConstraint -n "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp";
	rename -uid "9F75C3BE-4D7F-7CA2-308F-EDB270ABAFBC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12.00000011920929 -0.00014042854309082031 -0.11461406946182251 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX_grp" 
		-p "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp";
	rename -uid "FB691B72-47E2-87E2-8BE5-148CB70322D3";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode transform -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representation" 
		-p "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX_grp";
	rename -uid "F33F95D2-4DE4-3353-5A92-22A5C3D99161";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".axis" 3;
createNode mesh -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representationShape" 
		-p "Finger__instance_1:knuckle_3_joint_preferredAngle_representation";
	rename -uid "E9287827-4B89-82B4-F16B-A1A8134552DA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07
		 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07
		 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006
		 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07
		 0.70000011 -1.5646219e-07;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07
		 0 0 0.15838426 1.4050773e-16 0.30901742 0.95105654 0.15838476 1 0.15063262 0 0.30901688
		 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116
		 0 0.99999857 0 4.1442365e-07 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239
		 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079
		 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223
		 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429
		 0 2.9547712e-16 0.16653505 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16
		 0.15838474 0 0.15838425 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229
		 1 0.72654295 0 1 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558
		 0.11195894 1 0.32491878 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839
		 0 0.79360545 0 0.06706205 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1
		 0.72654241 0.63769084 0 1 0 0 0.32492003 0.29311422 0.11195964 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968
		 0.49979484 0.99958968 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638
		 0.99958968 0.35000002 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968
		 0.40000004 0.5 0.49991792 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005
		 0.5 0.49995896 0.99958968 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5
		 0.99958968 0.52500004 0.5 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968
		 0.57499999 0.5 0.50006157 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994
		 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365
		 0.99958968 0.69999987 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968
		 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001
		 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999
		 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002
		 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999
		 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008
		 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011
		 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999
		 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998
		 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998
		 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998
		 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998
		 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996
		 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996
		 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996
		 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996
		 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995
		 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995
		 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995
		 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995
		 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994
		 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994
		 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994
		 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994
		 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993
		 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07 0.15000001
		 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07 0.35000002
		 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006 -1.5646219e-07
		 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07 0.70000011
		 -1.5646219e-07 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07 0 0 0.15838426
		 1.4050773e-16 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-07
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-16 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-09 -2 0.15000002 0.046352547 -2 0.1426585 0.088167787 -2 0.12135256
		 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0 0.14265858 2 -0.04635258
		 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856 0 2 -0.15000008
		 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816 -0.14265852 2 -0.046352562
		 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809 -0.088167809 2 0.12135258
		 -0.046352562 2 0.1426585 -4.4703485e-09 2 0.15000002 0.046352547 2 0.1426585 0.088167787 2 0.12135256
		 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0 -0.0027888119 1.46116579 0.89826292
		 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486 -0.0027888119 1.67254364 0.68688512
		 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512 -0.0027888119 1.96779668 0.73364866
		 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298 -0.0027888119 2.10350943 1.000000119209
		 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578 -0.0027888119 1.96779656 1.26635158
		 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864 -0.0027888119 1.67254376 1.313115
		 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578 -0.0027888119 1.4611659 1.10173738
		 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209 0.45642692 1.77402389 0.99991667
		 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161 0.45642692 1.77419746 0.99974322
		 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322 0.45642692 1.77443969 0.99978161
		 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667 0.45642692 1.77455115 1.000000119209
		 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598 0.45642692 1.77443969 1.00021874905
		 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667 0.45642692 1.77419746 1.00025713444
		 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598 0.45642692 1.77402389 1.000083565712
		 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545 0.72811574 1.77428091 -0.52900702
		 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131 0 1.77428091 -0.90000039
		 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556 -0.7281155 1.77428091 -0.52900684
		 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0 -0.85595107 1.77428091 0.27811536
		 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538 -0.27811536 1.77428091 0.85595095
		 -2.6822089e-08 1.77428091 0.9000001 0.89999998 1.77428091 0 0.86060625 1.80518258 -0.27962789
		 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533 0.27962789 1.80518258 -0.86060613
		 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607 -0.53188378 1.80518258 -0.73207521
		 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278 -0.90489459 1.80518258 0
		 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366 -0.53188366 1.80518258 0.73207504
		 -0.2796278 1.80518258 0.86060578 -2.6967953e-08 1.80518258 0.90489447 0.90489435 1.80518258 0
		 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278 0.54023278 1.83305943 -0.74356663
		 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873 -0.28401715 1.83305943 -0.87411487
		 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326 -0.87411469 1.83305943 -0.28401706
		 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706 -0.74356633 1.83305943 0.54023254
		 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457 -2.7391264e-08 1.83305943 0.91909844
		 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362 0.76146466 1.85518265 -0.55323642
		 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531 0 1.85518265 -0.94122195
		 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448 -0.76146442 1.85518265 -0.55323625
		 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0 -0.89515507 1.85518265 0.2908535
		 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643 -0.2908535 1.85518265 0.89515495
		 -2.8050586e-08 1.85518265 0.94122159 0.94122148 1.85518265 0 0.92166787 1.86938655 -0.29946804
		 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175 0.29946801 1.86938655 -0.92166775
		 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677 -0.56962192 1.86938655 -0.78401732
		 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792 -0.96909857 1.86938655 0
		 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218 -0.5696218 1.86938655 0.78401715
		 -0.29946792 1.86938655 0.9216674 -2.8881381e-08 1.86938655 0.96909845 0.96909833 1.86938655 0
		 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856 0.5877856 1.87428093 -0.80901748
		 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-08 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-08 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-08 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-08 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-08 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-08 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-08 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-08 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-08 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-08 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-08 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-08 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-08 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-08 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-08 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-08 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-08 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-08 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-08 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-08 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-08 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-08 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-08 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-08 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-08 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-08 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-08 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-08 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-08 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-08 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-08 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-08 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-08 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-08 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-08 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode scaleConstraint -n "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp";
	rename -uid "F857EBD8-4BC5-4E56-E5E5-CFAD452B1C13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:hook_grp" -p "Finger__instance_1:module_grp";
	rename -uid "79DBDD92-469D-E46A-DF2F-74B39771CA2E";
createNode joint -n "Finger__instance_1:hook_root_joint" -p "Finger__instance_1:hook_grp";
	rename -uid "B46A4D02-4E7F-EE84-276B-5CBEAF12DB5B";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 134.20225766050052 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
createNode joint -n "Finger__instance_1:hook_target_joint" -p "Finger__instance_1:hook_root_joint";
	rename -uid "B55CA440-4D69-CF93-48E6-CAB5E08CF3C5";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
createNode ikEffector -n "Finger__instance_1:hook_root_jointikEffector" -p "Finger__instance_1:hook_root_joint";
	rename -uid "1BBB25C6-4A64-B6A6-769F-67AACB3FBBD5";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "Finger__instance_1:hook_root_joint_pointConstraint" 
		-p "Finger__instance_1:hook_root_joint";
	rename -uid "69FC314E-49B5-2779-B45B-3C919425DD7E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:unhookedTarget" -p "Finger__instance_1:hook_grp";
	rename -uid "534B8918-42FD-C1AA-E166-4AA470FBEB2B";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:unhookedTargetShape" -p "Finger__instance_1:unhookedTarget";
	rename -uid "EE37FAC1-436F-0052-7522-8CB5A5DEACB6";
	setAttr -k off ".v";
createNode pointConstraint -n "unhookedTarget_pointConstraint1" -p "Finger__instance_1:unhookedTarget";
	rename -uid "504C3A83-434C-8B18-05C2-D98E34155F1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0.001 0 ;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode ikHandle -n "Finger__instance_1:hook_root_joint_ikHandle" -p "Finger__instance_1:hook_grp";
	rename -uid "0A1F5055-46DC-EF34-3982-2A822B866B13";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "hook_root_joint_ikHandle_poleVectorConstraint1" 
		-p "Finger__instance_1:hook_root_joint_ikHandle";
	rename -uid "C900952F-4EB7-FA8C-EE57-C4B5690C0429";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_joint_ikHandle_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint" 
		-p "Finger__instance_1:hook_root_joint_ikHandle";
	rename -uid "EDB77F6D-4D5C-8890-6D93-0587422F1E1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_target_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:hook_root_joint_rootPosLocator" -p "Finger__instance_1:hook_grp";
	rename -uid "A76173D3-4805-4687-C8AF-2089A64E4C23";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:hook_root_joint_rootPosLocatorShape" -p
		 "Finger__instance_1:hook_root_joint_rootPosLocator";
	rename -uid "C677A357-4196-E56F-C616-AE809FF95E75";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint" 
		-p "Finger__instance_1:hook_root_joint_rootPosLocator";
	rename -uid "36910C8D-4701-DAD9-33C0-60848ACA9AEC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:hook_target_joint_endPosLocator" -p "Finger__instance_1:hook_grp";
	rename -uid "70FA898D-4A50-0B59-F0C2-0A8626F0822C";
	setAttr ".v" no;
createNode locator -n "Finger__instance_1:hook_target_joint_endPosLocatorShape" -p
		 "Finger__instance_1:hook_target_joint_endPosLocator";
	rename -uid "A2A78294-4050-E7CC-2784-24B3F3944073";
	setAttr -k off ".v";
createNode pointConstraint -n "Finger__instance_1:hook_pointConstraint" -p "Finger__instance_1:hook_target_joint_endPosLocator";
	rename -uid "8B6773FA-42B9-FECE-FA6E-01A1FF2FF4C0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "unhookedTargetW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator" 
		-p "Finger__instance_1:hook_grp";
	rename -uid "D5F91F38-443C-116F-3387-C18190677EB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocatorShape" 
		-p "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator";
	rename -uid "95BC25C1-489D-CBA0-8E50-C5A07F9E252D";
	setAttr -k off ".v";
createNode transform -n "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp" 
		-p "Finger__instance_1:hook_grp";
	rename -uid "B189F6D7-447F-5CB4-D590-65A78267FADA";
createNode transform -n "Finger__instance_1:hook_root_joint_hook_representation" 
		-p "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "381D90F4-4024-BF27-29D7-9B8E313A598E";
createNode nurbsSurface -n "Finger__instance_1:hook_root_joint_hook_representationShape" 
		-p "Finger__instance_1:hook_root_joint_hook_representation";
	rename -uid "E297733C-4630-1EE4-2740-888E22BFA2D7";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-16 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-18
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-16 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-16 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-17
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-17 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-18 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-17
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-16 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-16 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-16
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-16 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1" 
		-p "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "4AB40527-465B-AE5C-E5A0-11A36B16F6A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 134.20225766050052 0 90 ;
	setAttr ".rsrr" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1" 
		-p "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "ED592A6C-443A-6499-E998-9093E5355B13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "Finger__instance_1:module_grp";
	rename -uid "21D9FE14-4AFE-458C-B4C3-34BDD76D25C7";
createNode transform -n "Finger__instance_1:root_joint_translation_control_poleVectorLocator" 
		-p "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "4306BBC0-476E-3A4E-6F95-02BF19768DDC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "Finger__instance_1:root_joint_translation_control_poleVectorLocatorShape" 
		-p "Finger__instance_1:root_joint_translation_control_poleVectorLocator";
	rename -uid "2C90BF0B-46B5-B373-A609-D09307DE9996";
	setAttr -k off ".v";
createNode parentConstraint -n "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "D1DFC54A-44C7-ED8D-3F84-6FB00229D4B5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "Finger__instance_1:module_grp";
	rename -uid "29951D04-4750-40D5-1293-7F877BF3C302";
createNode transform -n "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator" 
		-p "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "62B5880F-4225-138B-EDCA-B896A760DA65";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocatorShape" 
		-p "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator";
	rename -uid "E6087E2B-4708-2CC8-1DE3-E9B071BAD611";
	setAttr -k off ".v";
createNode parentConstraint -n "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "90D8B6DC-42CA-3893-E756-48A4F0000BCE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_1_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "Finger__instance_1:module_grp";
	rename -uid "7E203AB6-4A27-6C07-AE8B-229806F6EBAF";
createNode transform -n "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator" 
		-p "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "AD72ABB1-400C-C589-C4C1-529097AD627D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocatorShape" 
		-p "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator";
	rename -uid "A149DD98-4218-9B0E-1964-EA93AF66718E";
	setAttr -k off ".v";
createNode parentConstraint -n "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "47F1E78D-4268-4EFA-AFD6-E3BEAB6F15F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_2_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "Finger__instance_1:module_grp";
	rename -uid "E3037A6C-469C-02A0-88E9-C4873F4CB37D";
createNode transform -n "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator" 
		-p "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "A33253EE-4F97-EAB1-31DD-0A98B8C6FBFF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocatorShape" 
		-p "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator";
	rename -uid "8D5FAECF-4510-4812-DEA3-EDBB99D356B4";
	setAttr -k off ".v";
createNode parentConstraint -n "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "11A8952C-46A6-280D-4B1B-8EB1D410A886";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "knuckle_3_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 12 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:module_grp";
	rename -uid "13616F4C-4C75-A6DF-DF15-AE91E9584F0A";
createNode transform -n "HingeJoint__instance_2:joints_grp" -p "HingeJoint__instance_2:module_grp";
	rename -uid "B687EE2E-4610-D78A-AD9B-E0A9231A2949";
createNode joint -n "HingeJoint__instance_2:root_joint" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "843C7D51-4092-90F1-160C-34AF734ED6E4";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 90 -4.6283870176447745e-15 4.6283870176447745e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926484 0 ;
createNode joint -n "HingeJoint__instance_2:hinge_joint" -p "HingeJoint__instance_2:root_joint";
	rename -uid "E7D6C874-454B-D140-6343-AE9626851CCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 14.089104423131282 24.533481312793903 31.150629863232503 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -28.072486935852961 0 ;
createNode joint -n "HingeJoint__instance_2:end_joint" -p "HingeJoint__instance_2:hinge_joint";
	rename -uid "65CF3C1A-4B15-6C8F-1FB6-58B33172B176";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926477 0 ;
createNode ikEffector -n "HingeJoint__instance_2:hinge_jointikEffector" -p "HingeJoint__instance_2:hinge_joint";
	rename -uid "E1C5D5DA-46F4-8E35-0284-EF8B4D556FC4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "HingeJoint__instance_2:root_joint_pointConstraint" 
		-p "HingeJoint__instance_2:root_joint";
	rename -uid "ADF539FB-43A1-C5F2-18FD-749E39A29CC9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode ikEffector -n "HingeJoint__instance_2:root_jointikEffector" -p "HingeJoint__instance_2:root_joint";
	rename -uid "ED69283D-4164-017A-0AF4-6CA816EC09A4";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "HingeJoint__instance_2:root_joint_ikHandle" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "1B5B7553-4BE3-9F6B-D015-AF89CD7CCEFB";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "root_joint_ikHandle_poleVectorConstraint2" -p
		 "HingeJoint__instance_2:root_joint_ikHandle";
	rename -uid "902D9D43-46BC-3D4E-CAC5-56AAD4FFE134";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 -0.5 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_2:root_joint_ikHandle";
	rename -uid "02C755A7-4793-CC1C-3AD7-09A6A98F8183";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_endPosLocatorW0" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:root_joint_rootPosLocator" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "244E823C-4DA2-E736-0A3D-EDAFEE1257B5";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:root_joint_rootPosLocatorShape" -p "HingeJoint__instance_2:root_joint_rootPosLocator";
	rename -uid "8AC3CA6F-48CA-E92F-1B6F-209FD685D1FB";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_2:root_joint_rootPosLocator";
	rename -uid "BD633AF8-4F4F-7710-BA9C-7A9A865AA517";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hinge_joint_endPosLocator" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "E6071B4C-4747-DCD4-E8BA-C5AA6D826860";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:hinge_joint_endPosLocatorShape" -p "HingeJoint__instance_2:hinge_joint_endPosLocator";
	rename -uid "DA8A70E8-4B7C-67BB-C777-5DA34EF842BF";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_2:hinge_joint_endPosLocator";
	rename -uid "0AF928E5-40B2-E71E-1151-819EDE8EAB70";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
createNode ikHandle -n "HingeJoint__instance_2:hinge_joint_ikHandle" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "1729CC3D-4469-3D97-AB38-B993BD23E015";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "hinge_joint_ikHandle_poleVectorConstraint1" -p
		 "HingeJoint__instance_2:hinge_joint_ikHandle";
	rename -uid "F4ACAF2A-4FB9-4309-5894-90AD2C01D59E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_control_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.6671985527763127e-08 -0.49999999999999967 -2.4167996159896177e-08 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_2:hinge_joint_ikHandle";
	rename -uid "AC7C07E3-4195-3CA9-8E8F-A4AA84ED5248";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_endPosLocatorW0" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 7.5294116680338963 -1.9402850002906642 -1.8823529170084747 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hinge_joint_rootPosLocator" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "D427D439-44FC-FCA1-8DAB-6CA8EFB634B8";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:hinge_joint_rootPosLocatorShape" -p
		 "HingeJoint__instance_2:hinge_joint_rootPosLocator";
	rename -uid "BD4D234E-4845-34DD-4E14-189DE0AD524C";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_2:hinge_joint_rootPosLocator";
	rename -uid "589164F9-4FE1-C133-EE1B-44AB27D09CE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.9999999033280145 -3.3306690738754696e-16 -0.99999997583200406 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:end_joint_endPosLocator" -p "HingeJoint__instance_2:joints_grp";
	rename -uid "D25ADAC4-46B2-C98A-DC8B-03B2B1B5EAE2";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:end_joint_endPosLocatorShape" -p "HingeJoint__instance_2:end_joint_endPosLocator";
	rename -uid "B46B6AB8-4E87-AE9C-97AC-FBBF95A8B037";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint" 
		-p "HingeJoint__instance_2:end_joint_endPosLocator";
	rename -uid "95E3C0FC-4861-924F-2DFB-54BBB9D578E0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hierarchyRepresentations_grp" -p "HingeJoint__instance_2:module_grp";
	rename -uid "67382BE8-4DD0-5F38-022C-FA992A0451FC";
createNode transform -n "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_2:hierarchyRepresentations_grp";
	rename -uid "4ADC1EA9-465B-5CCE-647E-C085F3F2DF87";
createNode transform -n "HingeJoint__instance_2:root_joint_hierarchy_representation" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "6D083EF1-4223-90AF-7BE7-789DDB4C1BA2";
createNode nurbsSurface -n "HingeJoint__instance_2:root_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_representation";
	rename -uid "E05C4CF6-4EAC-D44A-4173-1D93E86C934E";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-16 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-18
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-16 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-16 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-17
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-17 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-18 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-17
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-16 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-16 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-16
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-16 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "HingeJoint__instance_2:root_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_representation";
	rename -uid "FAC033C2-4BED-5A65-842E-459DD559F766";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-16 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-16 -0.56975854455648134 0 ;
createNode mesh -n "HingeJoint__instance_2:root_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_arrow_representation";
	rename -uid "BE3FFC3E-442C-1F3F-3C60-789FF73B68BD";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-08 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-08 -0.33249369 1.0697585 0.33249366 -2.8027111e-08 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-08 2.3753411e-16 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "5F90D2A1-45A1-7752-ED42-C09CAAFDAD71";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 90 14.036243467926484 0 ;
	setAttr ".rsrr" -type "double3" 90 14.036243467926484 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1" 
		-p "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "4402C3D1-46F1-E61E-2226-3E8C83B84144";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_2:hierarchyRepresentations_grp";
	rename -uid "43A795EF-48E2-15E5-5FD3-329254976BE1";
createNode transform -n "HingeJoint__instance_2:hinge_joint_hierarchy_representation" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "2CB78669-466B-2C0E-C673-659CD175EE77";
createNode nurbsSurface -n "HingeJoint__instance_2:hinge_joint_hierarchy_representationShape" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_representation";
	rename -uid "D058187B-428C-5880-732D-A1B0E926D13C";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-16 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-18
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-16 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-16 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-17
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-17 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-18 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-17
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-16 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-16 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-16
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-16 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representation" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_representation";
	rename -uid "DD9DC5DE-4C69-F728-D741-C6BF0D5DEE93";
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 0.46739519169468152 0.46739519169468152 0.46739519169468152 ;
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 0.5 0 ;
	setAttr ".rpt" -type "double3" 0.49999999999999989 -0.5 0 ;
	setAttr ".sp" -type "double3" 2.3753411339122038e-16 1.0697585445564812 0 ;
	setAttr ".spt" -type "double3" -1.2651181092870475e-16 -0.56975854455648134 0 ;
createNode mesh -n "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representationShape" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representation";
	rename -uid "BA459001-45C3-EC87-5972-F293CC8AD312";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.67677665 0.073223323
		 0.5 2.9802322e-08 0.32322332 0.073223323 0.25000003 0.25 0.32322332 0.42677668 0.5
		 0.5 0.67677671 0.42677671 0.75 0.25 0.25 0.5 0.3125 0.5 0.375 0.5 0.4375 0.5 0.5
		 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 9 ".pt[0:8]" -type "float3"  0.33249366 1.0697585 -0.33249369 
		-2.8027111e-08 1.0697585 -0.4702169 -0.33249369 1.0697585 -0.33249369 -0.4702169 
		1.0697585 -1.4013556e-08 -0.33249369 1.0697585 0.33249366 -2.8027111e-08 1.0697585 
		0.4702169 0.33249369 1.0697585 0.33249369 0.4702169 1.0697585 -1.4013556e-08 2.3753411e-16 
		1.0697585 0;
	setAttr -s 9 ".vt[0:8]"  0.70710671 -0.25 -0.70710671 0 -0.25 -0.99999988
		 -0.70710671 -0.25 -0.70710671 -0.99999988 -0.25 0 -0.70710671 -0.25 0.70710671 0 -0.25 0.99999994
		 0.70710677 -0.25 0.70710677 1 -0.25 0 0 0.25 0;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 0 8 0 1 8 0 2 8 0 3 8 0 4 8 0 5 8 0 6 8 0 7 8 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 8 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 8 0 7 6 5 4 3 2 1
		f 3 0 9 -9
		mu 0 3 8 9 17
		f 3 1 10 -10
		mu 0 3 9 10 17
		f 3 2 11 -11
		mu 0 3 10 11 17
		f 3 3 12 -12
		mu 0 3 11 12 17
		f 3 4 13 -13
		mu 0 3 12 13 17
		f 3 5 14 -14
		mu 0 3 13 14 17
		f 3 6 15 -15
		mu 0 3 14 15 17
		f 3 7 8 -16
		mu 0 3 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "C1C02001-46D0-B847-398A-AA9BF1353987";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 90.000005373519016 -14.036242816291574 2.9505966440491207e-14 ;
	setAttr ".rst" -type "double3" 3.9999999033280145 -3.3306690738754696e-16 -0.99999997583200406 ;
	setAttr ".rsrr" -type "double3" 90.00000537351896 -14.036242816291594 1.8031423935855737e-14 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1" 
		-p "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp";
	rename -uid "F30826E9-4C8B-92A0-FEEF-7098A72DDCCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:orientationControls_grp" -p "HingeJoint__instance_2:module_grp";
	rename -uid "ED4B1670-413C-8ACE-FC0E-79A41E754326";
createNode transform -n "HingeJoint__instance_2:preferredAngleRepresentation_grp" 
		-p "HingeJoint__instance_2:module_grp";
	rename -uid "5FD4D6ED-427A-569B-39BA-E39AE5A778D8";
createNode transform -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp" 
		-p "HingeJoint__instance_2:preferredAngleRepresentation_grp";
	rename -uid "CB0D51BC-421D-6A90-A956-10816765C2E1";
	setAttr ".rp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
	setAttr ".sp" -type "double3" -1.1920928955078125e-07 0.00014042854309082031 0.11461406946182251 ;
createNode transform -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation" 
		-p "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "5CA4A5D2-4F45-300E-14C6-B484F30DBA88";
	addAttr -ci true -sn "axis" -ln "axis" -min 0 -max 3 -en "+Y:-Y:+Z:-Z" -at "enum";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k on ".axis";
createNode mesh -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representationShape" 
		-p "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation";
	rename -uid "0773C787-4CF2-0230-5391-4EB0261B8D78";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1070 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608 0.34374997
		 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.7377643 0.1727457 0.75 0.25 0.73776412
		 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424 0.48776415 0.5
		 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634 0.26223582 0.32725427
		 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364 0.35305363 0.047745675
		 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746 0.64694643 0.04774563
		 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968 0.49979484 0.99958968
		 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638 0.99958968 0.35000002
		 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968 0.40000004 0.5 0.49991792
		 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005 0.5 0.49995896 0.99958968
		 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5 0.99958968 0.52500004 0.5
		 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968 0.57499999 0.5 0.50006157
		 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994 0.5 0.50010258 0.99958968
		 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365 0.99958968 0.69999987
		 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968 0.74999982 0.5 0.50020516
		 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001 0.94999999 0.1 1 0.1
		 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999 0.25 1 0.25 0.94999999
		 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002 0.94999999 0.40000004
		 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999 0.50000006 1 0.50000006
		 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008 1 0.60000008 0.94999999
		 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011 0.94999999 1.000000119209
		 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999 0 0.89999998 0.050000001
		 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998 0.25 0.89999998 0.30000001
		 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998 0.45000005 0.89999998 0.50000006
		 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998 0.6500001 0.89999998 0.70000011
		 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998 0 0.84999996 0.050000001
		 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996 0.25 0.84999996 0.30000001
		 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996 0.45000005 0.84999996 0.50000006
		 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996 0.6500001 0.84999996 0.70000011
		 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996 0 0.79999995 0.050000001
		 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995 0.25 0.79999995 0.30000001
		 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995 0.45000005 0.79999995 0.50000006
		 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995 0.6500001 0.79999995 0.70000011
		 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995 0 0.74999994 0.050000001
		 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994 0.25 0.74999994 0.30000001
		 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994 0.45000005 0.74999994 0.50000006
		 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994 0.6500001 0.74999994 0.70000011
		 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994 0 0.69999993 0.050000001
		 0.69999993 0.1 0.69999993;
	setAttr ".uvst[0].uvsp[250:499]" 0.15000001 0.69999993 0.2 0.69999993 0.25
		 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993 0.45000005
		 0.69999993 0.50000006 0.69999993 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001
		 0.69999993 0.70000011 0.69999993 0.95000017 0.69999993 1.000000119209 0.69999993
		 0 0.64999992 0.050000001 0.64999992 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992
		 0.25 0.64999992 0.30000001 0.64999992 0.35000002 0.64999992 0.40000004 0.64999992
		 0.45000005 0.64999992 0.50000006 0.64999992 0.55000007 0.64999992 0.60000008 0.64999992
		 0.6500001 0.64999992 0.70000011 0.64999992 0.95000017 0.64999992 1.000000119209 0.64999992
		 0 0.5999999 0.050000001 0.5999999 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999
		 0.25 0.5999999 0.30000001 0.5999999 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005
		 0.5999999 0.50000006 0.5999999 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001
		 0.5999999 0.70000011 0.5999999 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989
		 0.050000001 0.54999989 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989
		 0.30000001 0.54999989 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989
		 0.50000006 0.54999989 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989
		 0.70000011 0.54999989 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988
		 0.050000001 0.49999988 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988
		 0.30000001 0.49999988 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988
		 0.50000006 0.49999988 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988
		 0.70000011 0.49999988 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987
		 0.050000001 0.44999987 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987
		 0.30000001 0.44999987 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987
		 0.50000006 0.44999987 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987
		 0.70000011 0.44999987 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986
		 0.050000001 0.39999986 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986
		 0.30000001 0.39999986 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986
		 0.50000006 0.39999986 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986
		 0.70000011 0.39999986 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985
		 0.050000001 0.34999985 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985
		 0.30000001 0.34999985 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985
		 0.50000006 0.34999985 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985
		 0.70000011 0.34999985 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983
		 0.050000001 0.29999983 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983
		 0.30000001 0.29999983 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983
		 0.50000006 0.29999983 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983
		 0.70000011 0.29999983 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984
		 0.050000001 0.24999984 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984
		 0.30000001 0.24999984 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984
		 0.50000006 0.24999984 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984
		 0.70000011 0.24999984 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984
		 0.050000001 0.19999984 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984
		 0.30000001 0.19999984 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984
		 0.50000006 0.19999984 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984
		 0.70000011 0.19999984 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984
		 0.050000001 0.14999984 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984
		 0.30000001 0.14999984 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984
		 0.50000006 0.14999984 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984
		 0.70000011 0.14999984 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845
		 0.050000001 0.099999845 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25
		 0.099999845 0.30000001 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845
		 0.45000005 0.099999845 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845
		 0.6500001 0.099999845 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209
		 0.099999845 0 0.049999844 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844
		 0.2 0.049999844 0.25 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004
		 0.049999844 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844
		 0.60000008 0.049999844 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844
		 1.000000119209 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07
		 0.15000001 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07
		 0.35000002 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006
		 -1.5646219e-07 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07
		 0.70000011 -1.5646219e-07;
	setAttr ".uvst[0].uvsp[500:749]" 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07
		 0 0 0.15838426 1.4050773e-16 0.30901742 0.95105654 0.15838476 1 0.15063262 0 0.30901688
		 0 0.15063237 1 0 0.95105654 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116
		 0 0.99999857 0 4.1442365e-07 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239
		 1 0.50952357 0.48745704 0 1 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079
		 0.50952554 0.99999994 0.72654277 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223
		 0 0 0.29869834 0 0.82442951 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429
		 0 2.9547712e-16 0.16653505 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16
		 0.15838474 0 0.15838425 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229
		 1 0.72654295 0 1 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558
		 0.11195894 1 0.32491878 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839
		 0 0.79360545 0 0.06706205 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1
		 0.72654241 0.63769084 0 1 0 0 0.32492003 0.29311422 0.11195964 0.7377643 0.1727457
		 0.75 0.25 0.73776412 0.32725424 0.70225424 0.39694631 0.64694631 0.45225427 0.57725424
		 0.48776415 0.5 0.5 0.42274573 0.48776418 0.35305366 0.4522543 0.2977457 0.39694634
		 0.26223582 0.32725427 0.24999994 0.25 0.26223582 0.17274573 0.2977457 0.10305364
		 0.35305363 0.047745675 0.4227457 0.012235761 0.5 -1.1920929e-07 0.5772543 0.012235746
		 0.64694643 0.04774563 0.70225441 0.1030536 0.25 0.5 0.27500001 0.5 0.49981534 0.99958968
		 0.49979484 0.99958968 0.30000001 0.5 0.49983585 0.99958968 0.32500002 0.5 0.49985638
		 0.99958968 0.35000002 0.5 0.49987689 0.99958968 0.37500003 0.5 0.49989742 0.99958968
		 0.40000004 0.5 0.49991792 0.99958968 0.42500004 0.5 0.49993846 0.99958968 0.45000005
		 0.5 0.49995896 0.99958968 0.47500005 0.5 0.4999795 0.99958968 0.50000006 0.5 0.5
		 0.99958968 0.52500004 0.5 0.5000205 0.99958968 0.55000001 0.5 0.50004101 0.99958968
		 0.57499999 0.5 0.50006157 0.99958968 0.59999996 0.5 0.50008208 0.99958968 0.62499994
		 0.5 0.50010258 0.99958968 0.64999992 0.5 0.50012308 0.99958968 0.67499989 0.5 0.50014365
		 0.99958968 0.69999987 0.5 0.50016415 0.99958968 0.72499985 0.5 0.50018466 0.99958968
		 0.74999982 0.5 0.50020516 0.99958968 0.5 1 0.050000001 1 0 1 0 0.94999999 0.050000001
		 0.94999999 0.1 1 0.1 0.94999999 0.15000001 1 0.15000001 0.94999999 0.2 1 0.2 0.94999999
		 0.25 1 0.25 0.94999999 0.30000001 1 0.30000001 0.94999999 0.35000002 1 0.35000002
		 0.94999999 0.40000004 1 0.40000004 0.94999999 0.45000005 1 0.45000005 0.94999999
		 0.50000006 1 0.50000006 0.94999999 0.55000007 1 0.55000007 0.94999999 0.60000008
		 1 0.60000008 0.94999999 0.6500001 1 0.6500001 0.94999999 0.70000011 1 0.70000011
		 0.94999999 1.000000119209 1 0.95000017 1 0.95000017 0.94999999 1.000000119209 0.94999999
		 0 0.89999998 0.050000001 0.89999998 0.1 0.89999998 0.15000001 0.89999998 0.2 0.89999998
		 0.25 0.89999998 0.30000001 0.89999998 0.35000002 0.89999998 0.40000004 0.89999998
		 0.45000005 0.89999998 0.50000006 0.89999998 0.55000007 0.89999998 0.60000008 0.89999998
		 0.6500001 0.89999998 0.70000011 0.89999998 0.95000017 0.89999998 1.000000119209 0.89999998
		 0 0.84999996 0.050000001 0.84999996 0.1 0.84999996 0.15000001 0.84999996 0.2 0.84999996
		 0.25 0.84999996 0.30000001 0.84999996 0.35000002 0.84999996 0.40000004 0.84999996
		 0.45000005 0.84999996 0.50000006 0.84999996 0.55000007 0.84999996 0.60000008 0.84999996
		 0.6500001 0.84999996 0.70000011 0.84999996 0.95000017 0.84999996 1.000000119209 0.84999996
		 0 0.79999995 0.050000001 0.79999995 0.1 0.79999995 0.15000001 0.79999995 0.2 0.79999995
		 0.25 0.79999995 0.30000001 0.79999995 0.35000002 0.79999995 0.40000004 0.79999995
		 0.45000005 0.79999995 0.50000006 0.79999995 0.55000007 0.79999995 0.60000008 0.79999995
		 0.6500001 0.79999995 0.70000011 0.79999995 0.95000017 0.79999995 1.000000119209 0.79999995
		 0 0.74999994 0.050000001 0.74999994 0.1 0.74999994 0.15000001 0.74999994 0.2 0.74999994
		 0.25 0.74999994 0.30000001 0.74999994 0.35000002 0.74999994 0.40000004 0.74999994
		 0.45000005 0.74999994 0.50000006 0.74999994 0.55000007 0.74999994 0.60000008 0.74999994
		 0.6500001 0.74999994 0.70000011 0.74999994 0.95000017 0.74999994 1.000000119209 0.74999994
		 0 0.69999993 0.050000001 0.69999993 0.1 0.69999993 0.15000001 0.69999993 0.2 0.69999993
		 0.25 0.69999993 0.30000001 0.69999993 0.35000002 0.69999993 0.40000004 0.69999993;
	setAttr ".uvst[0].uvsp[750:999]" 0.45000005 0.69999993 0.50000006 0.69999993
		 0.55000007 0.69999993 0.60000008 0.69999993 0.6500001 0.69999993 0.70000011 0.69999993
		 0.95000017 0.69999993 1.000000119209 0.69999993 0 0.64999992 0.050000001 0.64999992
		 0.1 0.64999992 0.15000001 0.64999992 0.2 0.64999992 0.25 0.64999992 0.30000001 0.64999992
		 0.35000002 0.64999992 0.40000004 0.64999992 0.45000005 0.64999992 0.50000006 0.64999992
		 0.55000007 0.64999992 0.60000008 0.64999992 0.6500001 0.64999992 0.70000011 0.64999992
		 0.95000017 0.64999992 1.000000119209 0.64999992 0 0.5999999 0.050000001 0.5999999
		 0.1 0.5999999 0.15000001 0.5999999 0.2 0.5999999 0.25 0.5999999 0.30000001 0.5999999
		 0.35000002 0.5999999 0.40000004 0.5999999 0.45000005 0.5999999 0.50000006 0.5999999
		 0.55000007 0.5999999 0.60000008 0.5999999 0.6500001 0.5999999 0.70000011 0.5999999
		 0.95000017 0.5999999 1.000000119209 0.5999999 0 0.54999989 0.050000001 0.54999989
		 0.1 0.54999989 0.15000001 0.54999989 0.2 0.54999989 0.25 0.54999989 0.30000001 0.54999989
		 0.35000002 0.54999989 0.40000004 0.54999989 0.45000005 0.54999989 0.50000006 0.54999989
		 0.55000007 0.54999989 0.60000008 0.54999989 0.6500001 0.54999989 0.70000011 0.54999989
		 0.95000017 0.54999989 1.000000119209 0.54999989 0 0.49999988 0.050000001 0.49999988
		 0.1 0.49999988 0.15000001 0.49999988 0.2 0.49999988 0.25 0.49999988 0.30000001 0.49999988
		 0.35000002 0.49999988 0.40000004 0.49999988 0.45000005 0.49999988 0.50000006 0.49999988
		 0.55000007 0.49999988 0.60000008 0.49999988 0.6500001 0.49999988 0.70000011 0.49999988
		 0.95000017 0.49999988 1.000000119209 0.49999988 0 0.44999987 0.050000001 0.44999987
		 0.1 0.44999987 0.15000001 0.44999987 0.2 0.44999987 0.25 0.44999987 0.30000001 0.44999987
		 0.35000002 0.44999987 0.40000004 0.44999987 0.45000005 0.44999987 0.50000006 0.44999987
		 0.55000007 0.44999987 0.60000008 0.44999987 0.6500001 0.44999987 0.70000011 0.44999987
		 0.95000017 0.44999987 1.000000119209 0.44999987 0 0.39999986 0.050000001 0.39999986
		 0.1 0.39999986 0.15000001 0.39999986 0.2 0.39999986 0.25 0.39999986 0.30000001 0.39999986
		 0.35000002 0.39999986 0.40000004 0.39999986 0.45000005 0.39999986 0.50000006 0.39999986
		 0.55000007 0.39999986 0.60000008 0.39999986 0.6500001 0.39999986 0.70000011 0.39999986
		 0.95000017 0.39999986 1.000000119209 0.39999986 0 0.34999985 0.050000001 0.34999985
		 0.1 0.34999985 0.15000001 0.34999985 0.2 0.34999985 0.25 0.34999985 0.30000001 0.34999985
		 0.35000002 0.34999985 0.40000004 0.34999985 0.45000005 0.34999985 0.50000006 0.34999985
		 0.55000007 0.34999985 0.60000008 0.34999985 0.6500001 0.34999985 0.70000011 0.34999985
		 0.95000017 0.34999985 1.000000119209 0.34999985 0 0.29999983 0.050000001 0.29999983
		 0.1 0.29999983 0.15000001 0.29999983 0.2 0.29999983 0.25 0.29999983 0.30000001 0.29999983
		 0.35000002 0.29999983 0.40000004 0.29999983 0.45000005 0.29999983 0.50000006 0.29999983
		 0.55000007 0.29999983 0.60000008 0.29999983 0.6500001 0.29999983 0.70000011 0.29999983
		 0.95000017 0.29999983 1.000000119209 0.29999983 0 0.24999984 0.050000001 0.24999984
		 0.1 0.24999984 0.15000001 0.24999984 0.2 0.24999984 0.25 0.24999984 0.30000001 0.24999984
		 0.35000002 0.24999984 0.40000004 0.24999984 0.45000005 0.24999984 0.50000006 0.24999984
		 0.55000007 0.24999984 0.60000008 0.24999984 0.6500001 0.24999984 0.70000011 0.24999984
		 0.95000017 0.24999984 1.000000119209 0.24999984 0 0.19999984 0.050000001 0.19999984
		 0.1 0.19999984 0.15000001 0.19999984 0.2 0.19999984 0.25 0.19999984 0.30000001 0.19999984
		 0.35000002 0.19999984 0.40000004 0.19999984 0.45000005 0.19999984 0.50000006 0.19999984
		 0.55000007 0.19999984 0.60000008 0.19999984 0.6500001 0.19999984 0.70000011 0.19999984
		 0.95000017 0.19999984 1.000000119209 0.19999984 0 0.14999984 0.050000001 0.14999984
		 0.1 0.14999984 0.15000001 0.14999984 0.2 0.14999984 0.25 0.14999984 0.30000001 0.14999984
		 0.35000002 0.14999984 0.40000004 0.14999984 0.45000005 0.14999984 0.50000006 0.14999984
		 0.55000007 0.14999984 0.60000008 0.14999984 0.6500001 0.14999984 0.70000011 0.14999984
		 0.95000017 0.14999984 1.000000119209 0.14999984 0 0.099999845 0.050000001 0.099999845
		 0.1 0.099999845 0.15000001 0.099999845 0.2 0.099999845 0.25 0.099999845 0.30000001
		 0.099999845 0.35000002 0.099999845 0.40000004 0.099999845 0.45000005 0.099999845
		 0.50000006 0.099999845 0.55000007 0.099999845 0.60000008 0.099999845 0.6500001 0.099999845
		 0.70000011 0.099999845 0.95000017 0.099999845 1.000000119209 0.099999845 0 0.049999844
		 0.050000001 0.049999844 0.1 0.049999844 0.15000001 0.049999844 0.2 0.049999844 0.25
		 0.049999844 0.30000001 0.049999844 0.35000002 0.049999844 0.40000004 0.049999844
		 0.45000005 0.049999844 0.50000006 0.049999844 0.55000007 0.049999844 0.60000008 0.049999844
		 0.6500001 0.049999844 0.70000011 0.049999844 0.95000017 0.049999844 1.000000119209
		 0.049999844 0 -1.5646219e-07 0.050000001 -1.5646219e-07 0.1 -1.5646219e-07 0.15000001
		 -1.5646219e-07 0.2 -1.5646219e-07 0.25 -1.5646219e-07 0.30000001 -1.5646219e-07 0.35000002
		 -1.5646219e-07 0.40000004 -1.5646219e-07 0.45000005 -1.5646219e-07 0.50000006 -1.5646219e-07
		 0.55000007 -1.5646219e-07 0.60000008 -1.5646219e-07 0.6500001 -1.5646219e-07 0.70000011
		 -1.5646219e-07 0.95000017 -1.5646219e-07 1.000000119209 -1.5646219e-07 0 0 0.15838426
		 1.4050773e-16 0.30901742 0.95105654 0.15838476 1;
	setAttr ".uvst[0].uvsp[1000:1069]" 0.15063262 0 0.30901688 0 0.15063237 1 0 0.95105654
		 0 0 0.18460587 0 0.61803406 0.85065073 0.50952542 1 0.72654116 0 0.99999857 0 4.1442365e-07
		 1 0 0.72654247 0 0 0.29869798 0 0.82442909 0.26787239 1 0.50952357 0.48745704 0 1
		 0 0 0.15838529 0 0 0.18460587 0 0.61803424 0.85065079 0.50952554 0.99999994 0.72654277
		 0 1.000000119209 0 0 0.99999946 2.7628249e-07 0.72654223 0 0 0.29869834 0 0.82442951
		 0.26787299 0.99999994 0.50952518 0.48745716 0 1 0 0 0.15838429 0 2.9547712e-16 0.16653505
		 0 0.4596495 0.90211302 0.32491958 1 4.9568939e-07 1.4050772e-16 0.15838474 0 0.15838425
		 1 0 0.99999994 0 0 0.21701717 0 0.79360449 0.79360431 0.72654229 1 0.72654295 0 1
		 0 0 0.72654068 0.084503144 0.46646726 0 0 0.36230886 0 0.70688558 0.11195894 1 0.32491878
		 0 0 0.16653535 0 0.45964921 0.90211308 0.32491925 1 0.57658839 0 0.79360545 0 0.06706205
		 1 0 0.79360431 0 0 0.27345735 0 0.91549689 0.46646893 1 0.72654241 0.63769084 0 1
		 0 0 0.32492003 0.29311422 0.11195964;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 762 ".vt";
	setAttr ".vt[0:165]"  0.14265858 -2 -0.04635258 0.12135264 -2 -0.088167846
		 0.088167846 -2 -0.12135263 0.046352573 -2 -0.14265856 0 -2 -0.15000008 -0.046352573 -2 -0.14265855
		 -0.088167824 -2 -0.1213526 -0.12135259 -2 -0.088167816 -0.14265852 -2 -0.046352562
		 -0.15000004 -2 0 -0.14265852 -2 0.046352562 -0.12135258 -2 0.088167809 -0.088167809 -2 0.12135258
		 -0.046352562 -2 0.1426585 -4.4703485e-09 -2 0.15000002 0.046352547 -2 0.1426585 0.088167787 -2 0.12135256
		 0.12135255 -2 0.088167801 0.14265849 -2 0.04635255 0.15000001 -2 0 0.14265858 2 -0.04635258
		 0.12135264 2 -0.088167846 0.088167846 2 -0.12135263 0.046352573 2 -0.14265856 0 2 -0.15000008
		 -0.046352573 2 -0.14265855 -0.088167824 2 -0.1213526 -0.12135259 2 -0.088167816 -0.14265852 2 -0.046352562
		 -0.15000004 2 0 -0.14265852 2 0.046352562 -0.12135258 2 0.088167809 -0.088167809 2 0.12135258
		 -0.046352562 2 0.1426585 -4.4703485e-09 2 0.15000002 0.046352547 2 0.1426585 0.088167787 2 0.12135256
		 0.12135255 2 0.088167801 0.14265849 2 0.04635255 0.15000001 2 0 -0.0027888119 1.46116579 0.89826292
		 -0.0027888119 1.50792933 0.8064844 -0.0027888119 1.58076513 0.7336486 -0.0027888119 1.67254364 0.68688512
		 -0.0027888119 1.77428091 0.67077154 -0.0027888119 1.87601817 0.68688512 -0.0027888119 1.96779668 0.73364866
		 -0.0027888119 2.040632486 0.80648446 -0.0027888119 2.087395906 0.89826298 -0.0027888119 2.10350943 1.000000119209
		 -0.0027888119 2.087395906 1.10173738 -0.0027888119 2.040632486 1.19351578 -0.0027888119 1.96779656 1.26635158
		 -0.0027888119 1.87601817 1.31311512 -0.0027888119 1.77428091 1.32922864 -0.0027888119 1.67254376 1.313115
		 -0.0027888119 1.58076525 1.26635158 -0.0027888119 1.50792944 1.19351578 -0.0027888119 1.4611659 1.10173738
		 -0.0027888119 1.44505239 1.000000119209 0.45642692 1.77428091 1.000000119209 0.45642692 1.77402389 0.99991667
		 0.45642692 1.77406228 0.99984133 0.45642692 1.77412212 0.99978161 0.45642692 1.77419746 0.99974322
		 0.45642692 1.77428091 0.99972999 0.45642692 1.77436435 0.99974322 0.45642692 1.77443969 0.99978161
		 0.45642692 1.77449954 0.99984133 0.45642692 1.77453792 0.99991667 0.45642692 1.77455115 1.000000119209
		 0.45642692 1.77453792 1.000083565712 0.45642692 1.77449954 1.00015890598 0.45642692 1.77443969 1.00021874905
		 0.45642692 1.77436435 1.00025713444 0.45642692 1.77428091 1.00027036667 0.45642692 1.77419746 1.00025713444
		 0.45642692 1.77412212 1.00021874905 0.45642692 1.77406228 1.00015890598 0.45642692 1.77402389 1.000083565712
		 0.45642692 1.77401066 1.000000119209 0.85595143 1.77428091 -0.27811545 0.72811574 1.77428091 -0.52900702
		 0.52900702 1.77428091 -0.72811574 0.27811542 1.77428091 -0.85595131 0 1.77428091 -0.90000039
		 -0.27811542 1.77428091 -0.85595125 -0.5290069 1.77428091 -0.72811556 -0.7281155 1.77428091 -0.52900684
		 -0.85595107 1.77428091 -0.27811536 -0.90000021 1.77428091 0 -0.85595107 1.77428091 0.27811536
		 -0.72811544 1.77428091 0.52900684 -0.52900684 1.77428091 0.72811538 -0.27811536 1.77428091 0.85595095
		 -2.6822089e-08 1.77428091 0.9000001 0.89999998 1.77428091 0 0.86060625 1.80518258 -0.27962789
		 0.73207539 1.80518258 -0.5318839 0.5318839 1.80518258 -0.73207533 0.27962789 1.80518258 -0.86060613
		 0 1.80518258 -0.90489477 -0.27962789 1.80518258 -0.86060607 -0.53188378 1.80518258 -0.73207521
		 -0.73207515 1.80518258 -0.53188372 -0.8606059 1.80518258 -0.2796278 -0.90489459 1.80518258 0
		 -0.8606059 1.80518258 0.2796278 -0.7320751 1.80518258 0.53188366 -0.53188366 1.80518258 0.73207504
		 -0.2796278 1.80518258 0.86060578 -2.6967953e-08 1.80518258 0.90489447 0.90489435 1.80518258 0
		 0.87411499 1.83305943 -0.28401718 0.74356663 1.83305943 -0.54023278 0.54023278 1.83305943 -0.74356663
		 0.28401715 1.83305943 -0.87411493 0 1.83305943 -0.91909873 -0.28401715 1.83305943 -0.87411487
		 -0.54023266 1.83305943 -0.74356645 -0.74356639 1.83305943 -0.5402326 -0.87411469 1.83305943 -0.28401706
		 -0.91909856 1.83305943 0 -0.87411469 1.83305943 0.28401706 -0.74356633 1.83305943 0.54023254
		 -0.54023254 1.83305943 0.74356627 -0.28401706 1.83305943 0.87411457 -2.7391264e-08 1.83305943 0.91909844
		 0.91909832 1.83305943 0 0.89515543 1.85518265 -0.29085362 0.76146466 1.85518265 -0.55323642
		 0.55323642 1.85518265 -0.76146466 0.29085359 1.85518265 -0.89515531 0 1.85518265 -0.94122195
		 -0.29085359 1.85518265 -0.89515525 -0.55323631 1.85518265 -0.76146448 -0.76146442 1.85518265 -0.55323625
		 -0.89515507 1.85518265 -0.2908535 -0.94122171 1.85518265 0 -0.89515507 1.85518265 0.2908535
		 -0.76146436 1.85518265 0.55323619 -0.55323619 1.85518265 0.7614643 -0.2908535 1.85518265 0.89515495
		 -2.8050586e-08 1.85518265 0.94122159 0.94122148 1.85518265 0 0.92166787 1.86938655 -0.29946804
		 0.78401756 1.86938655 -0.56962204 0.56962204 1.86938655 -0.7840175 0.29946801 1.86938655 -0.92166775
		 0 1.86938655 -0.96909881 -0.29946801 1.86938655 -0.9216677 -0.56962192 1.86938655 -0.78401732
		 -0.78401726 1.86938655 -0.56962186 -0.92166752 1.86938655 -0.29946792 -0.96909857 1.86938655 0
		 -0.92166752 1.86938655 0.29946792 -0.78401721 1.86938655 0.5696218 -0.5696218 1.86938655 0.78401715
		 -0.29946792 1.86938655 0.9216674 -2.8881381e-08 1.86938655 0.96909845 0.96909833 1.86938655 0
		 0.95105714 1.87428093 -0.30901718 0.80901754 1.87428093 -0.5877856 0.5877856 1.87428093 -0.80901748
		 0.30901715 1.87428093 -0.95105702 0 1.87428093 -1.000000476837;
	setAttr ".vt[166:331]" -0.30901715 1.87428093 -0.95105696 -0.58778548 1.87428093 -0.8090173
		 -0.80901724 1.87428093 -0.58778542 -0.95105678 1.87428093 -0.30901706 -1.000000238419 1.87428093 0
		 -0.95105678 1.87428093 0.30901706 -0.80901718 1.87428093 0.58778536 -0.58778536 1.87428093 0.80901712
		 -0.30901706 1.87428093 0.95105666 -2.9802322e-08 1.87428093 1.000000119209 1 1.87428093 0
		 0.9804464 1.86938655 -0.31856632 0.83401752 1.86938655 -0.60594916 0.60594916 1.86938655 -0.83401746
		 0.31856629 1.86938655 -0.98044628 0 1.86938655 -1.030902147 -0.31856629 1.86938655 -0.98044622
		 -0.60594904 1.86938655 -0.83401728 -0.83401722 1.86938655 -0.60594898 -0.98044604 1.86938655 -0.3185662
		 -1.030901909 1.86938655 0 -0.98044604 1.86938655 0.3185662 -0.83401716 1.86938655 0.60594893
		 -0.60594893 1.86938655 0.8340171 -0.3185662 1.86938655 0.98044592 -3.0723264e-08 1.86938655 1.03090179
		 1.03090167 1.86938655 0 1.0069588423 1.85518265 -0.32718074 0.85657042 1.85518265 -0.62233478
		 0.62233478 1.85518265 -0.8565703 0.32718071 1.85518265 -1.0069587231 0 1.85518265 -1.058779001
		 -0.32718071 1.85518265 -1.0069587231 -0.62233466 1.85518265 -0.85657012 -0.85657007 1.85518265 -0.6223346
		 -1.0069584846 1.85518265 -0.32718062 -1.058778763 1.85518265 0 -1.0069584846 1.85518265 0.32718062
		 -0.85657001 1.85518265 0.62233454 -0.62233454 1.85518265 0.85656995 -0.32718062 1.85518265 1.0069583654
		 -3.1554059e-08 1.85518265 1.058778644 1.058778524 1.85518265 0 1.027999282 1.83305943 -0.33401722
		 0.87446845 1.83305943 -0.63533849 0.63533849 1.83305943 -0.87446839 0.33401719 1.83305943 -1.027999163
		 0 1.83305943 -1.080902219 -0.33401719 1.83305943 -1.027999163 -0.63533837 1.83305943 -0.87446821
		 -0.87446815 1.83305943 -0.63533831 -1.027998924 1.83305943 -0.33401707 -1.08090198 1.83305943 0
		 -1.027998924 1.83305943 0.33401707 -0.87446809 1.83305943 0.63533825 -0.63533825 1.83305943 0.87446803
		 -0.33401707 1.83305943 1.027998805 -3.2213382e-08 1.83305943 1.080901861 1.080901742 1.83305943 0
		 1.041508079 1.80518258 -0.33840647 0.88595968 1.80518258 -0.64368731 0.64368731 1.80518258 -0.88595963
		 0.33840641 1.80518258 -1.041507959 0 1.80518258 -1.095106125 -0.33840641 1.80518258 -1.04150784
		 -0.64368719 1.80518258 -0.88595939 -0.88595933 1.80518258 -0.64368713 -1.041507602 1.80518258 -0.33840632
		 -1.095105886 1.80518258 0 -1.041507602 1.80518258 0.33840632 -0.88595927 1.80518258 0.64368707
		 -0.64368707 1.80518258 0.88595921 -0.33840632 1.80518258 1.041507483 -3.2636692e-08 1.80518258 1.095105767
		 1.095105648 1.80518258 0 1.046162844 1.77428091 -0.33991891 0.88991934 1.77428091 -0.64656419
		 0.64656419 1.77428091 -0.88991922 0.33991888 1.77428091 -1.046162724 0 1.77428091 -1.1000005
		 -0.33991888 1.77428091 -1.046162724 -0.64656407 1.77428091 -0.88991904 -0.88991898 1.77428091 -0.64656401
		 -1.046162486 1.77428091 -0.33991876 -1.10000026 1.77428091 0 -1.046162486 1.77428091 0.33991876
		 -0.88991892 1.77428091 0.64656389 -0.64656389 1.77428091 0.88991886 -0.33991876 1.77428091 1.046162367
		 -3.2782555e-08 1.77428091 1.10000014 1.10000002 1.77428091 0 1.041508079 1.74337924 -0.33840647
		 0.88595968 1.74337924 -0.64368731 0.64368731 1.74337924 -0.88595963 0.33840641 1.74337924 -1.041507959
		 0 1.74337924 -1.095106125 -0.33840641 1.74337924 -1.04150784 -0.64368719 1.74337924 -0.88595939
		 -0.88595933 1.74337924 -0.64368713 -1.041507602 1.74337924 -0.33840632 -1.095105886 1.74337924 0
		 -1.041507602 1.74337924 0.33840632 -0.88595927 1.74337924 0.64368707 -0.64368707 1.74337924 0.88595921
		 -0.33840632 1.74337924 1.041507483 -3.2636692e-08 1.74337924 1.095105767 1.095105648 1.74337924 0
		 1.027999282 1.71550238 -0.33401722 0.87446845 1.71550238 -0.63533849 0.63533849 1.71550238 -0.87446839
		 0.33401719 1.71550238 -1.027999163 0 1.71550238 -1.080902219 -0.33401719 1.71550238 -1.027999163
		 -0.63533837 1.71550238 -0.87446821 -0.87446815 1.71550238 -0.63533831 -1.027998924 1.71550238 -0.33401707
		 -1.08090198 1.71550238 0 -1.027998924 1.71550238 0.33401707 -0.87446809 1.71550238 0.63533825
		 -0.63533825 1.71550238 0.87446803 -0.33401707 1.71550238 1.027998805 -3.2213382e-08 1.71550238 1.080901861
		 1.080901742 1.71550238 0 1.0069588423 1.69337916 -0.32718074 0.85657042 1.69337916 -0.62233478
		 0.62233478 1.69337916 -0.8565703 0.32718071 1.69337916 -1.0069587231 0 1.69337916 -1.058779001
		 -0.32718071 1.69337916 -1.0069587231 -0.62233466 1.69337916 -0.85657012 -0.85657007 1.69337916 -0.6223346
		 -1.0069584846 1.69337916 -0.32718062 -1.058778763 1.69337916 0 -1.0069584846 1.69337916 0.32718062
		 -0.85657001 1.69337916 0.62233454 -0.62233454 1.69337916 0.85656995 -0.32718062 1.69337916 1.0069583654
		 -3.1554059e-08 1.69337916 1.058778644 1.058778524 1.69337916 0 0.9804464 1.67917526 -0.31856632
		 0.83401752 1.67917526 -0.60594916 0.60594916 1.67917526 -0.83401746 0.31856629 1.67917526 -0.98044628
		 0 1.67917526 -1.030902147 -0.31856629 1.67917526 -0.98044622 -0.60594904 1.67917526 -0.83401728
		 -0.83401722 1.67917526 -0.60594898 -0.98044604 1.67917526 -0.3185662 -1.030901909 1.67917526 0
		 -0.98044604 1.67917526 0.3185662 -0.83401716 1.67917526 0.60594893 -0.60594893 1.67917526 0.8340171
		 -0.3185662 1.67917526 0.98044592 -3.0723264e-08 1.67917526 1.03090179 1.03090167 1.67917526 0
		 0.95105714 1.67428088 -0.30901718 0.80901754 1.67428088 -0.5877856 0.5877856 1.67428088 -0.80901748
		 0.30901715 1.67428088 -0.95105702 0 1.67428088 -1.000000476837 -0.30901715 1.67428088 -0.95105696
		 -0.58778548 1.67428088 -0.8090173 -0.80901724 1.67428088 -0.58778542 -0.95105678 1.67428088 -0.30901706
		 -1.000000238419 1.67428088 0 -0.95105678 1.67428088 0.30901706;
	setAttr ".vt[332:497]" -0.80901718 1.67428088 0.58778536 -0.58778536 1.67428088 0.80901712
		 -0.30901706 1.67428088 0.95105666 -2.9802322e-08 1.67428088 1.000000119209 1 1.67428088 0
		 0.92166781 1.67917526 -0.29946801 0.7840175 1.67917526 -0.56962198 0.56962198 1.67917526 -0.78401744
		 0.29946798 1.67917526 -0.9216677 0 1.67917526 -0.96909875 -0.29946798 1.67917526 -0.92166764
		 -0.56962192 1.67917526 -0.78401726 -0.78401721 1.67917526 -0.56962186 -0.92166746 1.67917526 -0.29946789
		 -0.96909851 1.67917526 0 -0.92166746 1.67917526 0.29946789 -0.78401715 1.67917526 0.5696218
		 -0.5696218 1.67917526 0.78401709 -0.29946789 1.67917526 0.92166734 -2.8881379e-08 1.67917526 0.96909839
		 0.96909827 1.67917526 0 0.89515537 1.69337916 -0.29085359 0.76146466 1.69337916 -0.55323642
		 0.55323642 1.69337916 -0.7614646 0.29085356 1.69337916 -0.89515525 0 1.69337916 -0.94122189
		 -0.29085356 1.69337916 -0.89515519 -0.55323631 1.69337916 -0.76146442 -0.76146436 1.69337916 -0.55323625
		 -0.89515501 1.69337916 -0.29085347 -0.94122165 1.69337916 0 -0.89515501 1.69337916 0.29085347
		 -0.7614643 1.69337916 0.55323619 -0.55323619 1.69337916 0.76146424 -0.29085347 1.69337916 0.89515489
		 -2.8050584e-08 1.69337916 0.94122154 0.94122142 1.69337916 0 0.87411493 1.71550238 -0.28401715
		 0.74356663 1.71550238 -0.54023272 0.54023272 1.71550238 -0.74356657 0.28401712 1.71550238 -0.87411487
		 0 1.71550238 -0.91909868 -0.28401712 1.71550238 -0.87411481 -0.5402326 1.71550238 -0.74356639
		 -0.74356633 1.71550238 -0.54023254 -0.87411463 1.71550238 -0.28401706 -0.9190985 1.71550238 0
		 -0.87411463 1.71550238 0.28401706 -0.74356627 1.71550238 0.54023248 -0.54023248 1.71550238 0.74356622
		 -0.28401706 1.71550238 0.87411451 -2.7391263e-08 1.71550238 0.91909838 0.91909826 1.71550238 0
		 0.86060619 1.74337924 -0.27962789 0.73207533 1.74337924 -0.53188384 0.53188384 1.74337924 -0.73207527
		 0.27962786 1.74337924 -0.86060607 0 1.74337924 -0.90489471 -0.27962786 1.74337924 -0.86060601
		 -0.53188372 1.74337924 -0.73207515 -0.7320751 1.74337924 -0.53188366 -0.86060584 1.74337924 -0.27962777
		 -0.90489453 1.74337924 0 -0.86060584 1.74337924 0.27962777 -0.73207504 1.74337924 0.5318836
		 -0.5318836 1.74337924 0.73207498 -0.27962777 1.74337924 0.86060572 -2.6967951e-08 1.74337924 0.90489441
		 0.90489429 1.74337924 0 -0.0027888119 -2.087115288 0.89826292 -0.0027888119 -2.040351629 0.8064844
		 -0.0027888119 -1.96751583 0.7336486 -0.0027888119 -1.87573731 0.68688512 -0.0027888119 -1.77400005 0.67077154
		 -0.0027888119 -1.67226279 0.68688512 -0.0027888119 -1.58048427 0.73364866 -0.0027888119 -1.50764847 0.80648446
		 -0.0027888119 -1.46088505 0.89826298 -0.0027888119 -1.44477141 1.000000119209 -0.0027888119 -1.46088505 1.10173738
		 -0.0027888119 -1.50764859 1.19351578 -0.0027888119 -1.58048439 1.26635158 -0.0027888119 -1.67226279 1.31311512
		 -0.0027888119 -1.77400005 1.32922864 -0.0027888119 -1.87573719 1.313115 -0.0027888119 -1.96751571 1.26635158
		 -0.0027888119 -2.040351391 1.19351578 -0.0027888119 -2.087115049 1.10173738 -0.0027888119 -2.10322857 1.000000119209
		 0.45642692 -1.77400005 1.000000119209 0.45642692 -1.77425706 0.99991667 0.45642692 -1.77421868 0.99984133
		 0.45642692 -1.77415884 0.99978161 0.45642692 -1.7740835 0.99974322 0.45642692 -1.77400005 0.99972999
		 0.45642692 -1.7739166 0.99974322 0.45642692 -1.77384126 0.99978161 0.45642692 -1.77378142 0.99984133
		 0.45642692 -1.77374303 0.99991667 0.45642692 -1.7737298 1.000000119209 0.45642692 -1.77374303 1.000083565712
		 0.45642692 -1.77378142 1.00015890598 0.45642692 -1.77384126 1.00021874905 0.45642692 -1.7739166 1.00025713444
		 0.45642692 -1.77400005 1.00027036667 0.45642692 -1.7740835 1.00025713444 0.45642692 -1.77415884 1.00021874905
		 0.45642692 -1.77421868 1.00015890598 0.45642692 -1.77425706 1.000083565712 0.45642692 -1.7742703 1.000000119209
		 0.85595143 -1.77400005 -0.27811545 0.72811574 -1.77400005 -0.52900702 0.52900702 -1.77400005 -0.72811574
		 0.27811542 -1.77400005 -0.85595131 0 -1.77400005 -0.90000039 -0.27811542 -1.77400005 -0.85595125
		 -0.5290069 -1.77400005 -0.72811556 -0.7281155 -1.77400005 -0.52900684 -0.85595107 -1.77400005 -0.27811536
		 -0.90000021 -1.77400005 0 -0.85595107 -1.77400005 0.27811536 -0.72811544 -1.77400005 0.52900684
		 -0.52900684 -1.77400005 0.72811538 -0.27811536 -1.77400005 0.85595095 -2.6822089e-08 -1.77400005 0.9000001
		 0.89999998 -1.77400005 0 0.86060625 -1.74309838 -0.27962789 0.73207539 -1.74309838 -0.5318839
		 0.5318839 -1.74309838 -0.73207533 0.27962789 -1.74309838 -0.86060613 0 -1.74309838 -0.90489477
		 -0.27962789 -1.74309838 -0.86060607 -0.53188378 -1.74309838 -0.73207521 -0.73207515 -1.74309838 -0.53188372
		 -0.8606059 -1.74309838 -0.2796278 -0.90489459 -1.74309838 0 -0.8606059 -1.74309838 0.2796278
		 -0.7320751 -1.74309838 0.53188366 -0.53188366 -1.74309838 0.73207504 -0.2796278 -1.74309838 0.86060578
		 -2.6967953e-08 -1.74309838 0.90489447 0.90489435 -1.74309838 0 0.87411499 -1.71522152 -0.28401718
		 0.74356663 -1.71522152 -0.54023278 0.54023278 -1.71522152 -0.74356663 0.28401715 -1.71522152 -0.87411493
		 0 -1.71522152 -0.91909873 -0.28401715 -1.71522152 -0.87411487 -0.54023266 -1.71522152 -0.74356645
		 -0.74356639 -1.71522152 -0.5402326 -0.87411469 -1.71522152 -0.28401706 -0.91909856 -1.71522152 0
		 -0.87411469 -1.71522152 0.28401706 -0.74356633 -1.71522152 0.54023254 -0.54023254 -1.71522152 0.74356627
		 -0.28401706 -1.71522152 0.87411457 -2.7391264e-08 -1.71522152 0.91909844 0.91909832 -1.71522152 0
		 0.89515543 -1.69309831 -0.29085362 0.76146466 -1.69309831 -0.55323642 0.55323642 -1.69309831 -0.76146466
		 0.29085359 -1.69309831 -0.89515531 0 -1.69309831 -0.94122195 -0.29085359 -1.69309831 -0.89515525
		 -0.55323631 -1.69309831 -0.76146448 -0.76146442 -1.69309831 -0.55323625;
	setAttr ".vt[498:663]" -0.89515507 -1.69309831 -0.2908535 -0.94122171 -1.69309831 0
		 -0.89515507 -1.69309831 0.2908535 -0.76146436 -1.69309831 0.55323619 -0.55323619 -1.69309831 0.7614643
		 -0.2908535 -1.69309831 0.89515495 -2.8050586e-08 -1.69309831 0.94122159 0.94122148 -1.69309831 0
		 0.92166787 -1.6788944 -0.29946804 0.78401756 -1.6788944 -0.56962204 0.56962204 -1.6788944 -0.7840175
		 0.29946801 -1.6788944 -0.92166775 0 -1.6788944 -0.96909881 -0.29946801 -1.6788944 -0.9216677
		 -0.56962192 -1.6788944 -0.78401732 -0.78401726 -1.6788944 -0.56962186 -0.92166752 -1.6788944 -0.29946792
		 -0.96909857 -1.6788944 0 -0.92166752 -1.6788944 0.29946792 -0.78401721 -1.6788944 0.5696218
		 -0.5696218 -1.6788944 0.78401715 -0.29946792 -1.6788944 0.9216674 -2.8881381e-08 -1.6788944 0.96909845
		 0.96909833 -1.6788944 0 0.95105714 -1.67400002 -0.30901718 0.80901754 -1.67400002 -0.5877856
		 0.5877856 -1.67400002 -0.80901748 0.30901715 -1.67400002 -0.95105702 0 -1.67400002 -1.000000476837
		 -0.30901715 -1.67400002 -0.95105696 -0.58778548 -1.67400002 -0.8090173 -0.80901724 -1.67400002 -0.58778542
		 -0.95105678 -1.67400002 -0.30901706 -1.000000238419 -1.67400002 0 -0.95105678 -1.67400002 0.30901706
		 -0.80901718 -1.67400002 0.58778536 -0.58778536 -1.67400002 0.80901712 -0.30901706 -1.67400002 0.95105666
		 -2.9802322e-08 -1.67400002 1.000000119209 1 -1.67400002 0 0.9804464 -1.6788944 -0.31856632
		 0.83401752 -1.6788944 -0.60594916 0.60594916 -1.6788944 -0.83401746 0.31856629 -1.6788944 -0.98044628
		 0 -1.6788944 -1.030902147 -0.31856629 -1.6788944 -0.98044622 -0.60594904 -1.6788944 -0.83401728
		 -0.83401722 -1.6788944 -0.60594898 -0.98044604 -1.6788944 -0.3185662 -1.030901909 -1.6788944 0
		 -0.98044604 -1.6788944 0.3185662 -0.83401716 -1.6788944 0.60594893 -0.60594893 -1.6788944 0.8340171
		 -0.3185662 -1.6788944 0.98044592 -3.0723264e-08 -1.6788944 1.03090179 1.03090167 -1.6788944 0
		 1.0069588423 -1.69309831 -0.32718074 0.85657042 -1.69309831 -0.62233478 0.62233478 -1.69309831 -0.8565703
		 0.32718071 -1.69309831 -1.0069587231 0 -1.69309831 -1.058779001 -0.32718071 -1.69309831 -1.0069587231
		 -0.62233466 -1.69309831 -0.85657012 -0.85657007 -1.69309831 -0.6223346 -1.0069584846 -1.69309831 -0.32718062
		 -1.058778763 -1.69309831 0 -1.0069584846 -1.69309831 0.32718062 -0.85657001 -1.69309831 0.62233454
		 -0.62233454 -1.69309831 0.85656995 -0.32718062 -1.69309831 1.0069583654 -3.1554059e-08 -1.69309831 1.058778644
		 1.058778524 -1.69309831 0 1.027999282 -1.71522152 -0.33401722 0.87446845 -1.71522152 -0.63533849
		 0.63533849 -1.71522152 -0.87446839 0.33401719 -1.71522152 -1.027999163 0 -1.71522152 -1.080902219
		 -0.33401719 -1.71522152 -1.027999163 -0.63533837 -1.71522152 -0.87446821 -0.87446815 -1.71522152 -0.63533831
		 -1.027998924 -1.71522152 -0.33401707 -1.08090198 -1.71522152 0 -1.027998924 -1.71522152 0.33401707
		 -0.87446809 -1.71522152 0.63533825 -0.63533825 -1.71522152 0.87446803 -0.33401707 -1.71522152 1.027998805
		 -3.2213382e-08 -1.71522152 1.080901861 1.080901742 -1.71522152 0 1.041508079 -1.74309838 -0.33840647
		 0.88595968 -1.74309838 -0.64368731 0.64368731 -1.74309838 -0.88595963 0.33840641 -1.74309838 -1.041507959
		 0 -1.74309838 -1.095106125 -0.33840641 -1.74309838 -1.04150784 -0.64368719 -1.74309838 -0.88595939
		 -0.88595933 -1.74309838 -0.64368713 -1.041507602 -1.74309838 -0.33840632 -1.095105886 -1.74309838 0
		 -1.041507602 -1.74309838 0.33840632 -0.88595927 -1.74309838 0.64368707 -0.64368707 -1.74309838 0.88595921
		 -0.33840632 -1.74309838 1.041507483 -3.2636692e-08 -1.74309838 1.095105767 1.095105648 -1.74309838 0
		 1.046162844 -1.77400005 -0.33991891 0.88991934 -1.77400005 -0.64656419 0.64656419 -1.77400005 -0.88991922
		 0.33991888 -1.77400005 -1.046162724 0 -1.77400005 -1.1000005 -0.33991888 -1.77400005 -1.046162724
		 -0.64656407 -1.77400005 -0.88991904 -0.88991898 -1.77400005 -0.64656401 -1.046162486 -1.77400005 -0.33991876
		 -1.10000026 -1.77400005 0 -1.046162486 -1.77400005 0.33991876 -0.88991892 -1.77400005 0.64656389
		 -0.64656389 -1.77400005 0.88991886 -0.33991876 -1.77400005 1.046162367 -3.2782555e-08 -1.77400005 1.10000014
		 1.10000002 -1.77400005 0 1.041508079 -1.80490172 -0.33840647 0.88595968 -1.80490172 -0.64368731
		 0.64368731 -1.80490172 -0.88595963 0.33840641 -1.80490172 -1.041507959 0 -1.80490172 -1.095106125
		 -0.33840641 -1.80490172 -1.04150784 -0.64368719 -1.80490172 -0.88595939 -0.88595933 -1.80490172 -0.64368713
		 -1.041507602 -1.80490172 -0.33840632 -1.095105886 -1.80490172 0 -1.041507602 -1.80490172 0.33840632
		 -0.88595927 -1.80490172 0.64368707 -0.64368707 -1.80490172 0.88595921 -0.33840632 -1.80490172 1.041507483
		 -3.2636692e-08 -1.80490172 1.095105767 1.095105648 -1.80490172 0 1.027999282 -1.83277857 -0.33401722
		 0.87446845 -1.83277857 -0.63533849 0.63533849 -1.83277857 -0.87446839 0.33401719 -1.83277857 -1.027999163
		 0 -1.83277857 -1.080902219 -0.33401719 -1.83277857 -1.027999163 -0.63533837 -1.83277857 -0.87446821
		 -0.87446815 -1.83277857 -0.63533831 -1.027998924 -1.83277857 -0.33401707 -1.08090198 -1.83277857 0
		 -1.027998924 -1.83277857 0.33401707 -0.87446809 -1.83277857 0.63533825 -0.63533825 -1.83277857 0.87446803
		 -0.33401707 -1.83277857 1.027998805 -3.2213382e-08 -1.83277857 1.080901861 1.080901742 -1.83277857 0
		 1.0069588423 -1.85490179 -0.32718074 0.85657042 -1.85490179 -0.62233478 0.62233478 -1.85490179 -0.8565703
		 0.32718071 -1.85490179 -1.0069587231 0 -1.85490179 -1.058779001 -0.32718071 -1.85490179 -1.0069587231
		 -0.62233466 -1.85490179 -0.85657012 -0.85657007 -1.85490179 -0.6223346 -1.0069584846 -1.85490179 -0.32718062
		 -1.058778763 -1.85490179 0 -1.0069584846 -1.85490179 0.32718062 -0.85657001 -1.85490179 0.62233454
		 -0.62233454 -1.85490179 0.85656995 -0.32718062 -1.85490179 1.0069583654;
	setAttr ".vt[664:761]" -3.1554059e-08 -1.85490179 1.058778644 1.058778524 -1.85490179 0
		 0.9804464 -1.8691057 -0.31856632 0.83401752 -1.8691057 -0.60594916 0.60594916 -1.8691057 -0.83401746
		 0.31856629 -1.8691057 -0.98044628 0 -1.8691057 -1.030902147 -0.31856629 -1.8691057 -0.98044622
		 -0.60594904 -1.8691057 -0.83401728 -0.83401722 -1.8691057 -0.60594898 -0.98044604 -1.8691057 -0.3185662
		 -1.030901909 -1.8691057 0 -0.98044604 -1.8691057 0.3185662 -0.83401716 -1.8691057 0.60594893
		 -0.60594893 -1.8691057 0.8340171 -0.3185662 -1.8691057 0.98044592 -3.0723264e-08 -1.8691057 1.03090179
		 1.03090167 -1.8691057 0 0.95105714 -1.87400007 -0.30901718 0.80901754 -1.87400007 -0.5877856
		 0.5877856 -1.87400007 -0.80901748 0.30901715 -1.87400007 -0.95105702 0 -1.87400007 -1.000000476837
		 -0.30901715 -1.87400007 -0.95105696 -0.58778548 -1.87400007 -0.8090173 -0.80901724 -1.87400007 -0.58778542
		 -0.95105678 -1.87400007 -0.30901706 -1.000000238419 -1.87400007 0 -0.95105678 -1.87400007 0.30901706
		 -0.80901718 -1.87400007 0.58778536 -0.58778536 -1.87400007 0.80901712 -0.30901706 -1.87400007 0.95105666
		 -2.9802322e-08 -1.87400007 1.000000119209 1 -1.87400007 0 0.92166781 -1.8691057 -0.29946801
		 0.7840175 -1.8691057 -0.56962198 0.56962198 -1.8691057 -0.78401744 0.29946798 -1.8691057 -0.9216677
		 0 -1.8691057 -0.96909875 -0.29946798 -1.8691057 -0.92166764 -0.56962192 -1.8691057 -0.78401726
		 -0.78401721 -1.8691057 -0.56962186 -0.92166746 -1.8691057 -0.29946789 -0.96909851 -1.8691057 0
		 -0.92166746 -1.8691057 0.29946789 -0.78401715 -1.8691057 0.5696218 -0.5696218 -1.8691057 0.78401709
		 -0.29946789 -1.8691057 0.92166734 -2.8881379e-08 -1.8691057 0.96909839 0.96909827 -1.8691057 0
		 0.89515537 -1.85490179 -0.29085359 0.76146466 -1.85490179 -0.55323642 0.55323642 -1.85490179 -0.7614646
		 0.29085356 -1.85490179 -0.89515525 0 -1.85490179 -0.94122189 -0.29085356 -1.85490179 -0.89515519
		 -0.55323631 -1.85490179 -0.76146442 -0.76146436 -1.85490179 -0.55323625 -0.89515501 -1.85490179 -0.29085347
		 -0.94122165 -1.85490179 0 -0.89515501 -1.85490179 0.29085347 -0.7614643 -1.85490179 0.55323619
		 -0.55323619 -1.85490179 0.76146424 -0.29085347 -1.85490179 0.89515489 -2.8050584e-08 -1.85490179 0.94122154
		 0.94122142 -1.85490179 0 0.87411493 -1.83277857 -0.28401715 0.74356663 -1.83277857 -0.54023272
		 0.54023272 -1.83277857 -0.74356657 0.28401712 -1.83277857 -0.87411487 0 -1.83277857 -0.91909868
		 -0.28401712 -1.83277857 -0.87411481 -0.5402326 -1.83277857 -0.74356639 -0.74356633 -1.83277857 -0.54023254
		 -0.87411463 -1.83277857 -0.28401706 -0.9190985 -1.83277857 0 -0.87411463 -1.83277857 0.28401706
		 -0.74356627 -1.83277857 0.54023248 -0.54023248 -1.83277857 0.74356622 -0.28401706 -1.83277857 0.87411451
		 -2.7391263e-08 -1.83277857 0.91909838 0.91909826 -1.83277857 0 0.86060619 -1.80490172 -0.27962789
		 0.73207533 -1.80490172 -0.53188384 0.53188384 -1.80490172 -0.73207527 0.27962786 -1.80490172 -0.86060607
		 0 -1.80490172 -0.90489471 -0.27962786 -1.80490172 -0.86060601 -0.53188372 -1.80490172 -0.73207515
		 -0.7320751 -1.80490172 -0.53188366 -0.86060584 -1.80490172 -0.27962777 -0.90489453 -1.80490172 0
		 -0.86060584 -1.80490172 0.27962777 -0.73207504 -1.80490172 0.5318836 -0.5318836 -1.80490172 0.73207498
		 -0.27962777 -1.80490172 0.86060572 -2.6967951e-08 -1.80490172 0.90489441 0.90489429 -1.80490172 0;
	setAttr -s 1494 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0
		 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0
		 56 57 0 57 58 0 58 59 0 59 40 0 40 61 1 41 62 1 42 63 1 43 64 1 44 65 1 45 66 1 46 67 1
		 47 68 1 48 69 1 49 70 1 50 71 1 51 72 1 52 73 1 53 74 1 54 75 1 55 76 1 56 77 1 57 78 1
		 58 79 1 59 80 1 61 60 0 62 60 0 63 60 0 64 60 0 65 60 0 66 60 0 67 60 0 68 60 0 69 60 0
		 70 60 0 71 60 0 72 60 0 73 60 0 74 60 0 75 60 0 76 60 0 77 60 0 78 60 0 79 60 0 80 60 0
		 62 61 0 63 62 0 64 63 0 65 64 0 66 65 0 67 66 0 68 67 0 69 68 0 70 69 0 71 70 0 72 71 0
		 73 72 0 74 73 0 75 74 0 76 75 0 77 76 0 78 77 0 79 78 0 80 79 0 61 80 0 81 82 1 82 83 1
		 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1
		 94 95 1 96 81 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 105 1 105 106 1 106 107 1 107 108 1;
	setAttr ".ed[166:331]" 108 109 1 109 110 1 110 111 1 112 97 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 120 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 128 113 1 129 130 1 130 131 1 131 132 1 132 133 1 133 134 1
		 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 140 1 140 141 1 141 142 1 142 143 1
		 144 129 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1 151 152 1 152 153 1
		 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 160 145 1 161 162 1 162 163 1
		 163 164 1 164 165 1 165 166 1 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 176 161 1 177 178 1 178 179 1 179 180 1 180 181 1 181 182 1
		 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1
		 192 177 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1
		 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 208 193 1 209 210 1 210 211 1
		 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1 217 218 1 218 219 1 219 220 1
		 220 221 1 221 222 1 222 223 1 224 209 1 225 226 1 226 227 1 227 228 1 228 229 1 229 230 1
		 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1 235 236 1 236 237 1 237 238 1 238 239 1
		 240 225 1 241 242 1 242 243 1 243 244 1 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1
		 249 250 1 250 251 1 251 252 1 252 253 1 253 254 1 254 255 1 256 241 1 257 258 1 258 259 1
		 259 260 1 260 261 1 261 262 1 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1
		 268 269 1 269 270 1 270 271 1 272 257 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1
		 278 279 1 279 280 1 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1;
	setAttr ".ed[332:497]" 285 286 1 286 287 1 288 273 1 289 290 1 290 291 1 291 292 1
		 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1 298 299 1 299 300 1 300 301 1
		 301 302 1 302 303 1 304 289 1 305 306 1 306 307 1 307 308 1 308 309 1 309 310 1 310 311 1
		 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 317 1 317 318 1 318 319 1 320 305 1
		 321 322 1 322 323 1 323 324 1 324 325 1 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1
		 330 331 1 331 332 1 332 333 1 333 334 1 334 335 1 336 321 1 337 338 1 338 339 1 339 340 1
		 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1 347 348 1 348 349 1
		 349 350 1 350 351 1 352 337 1 353 354 1 354 355 1 355 356 1 356 357 1 357 358 1 358 359 1
		 359 360 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1 365 366 1 366 367 1 368 353 1
		 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1 374 375 1 375 376 1 376 377 1 377 378 1
		 378 379 1 379 380 1 380 381 1 381 382 1 382 383 1 384 369 1 385 386 1 386 387 1 387 388 1
		 388 389 1 389 390 1 390 391 1 391 392 1 392 393 1 393 394 1 394 395 1 395 396 1 396 397 1
		 397 398 1 398 399 1 400 385 1 81 97 1 82 98 1 83 99 1 84 100 1 85 101 1 86 102 1
		 87 103 1 88 104 1 89 105 1 90 106 1 91 107 1 92 108 1 93 109 1 94 110 1 95 111 0
		 96 112 0 97 113 1 98 114 1 99 115 1 100 116 1 101 117 1 102 118 1 103 119 1 104 120 1
		 105 121 1 106 122 1 107 123 1 108 124 1 109 125 1 110 126 1 111 127 0 112 128 0 113 129 1
		 114 130 1 115 131 1 116 132 1 117 133 1 118 134 1 119 135 1 120 136 1 121 137 1 122 138 1
		 123 139 1 124 140 1 125 141 1 126 142 1 127 143 0 128 144 0 129 145 1 130 146 1 131 147 1
		 132 148 1 133 149 1 134 150 1 135 151 1 136 152 1 137 153 1 138 154 1;
	setAttr ".ed[498:663]" 139 155 1 140 156 1 141 157 1 142 158 1 143 159 0 144 160 0
		 145 161 1 146 162 1 147 163 1 148 164 1 149 165 1 150 166 1 151 167 1 152 168 1 153 169 1
		 154 170 1 155 171 1 156 172 1 157 173 1 158 174 1 159 175 0 160 176 0 161 177 1 162 178 1
		 163 179 1 164 180 1 165 181 1 166 182 1 167 183 1 168 184 1 169 185 1 170 186 1 171 187 1
		 172 188 1 173 189 1 174 190 1 175 191 0 176 192 0 177 193 1 178 194 1 179 195 1 180 196 1
		 181 197 1 182 198 1 183 199 1 184 200 1 185 201 1 186 202 1 187 203 1 188 204 1 189 205 1
		 190 206 1 191 207 0 192 208 0 193 209 1 194 210 1 195 211 1 196 212 1 197 213 1 198 214 1
		 199 215 1 200 216 1 201 217 1 202 218 1 203 219 1 204 220 1 205 221 1 206 222 1 207 223 0
		 208 224 0 209 225 1 210 226 1 211 227 1 212 228 1 213 229 1 214 230 1 215 231 1 216 232 1
		 217 233 1 218 234 1 219 235 1 220 236 1 221 237 1 222 238 1 223 239 0 224 240 0 225 241 1
		 226 242 1 227 243 1 228 244 1 229 245 1 230 246 1 231 247 1 232 248 1 233 249 1 234 250 1
		 235 251 1 236 252 1 237 253 1 238 254 1 239 255 0 240 256 0 241 257 1 242 258 1 243 259 1
		 244 260 1 245 261 1 246 262 1 247 263 1 248 264 1 249 265 1 250 266 1 251 267 1 252 268 1
		 253 269 1 254 270 1 255 271 0 256 272 0 257 273 1 258 274 1 259 275 1 260 276 1 261 277 1
		 262 278 1 263 279 1 264 280 1 265 281 1 266 282 1 267 283 1 268 284 1 269 285 1 270 286 1
		 271 287 0 272 288 0 273 289 1 274 290 1 275 291 1 276 292 1 277 293 1 278 294 1 279 295 1
		 280 296 1 281 297 1 282 298 1 283 299 1 284 300 1 285 301 1 286 302 1 287 303 0 288 304 0
		 289 305 1 290 306 1 291 307 1 292 308 1 293 309 1 294 310 1 295 311 1 296 312 1 297 313 1
		 298 314 1 299 315 1 300 316 1 301 317 1 302 318 1 303 319 0 304 320 0;
	setAttr ".ed[664:829]" 305 321 1 306 322 1 307 323 1 308 324 1 309 325 1 310 326 1
		 311 327 1 312 328 1 313 329 1 314 330 1 315 331 1 316 332 1 317 333 1 318 334 1 319 335 0
		 320 336 0 321 337 1 322 338 1 323 339 1 324 340 1 325 341 1 326 342 1 327 343 1 328 344 1
		 329 345 1 330 346 1 331 347 1 332 348 1 333 349 1 334 350 1 335 351 0 336 352 0 337 353 1
		 338 354 1 339 355 1 340 356 1 341 357 1 342 358 1 343 359 1 344 360 1 345 361 1 346 362 1
		 347 363 1 348 364 1 349 365 1 350 366 1 351 367 0 352 368 0 353 369 1 354 370 1 355 371 1
		 356 372 1 357 373 1 358 374 1 359 375 1 360 376 1 361 377 1 362 378 1 363 379 1 364 380 1
		 365 381 1 366 382 1 367 383 0 368 384 0 369 385 1 370 386 1 371 387 1 372 388 1 373 389 1
		 374 390 1 375 391 1 376 392 1 377 393 1 378 394 1 379 395 1 380 396 1 381 397 1 382 398 1
		 383 399 0 384 400 0 385 81 1 386 82 1 387 83 1 388 84 1 389 85 1 390 86 1 391 87 1
		 392 88 1 393 89 1 394 90 1 395 91 1 396 92 1 397 93 1 398 94 1 399 95 0 400 96 0
		 160 352 0 336 176 0 320 192 0 304 208 0 288 224 0 272 240 0 144 368 0 128 384 0 112 400 0
		 191 303 0 319 175 0 335 159 0 207 287 0 223 271 0 351 143 0 367 127 0 383 111 0 401 402 0
		 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0 407 408 0 408 409 0 409 410 0 410 411 0
		 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 417 0 417 418 0 418 419 0 419 420 0
		 420 401 0 401 422 1 402 423 1 403 424 1 404 425 1 405 426 1 406 427 1 407 428 1 408 429 1
		 409 430 1 410 431 1 411 432 1 412 433 1 413 434 1 414 435 1 415 436 1 416 437 1 417 438 1
		 418 439 1 419 440 1 420 441 1 422 421 0 423 421 0 424 421 0 425 421 0 426 421 0 427 421 0
		 428 421 0 429 421 0 430 421 0 431 421 0 432 421 0 433 421 0 434 421 0;
	setAttr ".ed[830:995]" 435 421 0 436 421 0 437 421 0 438 421 0 439 421 0 440 421 0
		 441 421 0 423 422 0 424 423 0 425 424 0 426 425 0 427 426 0 428 427 0 429 428 0 430 429 0
		 431 430 0 432 431 0 433 432 0 434 433 0 435 434 0 436 435 0 437 436 0 438 437 0 439 438 0
		 440 439 0 441 440 0 422 441 0 442 443 1 443 444 1 444 445 1 445 446 1 446 447 1 447 448 1
		 448 449 1 449 450 1 450 451 1 451 452 1 452 453 1 453 454 1 454 455 1 455 456 1 457 442 1
		 458 459 1 459 460 1 460 461 1 461 462 1 462 463 1 463 464 1 464 465 1 465 466 1 466 467 1
		 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1 473 458 1 474 475 1 475 476 1 476 477 1
		 477 478 1 478 479 1 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1 484 485 1 485 486 1
		 486 487 1 487 488 1 489 474 1 490 491 1 491 492 1 492 493 1 493 494 1 494 495 1 495 496 1
		 496 497 1 497 498 1 498 499 1 499 500 1 500 501 1 501 502 1 502 503 1 503 504 1 505 490 1
		 506 507 1 507 508 1 508 509 1 509 510 1 510 511 1 511 512 1 512 513 1 513 514 1 514 515 1
		 515 516 1 516 517 1 517 518 1 518 519 1 519 520 1 521 506 1 522 523 1 523 524 1 524 525 1
		 525 526 1 526 527 1 527 528 1 528 529 1 529 530 1 530 531 1 531 532 1 532 533 1 533 534 1
		 534 535 1 535 536 1 537 522 1 538 539 1 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1
		 544 545 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 551 1 551 552 1 553 538 1
		 554 555 1 555 556 1 556 557 1 557 558 1 558 559 1 559 560 1 560 561 1 561 562 1 562 563 1
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 569 554 1 570 571 1 571 572 1 572 573 1
		 573 574 1 574 575 1 575 576 1 576 577 1 577 578 1 578 579 1 579 580 1 580 581 1 581 582 1
		 582 583 1 583 584 1 585 570 1 586 587 1 587 588 1 588 589 1 589 590 1;
	setAttr ".ed[996:1161]" 590 591 1 591 592 1 592 593 1 593 594 1 594 595 1 595 596 1
		 596 597 1 597 598 1 598 599 1 599 600 1 601 586 1 602 603 1 603 604 1 604 605 1 605 606 1
		 606 607 1 607 608 1 608 609 1 609 610 1 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1
		 615 616 1 617 602 1 618 619 1 619 620 1 620 621 1 621 622 1 622 623 1 623 624 1 624 625 1
		 625 626 1 626 627 1 627 628 1 628 629 1 629 630 1 630 631 1 631 632 1 633 618 1 634 635 1
		 635 636 1 636 637 1 637 638 1 638 639 1 639 640 1 640 641 1 641 642 1 642 643 1 643 644 1
		 644 645 1 645 646 1 646 647 1 647 648 1 649 634 1 650 651 1 651 652 1 652 653 1 653 654 1
		 654 655 1 655 656 1 656 657 1 657 658 1 658 659 1 659 660 1 660 661 1 661 662 1 662 663 1
		 663 664 1 665 650 1 666 667 1 667 668 1 668 669 1 669 670 1 670 671 1 671 672 1 672 673 1
		 673 674 1 674 675 1 675 676 1 676 677 1 677 678 1 678 679 1 679 680 1 681 666 1 682 683 1
		 683 684 1 684 685 1 685 686 1 686 687 1 687 688 1 688 689 1 689 690 1 690 691 1 691 692 1
		 692 693 1 693 694 1 694 695 1 695 696 1 697 682 1 698 699 1 699 700 1 700 701 1 701 702 1
		 702 703 1 703 704 1 704 705 1 705 706 1 706 707 1 707 708 1 708 709 1 709 710 1 710 711 1
		 711 712 1 713 698 1 714 715 1 715 716 1 716 717 1 717 718 1 718 719 1 719 720 1 720 721 1
		 721 722 1 722 723 1 723 724 1 724 725 1 725 726 1 726 727 1 727 728 1 729 714 1 730 731 1
		 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 737 1 737 738 1 738 739 1 739 740 1
		 740 741 1 741 742 1 742 743 1 743 744 1 745 730 1 746 747 1 747 748 1 748 749 1 749 750 1
		 750 751 1 751 752 1 752 753 1 753 754 1 754 755 1 755 756 1 756 757 1 757 758 1 758 759 1
		 759 760 1 761 746 1 442 458 1 443 459 1 444 460 1 445 461 1 446 462 1;
	setAttr ".ed[1162:1327]" 447 463 1 448 464 1 449 465 1 450 466 1 451 467 1 452 468 1
		 453 469 1 454 470 1 455 471 1 456 472 0 457 473 0 458 474 1 459 475 1 460 476 1 461 477 1
		 462 478 1 463 479 1 464 480 1 465 481 1 466 482 1 467 483 1 468 484 1 469 485 1 470 486 1
		 471 487 1 472 488 0 473 489 0 474 490 1 475 491 1 476 492 1 477 493 1 478 494 1 479 495 1
		 480 496 1 481 497 1 482 498 1 483 499 1 484 500 1 485 501 1 486 502 1 487 503 1 488 504 0
		 489 505 0 490 506 1 491 507 1 492 508 1 493 509 1 494 510 1 495 511 1 496 512 1 497 513 1
		 498 514 1 499 515 1 500 516 1 501 517 1 502 518 1 503 519 1 504 520 0 505 521 0 506 522 1
		 507 523 1 508 524 1 509 525 1 510 526 1 511 527 1 512 528 1 513 529 1 514 530 1 515 531 1
		 516 532 1 517 533 1 518 534 1 519 535 1 520 536 0 521 537 0 522 538 1 523 539 1 524 540 1
		 525 541 1 526 542 1 527 543 1 528 544 1 529 545 1 530 546 1 531 547 1 532 548 1 533 549 1
		 534 550 1 535 551 1 536 552 0 537 553 0 538 554 1 539 555 1 540 556 1 541 557 1 542 558 1
		 543 559 1 544 560 1 545 561 1 546 562 1 547 563 1 548 564 1 549 565 1 550 566 1 551 567 1
		 552 568 0 553 569 0 554 570 1 555 571 1 556 572 1 557 573 1 558 574 1 559 575 1 560 576 1
		 561 577 1 562 578 1 563 579 1 564 580 1 565 581 1 566 582 1 567 583 1 568 584 0 569 585 0
		 570 586 1 571 587 1 572 588 1 573 589 1 574 590 1 575 591 1 576 592 1 577 593 1 578 594 1
		 579 595 1 580 596 1 581 597 1 582 598 1 583 599 1 584 600 0 585 601 0 586 602 1 587 603 1
		 588 604 1 589 605 1 590 606 1 591 607 1 592 608 1 593 609 1 594 610 1 595 611 1 596 612 1
		 597 613 1 598 614 1 599 615 1 600 616 0 601 617 0 602 618 1 603 619 1 604 620 1 605 621 1
		 606 622 1 607 623 1 608 624 1 609 625 1 610 626 1 611 627 1 612 628 1;
	setAttr ".ed[1328:1493]" 613 629 1 614 630 1 615 631 1 616 632 0 617 633 0 618 634 1
		 619 635 1 620 636 1 621 637 1 622 638 1 623 639 1 624 640 1 625 641 1 626 642 1 627 643 1
		 628 644 1 629 645 1 630 646 1 631 647 1 632 648 0 633 649 0 634 650 1 635 651 1 636 652 1
		 637 653 1 638 654 1 639 655 1 640 656 1 641 657 1 642 658 1 643 659 1 644 660 1 645 661 1
		 646 662 1 647 663 1 648 664 0 649 665 0 650 666 1 651 667 1 652 668 1 653 669 1 654 670 1
		 655 671 1 656 672 1 657 673 1 658 674 1 659 675 1 660 676 1 661 677 1 662 678 1 663 679 1
		 664 680 0 665 681 0 666 682 1 667 683 1 668 684 1 669 685 1 670 686 1 671 687 1 672 688 1
		 673 689 1 674 690 1 675 691 1 676 692 1 677 693 1 678 694 1 679 695 1 680 696 0 681 697 0
		 682 698 1 683 699 1 684 700 1 685 701 1 686 702 1 687 703 1 688 704 1 689 705 1 690 706 1
		 691 707 1 692 708 1 693 709 1 694 710 1 695 711 1 696 712 0 697 713 0 698 714 1 699 715 1
		 700 716 1 701 717 1 702 718 1 703 719 1 704 720 1 705 721 1 706 722 1 707 723 1 708 724 1
		 709 725 1 710 726 1 711 727 1 712 728 0 713 729 0 714 730 1 715 731 1 716 732 1 717 733 1
		 718 734 1 719 735 1 720 736 1 721 737 1 722 738 1 723 739 1 724 740 1 725 741 1 726 742 1
		 727 743 1 728 744 0 729 745 0 730 746 1 731 747 1 732 748 1 733 749 1 734 750 1 735 751 1
		 736 752 1 737 753 1 738 754 1 739 755 1 740 756 1 741 757 1 742 758 1 743 759 1 744 760 0
		 745 761 0 746 442 1 747 443 1 748 444 1 749 445 1 750 446 1 751 447 1 752 448 1 753 449 1
		 754 450 1 755 451 1 756 452 1 757 453 1 758 454 1 759 455 1 760 456 0 761 457 0 521 713 0
		 697 537 0 681 553 0 665 569 0 649 585 0 633 601 0 505 729 0 489 745 0 473 761 0 552 664 0
		 680 536 0 696 520 0 568 648 0 584 632 0 712 504 0 728 488 0 744 472 0;
	setAttr -s 742 -ch 2988 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81
		f 20 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61
		mu 0 20 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101
		f 4 60 81 120 -81
		mu 0 4 102 103 104 105
		f 4 61 82 121 -82
		mu 0 4 103 106 107 104
		f 4 62 83 122 -83
		mu 0 4 106 108 109 107
		f 4 63 84 123 -84
		mu 0 4 108 110 111 109
		f 4 64 85 124 -85
		mu 0 4 110 112 113 111
		f 4 65 86 125 -86
		mu 0 4 112 114 115 113
		f 4 66 87 126 -87
		mu 0 4 114 116 117 115
		f 4 67 88 127 -88
		mu 0 4 116 118 119 117
		f 4 68 89 128 -89
		mu 0 4 118 120 121 119
		f 4 69 90 129 -90
		mu 0 4 120 122 123 121
		f 4 70 91 130 -91
		mu 0 4 122 124 125 123
		f 4 71 92 131 -92
		mu 0 4 124 126 127 125
		f 4 72 93 132 -93
		mu 0 4 126 128 129 127
		f 4 73 94 133 -94
		mu 0 4 128 130 131 129
		f 4 74 95 134 -95
		mu 0 4 130 132 133 131
		f 4 75 96 135 -96
		mu 0 4 132 134 135 133
		f 4 76 97 136 -97
		mu 0 4 134 136 137 135
		f 4 77 98 137 -98
		mu 0 4 136 138 139 137
		f 4 78 99 138 -99
		mu 0 4 138 140 141 139
		f 4 79 80 139 -100
		mu 0 4 140 142 143 141
		f 3 -121 101 -101
		mu 0 3 105 104 144
		f 3 -122 102 -102
		mu 0 3 104 107 144
		f 3 -123 103 -103
		mu 0 3 107 109 144
		f 3 -124 104 -104
		mu 0 3 109 111 144
		f 3 -125 105 -105
		mu 0 3 111 113 144
		f 3 -126 106 -106
		mu 0 3 113 115 144
		f 3 -127 107 -107
		mu 0 3 115 117 144
		f 3 -128 108 -108
		mu 0 3 117 119 144
		f 3 -129 109 -109
		mu 0 3 119 121 144
		f 3 -130 110 -110
		mu 0 3 121 123 144
		f 3 -131 111 -111
		mu 0 3 123 125 144
		f 3 -132 112 -112
		mu 0 3 125 127 144
		f 3 -133 113 -113
		mu 0 3 127 129 144
		f 3 -134 114 -114
		mu 0 3 129 131 144
		f 3 -135 115 -115
		mu 0 3 131 133 144
		f 3 -136 116 -116
		mu 0 3 133 135 144
		f 3 -137 117 -117
		mu 0 3 135 137 144
		f 3 -138 118 -118
		mu 0 3 137 139 144
		f 3 -139 119 -119
		mu 0 3 139 141 144
		f 3 -140 100 -120
		mu 0 3 141 143 144
		f 4 -141 440 155 -442
		mu 0 4 145 146 147 148
		f 4 -142 441 156 -443
		mu 0 4 149 145 148 150
		f 4 -143 442 157 -444
		mu 0 4 151 149 150 152
		f 4 -144 443 158 -445
		mu 0 4 153 151 152 154
		f 4 -145 444 159 -446
		mu 0 4 155 153 154 156
		f 4 -146 445 160 -447
		mu 0 4 157 155 156 158
		f 4 -147 446 161 -448
		mu 0 4 159 157 158 160
		f 4 -148 447 162 -449
		mu 0 4 161 159 160 162
		f 4 -149 448 163 -450
		mu 0 4 163 161 162 164
		f 4 -150 449 164 -451
		mu 0 4 165 163 164 166
		f 4 -151 450 165 -452
		mu 0 4 167 165 166 168
		f 4 -152 451 166 -453
		mu 0 4 169 167 168 170
		f 4 -153 452 167 -454
		mu 0 4 171 169 170 172
		f 4 -154 453 168 -455
		mu 0 4 173 171 172 174
		f 4 -155 455 169 -441
		mu 0 4 175 176 177 178
		f 4 -156 456 170 -458
		mu 0 4 148 147 179 180
		f 4 -157 457 171 -459
		mu 0 4 150 148 180 181
		f 4 -158 458 172 -460
		mu 0 4 152 150 181 182
		f 4 -159 459 173 -461
		mu 0 4 154 152 182 183
		f 4 -160 460 174 -462
		mu 0 4 156 154 183 184
		f 4 -161 461 175 -463
		mu 0 4 158 156 184 185
		f 4 -162 462 176 -464
		mu 0 4 160 158 185 186
		f 4 -163 463 177 -465
		mu 0 4 162 160 186 187
		f 4 -164 464 178 -466
		mu 0 4 164 162 187 188
		f 4 -165 465 179 -467
		mu 0 4 166 164 188 189
		f 4 -166 466 180 -468
		mu 0 4 168 166 189 190
		f 4 -167 467 181 -469
		mu 0 4 170 168 190 191
		f 4 -168 468 182 -470
		mu 0 4 172 170 191 192
		f 4 -169 469 183 -471
		mu 0 4 174 172 192 193
		f 4 -170 471 184 -457
		mu 0 4 178 177 194 195
		f 4 -171 472 185 -474
		mu 0 4 180 179 196 197
		f 4 -172 473 186 -475
		mu 0 4 181 180 197 198
		f 4 -173 474 187 -476
		mu 0 4 182 181 198 199
		f 4 -174 475 188 -477
		mu 0 4 183 182 199 200
		f 4 -175 476 189 -478
		mu 0 4 184 183 200 201
		f 4 -176 477 190 -479
		mu 0 4 185 184 201 202
		f 4 -177 478 191 -480
		mu 0 4 186 185 202 203
		f 4 -178 479 192 -481
		mu 0 4 187 186 203 204
		f 4 -179 480 193 -482
		mu 0 4 188 187 204 205
		f 4 -180 481 194 -483
		mu 0 4 189 188 205 206
		f 4 -181 482 195 -484
		mu 0 4 190 189 206 207
		f 4 -182 483 196 -485
		mu 0 4 191 190 207 208
		f 4 -183 484 197 -486
		mu 0 4 192 191 208 209
		f 4 -184 485 198 -487
		mu 0 4 193 192 209 210
		f 4 -185 487 199 -473
		mu 0 4 195 194 211 212
		f 4 -186 488 200 -490
		mu 0 4 197 196 213 214
		f 4 -187 489 201 -491
		mu 0 4 198 197 214 215
		f 4 -188 490 202 -492
		mu 0 4 199 198 215 216
		f 4 -189 491 203 -493
		mu 0 4 200 199 216 217
		f 4 -190 492 204 -494
		mu 0 4 201 200 217 218
		f 4 -191 493 205 -495
		mu 0 4 202 201 218 219
		f 4 -192 494 206 -496
		mu 0 4 203 202 219 220
		f 4 -193 495 207 -497
		mu 0 4 204 203 220 221
		f 4 -194 496 208 -498
		mu 0 4 205 204 221 222
		f 4 -195 497 209 -499
		mu 0 4 206 205 222 223
		f 4 -196 498 210 -500
		mu 0 4 207 206 223 224
		f 4 -197 499 211 -501
		mu 0 4 208 207 224 225
		f 4 -198 500 212 -502
		mu 0 4 209 208 225 226
		f 4 -199 501 213 -503
		mu 0 4 210 209 226 227
		f 4 -200 503 214 -489
		mu 0 4 212 211 228 229
		f 4 -201 504 215 -506
		mu 0 4 214 213 230 231
		f 4 -202 505 216 -507
		mu 0 4 215 214 231 232
		f 4 -203 506 217 -508
		mu 0 4 216 215 232 233
		f 4 -204 507 218 -509
		mu 0 4 217 216 233 234
		f 4 -205 508 219 -510
		mu 0 4 218 217 234 235
		f 4 -206 509 220 -511
		mu 0 4 219 218 235 236
		f 4 -207 510 221 -512
		mu 0 4 220 219 236 237
		f 4 -208 511 222 -513
		mu 0 4 221 220 237 238
		f 4 -209 512 223 -514
		mu 0 4 222 221 238 239
		f 4 -210 513 224 -515
		mu 0 4 223 222 239 240
		f 4 -211 514 225 -516
		mu 0 4 224 223 240 241
		f 4 -212 515 226 -517
		mu 0 4 225 224 241 242
		f 4 -213 516 227 -518
		mu 0 4 226 225 242 243
		f 4 -214 517 228 -519
		mu 0 4 227 226 243 244
		f 4 -215 519 229 -505
		mu 0 4 229 228 245 246
		f 4 -216 520 230 -522
		mu 0 4 231 230 247 248
		f 4 -217 521 231 -523
		mu 0 4 232 231 248 249
		f 4 -218 522 232 -524
		mu 0 4 233 232 249 250
		f 4 -219 523 233 -525
		mu 0 4 234 233 250 251
		f 4 -220 524 234 -526
		mu 0 4 235 234 251 252
		f 4 -221 525 235 -527
		mu 0 4 236 235 252 253
		f 4 -222 526 236 -528
		mu 0 4 237 236 253 254
		f 4 -223 527 237 -529
		mu 0 4 238 237 254 255
		f 4 -224 528 238 -530
		mu 0 4 239 238 255 256
		f 4 -225 529 239 -531
		mu 0 4 240 239 256 257
		f 4 -226 530 240 -532
		mu 0 4 241 240 257 258
		f 4 -227 531 241 -533
		mu 0 4 242 241 258 259
		f 4 -228 532 242 -534
		mu 0 4 243 242 259 260
		f 4 -229 533 243 -535
		mu 0 4 244 243 260 261
		f 4 -230 535 244 -521
		mu 0 4 246 245 262 263
		f 4 -231 536 245 -538
		mu 0 4 248 247 264 265
		f 4 -232 537 246 -539
		mu 0 4 249 248 265 266
		f 4 -233 538 247 -540
		mu 0 4 250 249 266 267
		f 4 -234 539 248 -541
		mu 0 4 251 250 267 268
		f 4 -235 540 249 -542
		mu 0 4 252 251 268 269
		f 4 -236 541 250 -543
		mu 0 4 253 252 269 270
		f 4 -237 542 251 -544
		mu 0 4 254 253 270 271
		f 4 -238 543 252 -545
		mu 0 4 255 254 271 272
		f 4 -239 544 253 -546
		mu 0 4 256 255 272 273
		f 4 -240 545 254 -547
		mu 0 4 257 256 273 274
		f 4 -241 546 255 -548
		mu 0 4 258 257 274 275
		f 4 -242 547 256 -549
		mu 0 4 259 258 275 276
		f 4 -243 548 257 -550
		mu 0 4 260 259 276 277
		f 4 -244 549 258 -551
		mu 0 4 261 260 277 278
		f 4 -245 551 259 -537
		mu 0 4 263 262 279 280
		f 4 -246 552 260 -554
		mu 0 4 265 264 281 282
		f 4 -247 553 261 -555
		mu 0 4 266 265 282 283
		f 4 -248 554 262 -556
		mu 0 4 267 266 283 284
		f 4 -249 555 263 -557
		mu 0 4 268 267 284 285
		f 4 -250 556 264 -558
		mu 0 4 269 268 285 286
		f 4 -251 557 265 -559
		mu 0 4 270 269 286 287
		f 4 -252 558 266 -560
		mu 0 4 271 270 287 288
		f 4 -253 559 267 -561
		mu 0 4 272 271 288 289
		f 4 -254 560 268 -562
		mu 0 4 273 272 289 290
		f 4 -255 561 269 -563
		mu 0 4 274 273 290 291
		f 4 -256 562 270 -564
		mu 0 4 275 274 291 292
		f 4 -257 563 271 -565
		mu 0 4 276 275 292 293
		f 4 -258 564 272 -566
		mu 0 4 277 276 293 294
		f 4 -259 565 273 -567
		mu 0 4 278 277 294 295
		f 4 -260 567 274 -553
		mu 0 4 280 279 296 297
		f 4 -261 568 275 -570
		mu 0 4 282 281 298 299
		f 4 -262 569 276 -571
		mu 0 4 283 282 299 300
		f 4 -263 570 277 -572
		mu 0 4 284 283 300 301
		f 4 -264 571 278 -573
		mu 0 4 285 284 301 302
		f 4 -265 572 279 -574
		mu 0 4 286 285 302 303
		f 4 -266 573 280 -575
		mu 0 4 287 286 303 304
		f 4 -267 574 281 -576
		mu 0 4 288 287 304 305
		f 4 -268 575 282 -577
		mu 0 4 289 288 305 306
		f 4 -269 576 283 -578
		mu 0 4 290 289 306 307
		f 4 -270 577 284 -579
		mu 0 4 291 290 307 308
		f 4 -271 578 285 -580
		mu 0 4 292 291 308 309
		f 4 -272 579 286 -581
		mu 0 4 293 292 309 310
		f 4 -273 580 287 -582
		mu 0 4 294 293 310 311
		f 4 -274 581 288 -583
		mu 0 4 295 294 311 312
		f 4 -275 583 289 -569
		mu 0 4 297 296 313 314
		f 4 -276 584 290 -586
		mu 0 4 299 298 315 316
		f 4 -277 585 291 -587
		mu 0 4 300 299 316 317
		f 4 -278 586 292 -588
		mu 0 4 301 300 317 318
		f 4 -279 587 293 -589
		mu 0 4 302 301 318 319
		f 4 -280 588 294 -590
		mu 0 4 303 302 319 320
		f 4 -281 589 295 -591
		mu 0 4 304 303 320 321
		f 4 -282 590 296 -592
		mu 0 4 305 304 321 322
		f 4 -283 591 297 -593
		mu 0 4 306 305 322 323
		f 4 -284 592 298 -594
		mu 0 4 307 306 323 324
		f 4 -285 593 299 -595
		mu 0 4 308 307 324 325
		f 4 -286 594 300 -596
		mu 0 4 309 308 325 326
		f 4 -287 595 301 -597
		mu 0 4 310 309 326 327
		f 4 -288 596 302 -598
		mu 0 4 311 310 327 328
		f 4 -289 597 303 -599
		mu 0 4 312 311 328 329
		f 4 -290 599 304 -585
		mu 0 4 314 313 330 331
		f 4 -291 600 305 -602
		mu 0 4 316 315 332 333
		f 4 -292 601 306 -603
		mu 0 4 317 316 333 334
		f 4 -293 602 307 -604
		mu 0 4 318 317 334 335
		f 4 -294 603 308 -605
		mu 0 4 319 318 335 336
		f 4 -295 604 309 -606
		mu 0 4 320 319 336 337
		f 4 -296 605 310 -607
		mu 0 4 321 320 337 338
		f 4 -297 606 311 -608
		mu 0 4 322 321 338 339
		f 4 -298 607 312 -609
		mu 0 4 323 322 339 340
		f 4 -299 608 313 -610
		mu 0 4 324 323 340 341
		f 4 -300 609 314 -611
		mu 0 4 325 324 341 342
		f 4 -301 610 315 -612
		mu 0 4 326 325 342 343
		f 4 -302 611 316 -613
		mu 0 4 327 326 343 344
		f 4 -303 612 317 -614
		mu 0 4 328 327 344 345
		f 4 -304 613 318 -615
		mu 0 4 329 328 345 346
		f 4 -305 615 319 -601
		mu 0 4 331 330 347 348
		f 4 -306 616 320 -618
		mu 0 4 333 332 349 350
		f 4 -307 617 321 -619
		mu 0 4 334 333 350 351
		f 4 -308 618 322 -620
		mu 0 4 335 334 351 352
		f 4 -309 619 323 -621
		mu 0 4 336 335 352 353
		f 4 -310 620 324 -622
		mu 0 4 337 336 353 354
		f 4 -311 621 325 -623
		mu 0 4 338 337 354 355
		f 4 -312 622 326 -624
		mu 0 4 339 338 355 356
		f 4 -313 623 327 -625
		mu 0 4 340 339 356 357
		f 4 -314 624 328 -626
		mu 0 4 341 340 357 358
		f 4 -315 625 329 -627
		mu 0 4 342 341 358 359
		f 4 -316 626 330 -628
		mu 0 4 343 342 359 360
		f 4 -317 627 331 -629
		mu 0 4 344 343 360 361
		f 4 -318 628 332 -630
		mu 0 4 345 344 361 362
		f 4 -319 629 333 -631
		mu 0 4 346 345 362 363
		f 4 -320 631 334 -617
		mu 0 4 348 347 364 365
		f 4 -321 632 335 -634
		mu 0 4 350 349 366 367
		f 4 -322 633 336 -635
		mu 0 4 351 350 367 368
		f 4 -323 634 337 -636
		mu 0 4 352 351 368 369
		f 4 -324 635 338 -637
		mu 0 4 353 352 369 370
		f 4 -325 636 339 -638
		mu 0 4 354 353 370 371
		f 4 -326 637 340 -639
		mu 0 4 355 354 371 372
		f 4 -327 638 341 -640
		mu 0 4 356 355 372 373
		f 4 -328 639 342 -641
		mu 0 4 357 356 373 374
		f 4 -329 640 343 -642
		mu 0 4 358 357 374 375
		f 4 -330 641 344 -643
		mu 0 4 359 358 375 376
		f 4 -331 642 345 -644
		mu 0 4 360 359 376 377
		f 4 -332 643 346 -645
		mu 0 4 361 360 377 378
		f 4 -333 644 347 -646
		mu 0 4 362 361 378 379
		f 4 -334 645 348 -647
		mu 0 4 363 362 379 380
		f 4 -335 647 349 -633
		mu 0 4 365 364 381 382
		f 4 -336 648 350 -650
		mu 0 4 367 366 383 384
		f 4 -337 649 351 -651
		mu 0 4 368 367 384 385
		f 4 -338 650 352 -652
		mu 0 4 369 368 385 386
		f 4 -339 651 353 -653
		mu 0 4 370 369 386 387
		f 4 -340 652 354 -654
		mu 0 4 371 370 387 388
		f 4 -341 653 355 -655
		mu 0 4 372 371 388 389
		f 4 -342 654 356 -656
		mu 0 4 373 372 389 390
		f 4 -343 655 357 -657
		mu 0 4 374 373 390 391
		f 4 -344 656 358 -658
		mu 0 4 375 374 391 392
		f 4 -345 657 359 -659
		mu 0 4 376 375 392 393
		f 4 -346 658 360 -660
		mu 0 4 377 376 393 394
		f 4 -347 659 361 -661
		mu 0 4 378 377 394 395
		f 4 -348 660 362 -662
		mu 0 4 379 378 395 396
		f 4 -349 661 363 -663
		mu 0 4 380 379 396 397
		f 4 -350 663 364 -649
		mu 0 4 382 381 398 399
		f 4 -351 664 365 -666
		mu 0 4 384 383 400 401
		f 4 -352 665 366 -667
		mu 0 4 385 384 401 402
		f 4 -353 666 367 -668
		mu 0 4 386 385 402 403
		f 4 -354 667 368 -669
		mu 0 4 387 386 403 404
		f 4 -355 668 369 -670
		mu 0 4 388 387 404 405
		f 4 -356 669 370 -671
		mu 0 4 389 388 405 406
		f 4 -357 670 371 -672
		mu 0 4 390 389 406 407
		f 4 -358 671 372 -673
		mu 0 4 391 390 407 408
		f 4 -359 672 373 -674
		mu 0 4 392 391 408 409
		f 4 -360 673 374 -675
		mu 0 4 393 392 409 410
		f 4 -361 674 375 -676
		mu 0 4 394 393 410 411
		f 4 -362 675 376 -677
		mu 0 4 395 394 411 412
		f 4 -363 676 377 -678
		mu 0 4 396 395 412 413
		f 4 -364 677 378 -679
		mu 0 4 397 396 413 414
		f 4 -365 679 379 -665
		mu 0 4 399 398 415 416
		f 4 -366 680 380 -682
		mu 0 4 401 400 417 418
		f 4 -367 681 381 -683
		mu 0 4 402 401 418 419
		f 4 -368 682 382 -684
		mu 0 4 403 402 419 420
		f 4 -369 683 383 -685
		mu 0 4 404 403 420 421
		f 4 -370 684 384 -686
		mu 0 4 405 404 421 422
		f 4 -371 685 385 -687
		mu 0 4 406 405 422 423
		f 4 -372 686 386 -688
		mu 0 4 407 406 423 424
		f 4 -373 687 387 -689
		mu 0 4 408 407 424 425
		f 4 -374 688 388 -690
		mu 0 4 409 408 425 426
		f 4 -375 689 389 -691
		mu 0 4 410 409 426 427
		f 4 -376 690 390 -692
		mu 0 4 411 410 427 428
		f 4 -377 691 391 -693
		mu 0 4 412 411 428 429
		f 4 -378 692 392 -694
		mu 0 4 413 412 429 430
		f 4 -379 693 393 -695
		mu 0 4 414 413 430 431
		f 4 -380 695 394 -681
		mu 0 4 416 415 432 433
		f 4 -381 696 395 -698
		mu 0 4 418 417 434 435
		f 4 -382 697 396 -699
		mu 0 4 419 418 435 436
		f 4 -383 698 397 -700
		mu 0 4 420 419 436 437
		f 4 -384 699 398 -701
		mu 0 4 421 420 437 438
		f 4 -385 700 399 -702
		mu 0 4 422 421 438 439
		f 4 -386 701 400 -703
		mu 0 4 423 422 439 440
		f 4 -387 702 401 -704
		mu 0 4 424 423 440 441
		f 4 -388 703 402 -705
		mu 0 4 425 424 441 442
		f 4 -389 704 403 -706
		mu 0 4 426 425 442 443
		f 4 -390 705 404 -707
		mu 0 4 427 426 443 444
		f 4 -391 706 405 -708
		mu 0 4 428 427 444 445
		f 4 -392 707 406 -709
		mu 0 4 429 428 445 446
		f 4 -393 708 407 -710
		mu 0 4 430 429 446 447
		f 4 -394 709 408 -711
		mu 0 4 431 430 447 448
		f 4 -395 711 409 -697
		mu 0 4 433 432 449 450
		f 4 -396 712 410 -714
		mu 0 4 435 434 451 452
		f 4 -397 713 411 -715
		mu 0 4 436 435 452 453
		f 4 -398 714 412 -716
		mu 0 4 437 436 453 454
		f 4 -399 715 413 -717
		mu 0 4 438 437 454 455
		f 4 -400 716 414 -718
		mu 0 4 439 438 455 456
		f 4 -401 717 415 -719
		mu 0 4 440 439 456 457
		f 4 -402 718 416 -720
		mu 0 4 441 440 457 458
		f 4 -403 719 417 -721
		mu 0 4 442 441 458 459
		f 4 -404 720 418 -722
		mu 0 4 443 442 459 460
		f 4 -405 721 419 -723
		mu 0 4 444 443 460 461
		f 4 -406 722 420 -724
		mu 0 4 445 444 461 462
		f 4 -407 723 421 -725
		mu 0 4 446 445 462 463
		f 4 -408 724 422 -726
		mu 0 4 447 446 463 464
		f 4 -409 725 423 -727
		mu 0 4 448 447 464 465
		f 4 -410 727 424 -713
		mu 0 4 450 449 466 467
		f 4 -411 728 425 -730
		mu 0 4 452 451 468 469
		f 4 -412 729 426 -731
		mu 0 4 453 452 469 470
		f 4 -413 730 427 -732
		mu 0 4 454 453 470 471
		f 4 -414 731 428 -733
		mu 0 4 455 454 471 472
		f 4 -415 732 429 -734
		mu 0 4 456 455 472 473
		f 4 -416 733 430 -735
		mu 0 4 457 456 473 474
		f 4 -417 734 431 -736
		mu 0 4 458 457 474 475
		f 4 -418 735 432 -737
		mu 0 4 459 458 475 476
		f 4 -419 736 433 -738
		mu 0 4 460 459 476 477
		f 4 -420 737 434 -739
		mu 0 4 461 460 477 478
		f 4 -421 738 435 -740
		mu 0 4 462 461 478 479
		f 4 -422 739 436 -741
		mu 0 4 463 462 479 480
		f 4 -423 740 437 -742
		mu 0 4 464 463 480 481
		f 4 -424 741 438 -743
		mu 0 4 465 464 481 482
		f 4 -425 743 439 -729
		mu 0 4 467 466 483 484
		f 4 -426 744 140 -746
		mu 0 4 469 468 485 486
		f 4 -427 745 141 -747
		mu 0 4 470 469 486 487
		f 4 -428 746 142 -748
		mu 0 4 471 470 487 488
		f 4 -429 747 143 -749
		mu 0 4 472 471 488 489
		f 4 -430 748 144 -750
		mu 0 4 473 472 489 490
		f 4 -431 749 145 -751
		mu 0 4 474 473 490 491
		f 4 -432 750 146 -752
		mu 0 4 475 474 491 492
		f 4 -433 751 147 -753
		mu 0 4 476 475 492 493
		f 4 -434 752 148 -754
		mu 0 4 477 476 493 494
		f 4 -435 753 149 -755
		mu 0 4 478 477 494 495
		f 4 -436 754 150 -756
		mu 0 4 479 478 495 496
		f 4 -437 755 151 -757
		mu 0 4 480 479 496 497
		f 4 -438 756 152 -758
		mu 0 4 481 480 497 498
		f 4 -439 757 153 -759
		mu 0 4 482 481 498 499
		f 4 -440 759 154 -745
		mu 0 4 484 483 500 501
		f 4 -520 760 -696 761
		mu 0 4 502 503 504 505
		f 4 -536 -762 -680 762
		mu 0 4 506 507 508 509
		f 4 -664 763 -552 -763
		mu 0 4 510 511 512 513
		f 4 -568 -764 -648 764
		mu 0 4 514 515 516 517
		f 4 -632 765 -584 -765
		mu 0 4 518 519 520 521
		f 3 -600 -766 -616
		mu 0 3 522 523 524
		f 4 -504 766 -712 -761
		mu 0 4 525 526 527 528
		f 4 -728 -767 -488 767
		mu 0 4 529 530 531 532
		f 4 -472 768 -744 -768
		mu 0 4 533 534 535 536
		f 3 -760 -769 -456
		mu 0 3 537 538 539
		f 4 534 769 662 770
		mu 0 4 540 541 542 543
		f 4 518 -771 678 771
		mu 0 4 544 545 546 547
		f 4 550 772 646 -770
		mu 0 4 548 549 550 551
		f 4 630 -773 566 773
		mu 0 4 552 553 554 555
		f 4 582 598 614 -774
		mu 0 4 556 557 558 559
		f 4 694 774 502 -772
		mu 0 4 560 561 562 563
		f 4 486 -775 710 775
		mu 0 4 564 565 566 567
		f 4 726 776 470 -776
		mu 0 4 568 569 570 571
		f 4 454 -777 742 758
		mu 0 4 572 573 574 575
		f 20 -797 -796 -795 -794 -793 -792 -791 -790 -789 -788 -787 -786 -785 -784 -783 -782
		 -781 -780 -779 -778
		mu 0 20 576 577 578 579 580 581 582 583 584 585 586 587 588 589 590 591 592 593 594 595
		f 4 777 798 837 -798
		mu 0 4 596 597 598 599
		f 4 778 799 838 -799
		mu 0 4 597 600 601 598
		f 4 779 800 839 -800
		mu 0 4 600 602 603 601
		f 4 780 801 840 -801
		mu 0 4 602 604 605 603
		f 4 781 802 841 -802
		mu 0 4 604 606 607 605
		f 4 782 803 842 -803
		mu 0 4 606 608 609 607
		f 4 783 804 843 -804
		mu 0 4 608 610 611 609
		f 4 784 805 844 -805
		mu 0 4 610 612 613 611
		f 4 785 806 845 -806
		mu 0 4 612 614 615 613
		f 4 786 807 846 -807
		mu 0 4 614 616 617 615
		f 4 787 808 847 -808
		mu 0 4 616 618 619 617
		f 4 788 809 848 -809
		mu 0 4 618 620 621 619
		f 4 789 810 849 -810
		mu 0 4 620 622 623 621
		f 4 790 811 850 -811
		mu 0 4 622 624 625 623
		f 4 791 812 851 -812
		mu 0 4 624 626 627 625
		f 4 792 813 852 -813
		mu 0 4 626 628 629 627
		f 4 793 814 853 -814
		mu 0 4 628 630 631 629
		f 4 794 815 854 -815
		mu 0 4 630 632 633 631
		f 4 795 816 855 -816
		mu 0 4 632 634 635 633
		f 4 796 797 856 -817
		mu 0 4 634 636 637 635
		f 3 -838 818 -818
		mu 0 3 599 598 638
		f 3 -839 819 -819
		mu 0 3 598 601 638
		f 3 -840 820 -820
		mu 0 3 601 603 638
		f 3 -841 821 -821
		mu 0 3 603 605 638
		f 3 -842 822 -822
		mu 0 3 605 607 638
		f 3 -843 823 -823
		mu 0 3 607 609 638
		f 3 -844 824 -824
		mu 0 3 609 611 638
		f 3 -845 825 -825
		mu 0 3 611 613 638
		f 3 -846 826 -826
		mu 0 3 613 615 638
		f 3 -847 827 -827
		mu 0 3 615 617 638
		f 3 -848 828 -828
		mu 0 3 617 619 638
		f 3 -849 829 -829
		mu 0 3 619 621 638
		f 3 -850 830 -830
		mu 0 3 621 623 638
		f 3 -851 831 -831
		mu 0 3 623 625 638
		f 3 -852 832 -832
		mu 0 3 625 627 638
		f 3 -853 833 -833
		mu 0 3 627 629 638
		f 3 -854 834 -834
		mu 0 3 629 631 638
		f 3 -855 835 -835
		mu 0 3 631 633 638
		f 3 -856 836 -836
		mu 0 3 633 635 638
		f 3 -857 817 -837
		mu 0 3 635 637 638
		f 4 -858 1157 872 -1159
		mu 0 4 639 640 641 642
		f 4 -859 1158 873 -1160
		mu 0 4 643 639 642 644
		f 4 -860 1159 874 -1161
		mu 0 4 645 643 644 646
		f 4 -861 1160 875 -1162
		mu 0 4 647 645 646 648
		f 4 -862 1161 876 -1163
		mu 0 4 649 647 648 650
		f 4 -863 1162 877 -1164
		mu 0 4 651 649 650 652
		f 4 -864 1163 878 -1165
		mu 0 4 653 651 652 654
		f 4 -865 1164 879 -1166
		mu 0 4 655 653 654 656
		f 4 -866 1165 880 -1167
		mu 0 4 657 655 656 658
		f 4 -867 1166 881 -1168
		mu 0 4 659 657 658 660
		f 4 -868 1167 882 -1169
		mu 0 4 661 659 660 662
		f 4 -869 1168 883 -1170
		mu 0 4 663 661 662 664
		f 4 -870 1169 884 -1171
		mu 0 4 665 663 664 666
		f 4 -871 1170 885 -1172
		mu 0 4 667 665 666 668
		f 4 -872 1172 886 -1158
		mu 0 4 669 670 671 672
		f 4 -873 1173 887 -1175
		mu 0 4 642 641 673 674
		f 4 -874 1174 888 -1176
		mu 0 4 644 642 674 675
		f 4 -875 1175 889 -1177
		mu 0 4 646 644 675 676
		f 4 -876 1176 890 -1178
		mu 0 4 648 646 676 677
		f 4 -877 1177 891 -1179
		mu 0 4 650 648 677 678
		f 4 -878 1178 892 -1180
		mu 0 4 652 650 678 679
		f 4 -879 1179 893 -1181
		mu 0 4 654 652 679 680
		f 4 -880 1180 894 -1182
		mu 0 4 656 654 680 681
		f 4 -881 1181 895 -1183
		mu 0 4 658 656 681 682
		f 4 -882 1182 896 -1184
		mu 0 4 660 658 682 683
		f 4 -883 1183 897 -1185
		mu 0 4 662 660 683 684
		f 4 -884 1184 898 -1186
		mu 0 4 664 662 684 685
		f 4 -885 1185 899 -1187
		mu 0 4 666 664 685 686
		f 4 -886 1186 900 -1188
		mu 0 4 668 666 686 687
		f 4 -887 1188 901 -1174
		mu 0 4 672 671 688 689
		f 4 -888 1189 902 -1191
		mu 0 4 674 673 690 691
		f 4 -889 1190 903 -1192
		mu 0 4 675 674 691 692
		f 4 -890 1191 904 -1193
		mu 0 4 676 675 692 693
		f 4 -891 1192 905 -1194
		mu 0 4 677 676 693 694
		f 4 -892 1193 906 -1195
		mu 0 4 678 677 694 695
		f 4 -893 1194 907 -1196
		mu 0 4 679 678 695 696
		f 4 -894 1195 908 -1197
		mu 0 4 680 679 696 697
		f 4 -895 1196 909 -1198
		mu 0 4 681 680 697 698
		f 4 -896 1197 910 -1199
		mu 0 4 682 681 698 699
		f 4 -897 1198 911 -1200
		mu 0 4 683 682 699 700
		f 4 -898 1199 912 -1201
		mu 0 4 684 683 700 701
		f 4 -899 1200 913 -1202
		mu 0 4 685 684 701 702
		f 4 -900 1201 914 -1203
		mu 0 4 686 685 702 703
		f 4 -901 1202 915 -1204
		mu 0 4 687 686 703 704
		f 4 -902 1204 916 -1190
		mu 0 4 689 688 705 706
		f 4 -903 1205 917 -1207
		mu 0 4 691 690 707 708
		f 4 -904 1206 918 -1208
		mu 0 4 692 691 708 709
		f 4 -905 1207 919 -1209
		mu 0 4 693 692 709 710
		f 4 -906 1208 920 -1210
		mu 0 4 694 693 710 711
		f 4 -907 1209 921 -1211
		mu 0 4 695 694 711 712
		f 4 -908 1210 922 -1212
		mu 0 4 696 695 712 713
		f 4 -909 1211 923 -1213
		mu 0 4 697 696 713 714
		f 4 -910 1212 924 -1214
		mu 0 4 698 697 714 715
		f 4 -911 1213 925 -1215
		mu 0 4 699 698 715 716
		f 4 -912 1214 926 -1216
		mu 0 4 700 699 716 717
		f 4 -913 1215 927 -1217
		mu 0 4 701 700 717 718
		f 4 -914 1216 928 -1218
		mu 0 4 702 701 718 719
		f 4 -915 1217 929 -1219
		mu 0 4 703 702 719 720
		f 4 -916 1218 930 -1220
		mu 0 4 704 703 720 721
		f 4 -917 1220 931 -1206
		mu 0 4 706 705 722 723
		f 4 -918 1221 932 -1223
		mu 0 4 708 707 724 725
		f 4 -919 1222 933 -1224
		mu 0 4 709 708 725 726
		f 4 -920 1223 934 -1225
		mu 0 4 710 709 726 727
		f 4 -921 1224 935 -1226
		mu 0 4 711 710 727 728
		f 4 -922 1225 936 -1227
		mu 0 4 712 711 728 729
		f 4 -923 1226 937 -1228
		mu 0 4 713 712 729 730
		f 4 -924 1227 938 -1229
		mu 0 4 714 713 730 731
		f 4 -925 1228 939 -1230
		mu 0 4 715 714 731 732
		f 4 -926 1229 940 -1231
		mu 0 4 716 715 732 733
		f 4 -927 1230 941 -1232
		mu 0 4 717 716 733 734
		f 4 -928 1231 942 -1233
		mu 0 4 718 717 734 735
		f 4 -929 1232 943 -1234
		mu 0 4 719 718 735 736
		f 4 -930 1233 944 -1235
		mu 0 4 720 719 736 737
		f 4 -931 1234 945 -1236
		mu 0 4 721 720 737 738
		f 4 -932 1236 946 -1222
		mu 0 4 723 722 739 740
		f 4 -933 1237 947 -1239
		mu 0 4 725 724 741 742
		f 4 -934 1238 948 -1240
		mu 0 4 726 725 742 743;
	setAttr ".fc[500:741]"
		f 4 -935 1239 949 -1241
		mu 0 4 727 726 743 744
		f 4 -936 1240 950 -1242
		mu 0 4 728 727 744 745
		f 4 -937 1241 951 -1243
		mu 0 4 729 728 745 746
		f 4 -938 1242 952 -1244
		mu 0 4 730 729 746 747
		f 4 -939 1243 953 -1245
		mu 0 4 731 730 747 748
		f 4 -940 1244 954 -1246
		mu 0 4 732 731 748 749
		f 4 -941 1245 955 -1247
		mu 0 4 733 732 749 750
		f 4 -942 1246 956 -1248
		mu 0 4 734 733 750 751
		f 4 -943 1247 957 -1249
		mu 0 4 735 734 751 752
		f 4 -944 1248 958 -1250
		mu 0 4 736 735 752 753
		f 4 -945 1249 959 -1251
		mu 0 4 737 736 753 754
		f 4 -946 1250 960 -1252
		mu 0 4 738 737 754 755
		f 4 -947 1252 961 -1238
		mu 0 4 740 739 756 757
		f 4 -948 1253 962 -1255
		mu 0 4 742 741 758 759
		f 4 -949 1254 963 -1256
		mu 0 4 743 742 759 760
		f 4 -950 1255 964 -1257
		mu 0 4 744 743 760 761
		f 4 -951 1256 965 -1258
		mu 0 4 745 744 761 762
		f 4 -952 1257 966 -1259
		mu 0 4 746 745 762 763
		f 4 -953 1258 967 -1260
		mu 0 4 747 746 763 764
		f 4 -954 1259 968 -1261
		mu 0 4 748 747 764 765
		f 4 -955 1260 969 -1262
		mu 0 4 749 748 765 766
		f 4 -956 1261 970 -1263
		mu 0 4 750 749 766 767
		f 4 -957 1262 971 -1264
		mu 0 4 751 750 767 768
		f 4 -958 1263 972 -1265
		mu 0 4 752 751 768 769
		f 4 -959 1264 973 -1266
		mu 0 4 753 752 769 770
		f 4 -960 1265 974 -1267
		mu 0 4 754 753 770 771
		f 4 -961 1266 975 -1268
		mu 0 4 755 754 771 772
		f 4 -962 1268 976 -1254
		mu 0 4 757 756 773 774
		f 4 -963 1269 977 -1271
		mu 0 4 759 758 775 776
		f 4 -964 1270 978 -1272
		mu 0 4 760 759 776 777
		f 4 -965 1271 979 -1273
		mu 0 4 761 760 777 778
		f 4 -966 1272 980 -1274
		mu 0 4 762 761 778 779
		f 4 -967 1273 981 -1275
		mu 0 4 763 762 779 780
		f 4 -968 1274 982 -1276
		mu 0 4 764 763 780 781
		f 4 -969 1275 983 -1277
		mu 0 4 765 764 781 782
		f 4 -970 1276 984 -1278
		mu 0 4 766 765 782 783
		f 4 -971 1277 985 -1279
		mu 0 4 767 766 783 784
		f 4 -972 1278 986 -1280
		mu 0 4 768 767 784 785
		f 4 -973 1279 987 -1281
		mu 0 4 769 768 785 786
		f 4 -974 1280 988 -1282
		mu 0 4 770 769 786 787
		f 4 -975 1281 989 -1283
		mu 0 4 771 770 787 788
		f 4 -976 1282 990 -1284
		mu 0 4 772 771 788 789
		f 4 -977 1284 991 -1270
		mu 0 4 774 773 790 791
		f 4 -978 1285 992 -1287
		mu 0 4 776 775 792 793
		f 4 -979 1286 993 -1288
		mu 0 4 777 776 793 794
		f 4 -980 1287 994 -1289
		mu 0 4 778 777 794 795
		f 4 -981 1288 995 -1290
		mu 0 4 779 778 795 796
		f 4 -982 1289 996 -1291
		mu 0 4 780 779 796 797
		f 4 -983 1290 997 -1292
		mu 0 4 781 780 797 798
		f 4 -984 1291 998 -1293
		mu 0 4 782 781 798 799
		f 4 -985 1292 999 -1294
		mu 0 4 783 782 799 800
		f 4 -986 1293 1000 -1295
		mu 0 4 784 783 800 801
		f 4 -987 1294 1001 -1296
		mu 0 4 785 784 801 802
		f 4 -988 1295 1002 -1297
		mu 0 4 786 785 802 803
		f 4 -989 1296 1003 -1298
		mu 0 4 787 786 803 804
		f 4 -990 1297 1004 -1299
		mu 0 4 788 787 804 805
		f 4 -991 1298 1005 -1300
		mu 0 4 789 788 805 806
		f 4 -992 1300 1006 -1286
		mu 0 4 791 790 807 808
		f 4 -993 1301 1007 -1303
		mu 0 4 793 792 809 810
		f 4 -994 1302 1008 -1304
		mu 0 4 794 793 810 811
		f 4 -995 1303 1009 -1305
		mu 0 4 795 794 811 812
		f 4 -996 1304 1010 -1306
		mu 0 4 796 795 812 813
		f 4 -997 1305 1011 -1307
		mu 0 4 797 796 813 814
		f 4 -998 1306 1012 -1308
		mu 0 4 798 797 814 815
		f 4 -999 1307 1013 -1309
		mu 0 4 799 798 815 816
		f 4 -1000 1308 1014 -1310
		mu 0 4 800 799 816 817
		f 4 -1001 1309 1015 -1311
		mu 0 4 801 800 817 818
		f 4 -1002 1310 1016 -1312
		mu 0 4 802 801 818 819
		f 4 -1003 1311 1017 -1313
		mu 0 4 803 802 819 820
		f 4 -1004 1312 1018 -1314
		mu 0 4 804 803 820 821
		f 4 -1005 1313 1019 -1315
		mu 0 4 805 804 821 822
		f 4 -1006 1314 1020 -1316
		mu 0 4 806 805 822 823
		f 4 -1007 1316 1021 -1302
		mu 0 4 808 807 824 825
		f 4 -1008 1317 1022 -1319
		mu 0 4 810 809 826 827
		f 4 -1009 1318 1023 -1320
		mu 0 4 811 810 827 828
		f 4 -1010 1319 1024 -1321
		mu 0 4 812 811 828 829
		f 4 -1011 1320 1025 -1322
		mu 0 4 813 812 829 830
		f 4 -1012 1321 1026 -1323
		mu 0 4 814 813 830 831
		f 4 -1013 1322 1027 -1324
		mu 0 4 815 814 831 832
		f 4 -1014 1323 1028 -1325
		mu 0 4 816 815 832 833
		f 4 -1015 1324 1029 -1326
		mu 0 4 817 816 833 834
		f 4 -1016 1325 1030 -1327
		mu 0 4 818 817 834 835
		f 4 -1017 1326 1031 -1328
		mu 0 4 819 818 835 836
		f 4 -1018 1327 1032 -1329
		mu 0 4 820 819 836 837
		f 4 -1019 1328 1033 -1330
		mu 0 4 821 820 837 838
		f 4 -1020 1329 1034 -1331
		mu 0 4 822 821 838 839
		f 4 -1021 1330 1035 -1332
		mu 0 4 823 822 839 840
		f 4 -1022 1332 1036 -1318
		mu 0 4 825 824 841 842
		f 4 -1023 1333 1037 -1335
		mu 0 4 827 826 843 844
		f 4 -1024 1334 1038 -1336
		mu 0 4 828 827 844 845
		f 4 -1025 1335 1039 -1337
		mu 0 4 829 828 845 846
		f 4 -1026 1336 1040 -1338
		mu 0 4 830 829 846 847
		f 4 -1027 1337 1041 -1339
		mu 0 4 831 830 847 848
		f 4 -1028 1338 1042 -1340
		mu 0 4 832 831 848 849
		f 4 -1029 1339 1043 -1341
		mu 0 4 833 832 849 850
		f 4 -1030 1340 1044 -1342
		mu 0 4 834 833 850 851
		f 4 -1031 1341 1045 -1343
		mu 0 4 835 834 851 852
		f 4 -1032 1342 1046 -1344
		mu 0 4 836 835 852 853
		f 4 -1033 1343 1047 -1345
		mu 0 4 837 836 853 854
		f 4 -1034 1344 1048 -1346
		mu 0 4 838 837 854 855
		f 4 -1035 1345 1049 -1347
		mu 0 4 839 838 855 856
		f 4 -1036 1346 1050 -1348
		mu 0 4 840 839 856 857
		f 4 -1037 1348 1051 -1334
		mu 0 4 842 841 858 859
		f 4 -1038 1349 1052 -1351
		mu 0 4 844 843 860 861
		f 4 -1039 1350 1053 -1352
		mu 0 4 845 844 861 862
		f 4 -1040 1351 1054 -1353
		mu 0 4 846 845 862 863
		f 4 -1041 1352 1055 -1354
		mu 0 4 847 846 863 864
		f 4 -1042 1353 1056 -1355
		mu 0 4 848 847 864 865
		f 4 -1043 1354 1057 -1356
		mu 0 4 849 848 865 866
		f 4 -1044 1355 1058 -1357
		mu 0 4 850 849 866 867
		f 4 -1045 1356 1059 -1358
		mu 0 4 851 850 867 868
		f 4 -1046 1357 1060 -1359
		mu 0 4 852 851 868 869
		f 4 -1047 1358 1061 -1360
		mu 0 4 853 852 869 870
		f 4 -1048 1359 1062 -1361
		mu 0 4 854 853 870 871
		f 4 -1049 1360 1063 -1362
		mu 0 4 855 854 871 872
		f 4 -1050 1361 1064 -1363
		mu 0 4 856 855 872 873
		f 4 -1051 1362 1065 -1364
		mu 0 4 857 856 873 874
		f 4 -1052 1364 1066 -1350
		mu 0 4 859 858 875 876
		f 4 -1053 1365 1067 -1367
		mu 0 4 861 860 877 878
		f 4 -1054 1366 1068 -1368
		mu 0 4 862 861 878 879
		f 4 -1055 1367 1069 -1369
		mu 0 4 863 862 879 880
		f 4 -1056 1368 1070 -1370
		mu 0 4 864 863 880 881
		f 4 -1057 1369 1071 -1371
		mu 0 4 865 864 881 882
		f 4 -1058 1370 1072 -1372
		mu 0 4 866 865 882 883
		f 4 -1059 1371 1073 -1373
		mu 0 4 867 866 883 884
		f 4 -1060 1372 1074 -1374
		mu 0 4 868 867 884 885
		f 4 -1061 1373 1075 -1375
		mu 0 4 869 868 885 886
		f 4 -1062 1374 1076 -1376
		mu 0 4 870 869 886 887
		f 4 -1063 1375 1077 -1377
		mu 0 4 871 870 887 888
		f 4 -1064 1376 1078 -1378
		mu 0 4 872 871 888 889
		f 4 -1065 1377 1079 -1379
		mu 0 4 873 872 889 890
		f 4 -1066 1378 1080 -1380
		mu 0 4 874 873 890 891
		f 4 -1067 1380 1081 -1366
		mu 0 4 876 875 892 893
		f 4 -1068 1381 1082 -1383
		mu 0 4 878 877 894 895
		f 4 -1069 1382 1083 -1384
		mu 0 4 879 878 895 896
		f 4 -1070 1383 1084 -1385
		mu 0 4 880 879 896 897
		f 4 -1071 1384 1085 -1386
		mu 0 4 881 880 897 898
		f 4 -1072 1385 1086 -1387
		mu 0 4 882 881 898 899
		f 4 -1073 1386 1087 -1388
		mu 0 4 883 882 899 900
		f 4 -1074 1387 1088 -1389
		mu 0 4 884 883 900 901
		f 4 -1075 1388 1089 -1390
		mu 0 4 885 884 901 902
		f 4 -1076 1389 1090 -1391
		mu 0 4 886 885 902 903
		f 4 -1077 1390 1091 -1392
		mu 0 4 887 886 903 904
		f 4 -1078 1391 1092 -1393
		mu 0 4 888 887 904 905
		f 4 -1079 1392 1093 -1394
		mu 0 4 889 888 905 906
		f 4 -1080 1393 1094 -1395
		mu 0 4 890 889 906 907
		f 4 -1081 1394 1095 -1396
		mu 0 4 891 890 907 908
		f 4 -1082 1396 1096 -1382
		mu 0 4 893 892 909 910
		f 4 -1083 1397 1097 -1399
		mu 0 4 895 894 911 912
		f 4 -1084 1398 1098 -1400
		mu 0 4 896 895 912 913
		f 4 -1085 1399 1099 -1401
		mu 0 4 897 896 913 914
		f 4 -1086 1400 1100 -1402
		mu 0 4 898 897 914 915
		f 4 -1087 1401 1101 -1403
		mu 0 4 899 898 915 916
		f 4 -1088 1402 1102 -1404
		mu 0 4 900 899 916 917
		f 4 -1089 1403 1103 -1405
		mu 0 4 901 900 917 918
		f 4 -1090 1404 1104 -1406
		mu 0 4 902 901 918 919
		f 4 -1091 1405 1105 -1407
		mu 0 4 903 902 919 920
		f 4 -1092 1406 1106 -1408
		mu 0 4 904 903 920 921
		f 4 -1093 1407 1107 -1409
		mu 0 4 905 904 921 922
		f 4 -1094 1408 1108 -1410
		mu 0 4 906 905 922 923
		f 4 -1095 1409 1109 -1411
		mu 0 4 907 906 923 924
		f 4 -1096 1410 1110 -1412
		mu 0 4 908 907 924 925
		f 4 -1097 1412 1111 -1398
		mu 0 4 910 909 926 927
		f 4 -1098 1413 1112 -1415
		mu 0 4 912 911 928 929
		f 4 -1099 1414 1113 -1416
		mu 0 4 913 912 929 930
		f 4 -1100 1415 1114 -1417
		mu 0 4 914 913 930 931
		f 4 -1101 1416 1115 -1418
		mu 0 4 915 914 931 932
		f 4 -1102 1417 1116 -1419
		mu 0 4 916 915 932 933
		f 4 -1103 1418 1117 -1420
		mu 0 4 917 916 933 934
		f 4 -1104 1419 1118 -1421
		mu 0 4 918 917 934 935
		f 4 -1105 1420 1119 -1422
		mu 0 4 919 918 935 936
		f 4 -1106 1421 1120 -1423
		mu 0 4 920 919 936 937
		f 4 -1107 1422 1121 -1424
		mu 0 4 921 920 937 938
		f 4 -1108 1423 1122 -1425
		mu 0 4 922 921 938 939
		f 4 -1109 1424 1123 -1426
		mu 0 4 923 922 939 940
		f 4 -1110 1425 1124 -1427
		mu 0 4 924 923 940 941
		f 4 -1111 1426 1125 -1428
		mu 0 4 925 924 941 942
		f 4 -1112 1428 1126 -1414
		mu 0 4 927 926 943 944
		f 4 -1113 1429 1127 -1431
		mu 0 4 929 928 945 946
		f 4 -1114 1430 1128 -1432
		mu 0 4 930 929 946 947
		f 4 -1115 1431 1129 -1433
		mu 0 4 931 930 947 948
		f 4 -1116 1432 1130 -1434
		mu 0 4 932 931 948 949
		f 4 -1117 1433 1131 -1435
		mu 0 4 933 932 949 950
		f 4 -1118 1434 1132 -1436
		mu 0 4 934 933 950 951
		f 4 -1119 1435 1133 -1437
		mu 0 4 935 934 951 952
		f 4 -1120 1436 1134 -1438
		mu 0 4 936 935 952 953
		f 4 -1121 1437 1135 -1439
		mu 0 4 937 936 953 954
		f 4 -1122 1438 1136 -1440
		mu 0 4 938 937 954 955
		f 4 -1123 1439 1137 -1441
		mu 0 4 939 938 955 956
		f 4 -1124 1440 1138 -1442
		mu 0 4 940 939 956 957
		f 4 -1125 1441 1139 -1443
		mu 0 4 941 940 957 958
		f 4 -1126 1442 1140 -1444
		mu 0 4 942 941 958 959
		f 4 -1127 1444 1141 -1430
		mu 0 4 944 943 960 961
		f 4 -1128 1445 1142 -1447
		mu 0 4 946 945 962 963
		f 4 -1129 1446 1143 -1448
		mu 0 4 947 946 963 964
		f 4 -1130 1447 1144 -1449
		mu 0 4 948 947 964 965
		f 4 -1131 1448 1145 -1450
		mu 0 4 949 948 965 966
		f 4 -1132 1449 1146 -1451
		mu 0 4 950 949 966 967
		f 4 -1133 1450 1147 -1452
		mu 0 4 951 950 967 968
		f 4 -1134 1451 1148 -1453
		mu 0 4 952 951 968 969
		f 4 -1135 1452 1149 -1454
		mu 0 4 953 952 969 970
		f 4 -1136 1453 1150 -1455
		mu 0 4 954 953 970 971
		f 4 -1137 1454 1151 -1456
		mu 0 4 955 954 971 972
		f 4 -1138 1455 1152 -1457
		mu 0 4 956 955 972 973
		f 4 -1139 1456 1153 -1458
		mu 0 4 957 956 973 974
		f 4 -1140 1457 1154 -1459
		mu 0 4 958 957 974 975
		f 4 -1141 1458 1155 -1460
		mu 0 4 959 958 975 976
		f 4 -1142 1460 1156 -1446
		mu 0 4 961 960 977 978
		f 4 -1143 1461 857 -1463
		mu 0 4 963 962 979 980
		f 4 -1144 1462 858 -1464
		mu 0 4 964 963 980 981
		f 4 -1145 1463 859 -1465
		mu 0 4 965 964 981 982
		f 4 -1146 1464 860 -1466
		mu 0 4 966 965 982 983
		f 4 -1147 1465 861 -1467
		mu 0 4 967 966 983 984
		f 4 -1148 1466 862 -1468
		mu 0 4 968 967 984 985
		f 4 -1149 1467 863 -1469
		mu 0 4 969 968 985 986
		f 4 -1150 1468 864 -1470
		mu 0 4 970 969 986 987
		f 4 -1151 1469 865 -1471
		mu 0 4 971 970 987 988
		f 4 -1152 1470 866 -1472
		mu 0 4 972 971 988 989
		f 4 -1153 1471 867 -1473
		mu 0 4 973 972 989 990
		f 4 -1154 1472 868 -1474
		mu 0 4 974 973 990 991
		f 4 -1155 1473 869 -1475
		mu 0 4 975 974 991 992
		f 4 -1156 1474 870 -1476
		mu 0 4 976 975 992 993
		f 4 -1157 1476 871 -1462
		mu 0 4 978 977 994 995
		f 4 -1237 1477 -1413 1478
		mu 0 4 996 997 998 999
		f 4 -1253 -1479 -1397 1479
		mu 0 4 1000 1001 1002 1003
		f 4 -1381 1480 -1269 -1480
		mu 0 4 1004 1005 1006 1007
		f 4 -1285 -1481 -1365 1481
		mu 0 4 1008 1009 1010 1011
		f 4 -1349 1482 -1301 -1482
		mu 0 4 1012 1013 1014 1015
		f 3 -1317 -1483 -1333
		mu 0 3 1016 1017 1018
		f 4 -1221 1483 -1429 -1478
		mu 0 4 1019 1020 1021 1022
		f 4 -1445 -1484 -1205 1484
		mu 0 4 1023 1024 1025 1026
		f 4 -1189 1485 -1461 -1485
		mu 0 4 1027 1028 1029 1030
		f 3 -1477 -1486 -1173
		mu 0 3 1031 1032 1033
		f 4 1251 1486 1379 1487
		mu 0 4 1034 1035 1036 1037
		f 4 1235 -1488 1395 1488
		mu 0 4 1038 1039 1040 1041
		f 4 1267 1489 1363 -1487
		mu 0 4 1042 1043 1044 1045
		f 4 1347 -1490 1283 1490
		mu 0 4 1046 1047 1048 1049
		f 4 1299 1315 1331 -1491
		mu 0 4 1050 1051 1052 1053
		f 4 1411 1491 1219 -1489
		mu 0 4 1054 1055 1056 1057
		f 4 1203 -1492 1427 1492
		mu 0 4 1058 1059 1060 1061
		f 4 1443 1493 1187 -1493
		mu 0 4 1062 1063 1064 1065
		f 4 1171 -1494 1459 1475
		mu 0 4 1066 1067 1068 1069;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode parentConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1" 
		-p "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "D8937B28-4E6A-4F57-5A1C-83B7F69DA81C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 -14.03651568366173 3.4036686337163941e-15 ;
	setAttr ".rst" -type "double3" 3.9999952714314193 -0.00014042854309082031 -1.1146330495254992 ;
	setAttr ".rsrr" -type "double3" 180 -14.036515683661754 3.4036686337163922e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1" 
		-p "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp";
	rename -uid "FCE11CD4-4019-E24E-1CA8-70B5C3CF22EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hook_grp" -p "HingeJoint__instance_2:module_grp";
	rename -uid "F5B4E3EF-4C27-2032-F3E0-32943A122D78";
createNode joint -n "HingeJoint__instance_2:hook_root_joint" -p "HingeJoint__instance_2:hook_grp";
	rename -uid "843723BC-4AF0-0316-0697-D9BCE43D9F38";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 90 ;
createNode joint -n "HingeJoint__instance_2:hook_target_joint" -p "HingeJoint__instance_2:hook_root_joint";
	rename -uid "1446FC0D-4460-FB68-5644-9094C8C2C435";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90 ;
createNode ikEffector -n "HingeJoint__instance_2:hook_root_jointikEffector" -p "HingeJoint__instance_2:hook_root_joint";
	rename -uid "C2E88A5D-4D6B-3335-BE0A-CC893E8D58C2";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "HingeJoint__instance_2:hook_root_joint_pointConstraint" 
		-p "HingeJoint__instance_2:hook_root_joint";
	rename -uid "A424C1F8-433C-D0C1-D1D7-CBBE0C02F484";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:unhookedTarget" -p "HingeJoint__instance_2:hook_grp";
	rename -uid "9C07C0FD-47A6-566C-E235-72ADD88100C4";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:unhookedTargetShape" -p "HingeJoint__instance_2:unhookedTarget";
	rename -uid "6C1F9255-4113-ACCA-7CE6-B088402F6840";
	setAttr -k off ".v";
createNode pointConstraint -n "unhookedTarget_pointConstraint2" -p "HingeJoint__instance_2:unhookedTarget";
	rename -uid "4A4E9E29-4A69-DECB-0B4C-6193D898D108";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0.001 0 ;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode ikHandle -n "HingeJoint__instance_2:hook_root_joint_ikHandle" -p "HingeJoint__instance_2:hook_grp";
	rename -uid "20AE4B01-45A0-BAA0-43BC-4F9F26F2CDAB";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "hook_root_joint_ikHandle_poleVectorConstraint2" 
		-p "HingeJoint__instance_2:hook_root_joint_ikHandle";
	rename -uid "4F5925B5-4E40-1C3D-40CA-9CA62A4D10ED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_joint_ikHandle_poleVectorLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 1 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint" 
		-p "HingeJoint__instance_2:hook_root_joint_ikHandle";
	rename -uid "F4DA95A8-4056-2D9E-B729-3CB8F6C880A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_target_joint_endPosLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hook_root_joint_rootPosLocator" -p
		 "HingeJoint__instance_2:hook_grp";
	rename -uid "CC760A35-4F76-E513-59C7-5D886F2EACB4";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:hook_root_joint_rootPosLocatorShape" 
		-p "HingeJoint__instance_2:hook_root_joint_rootPosLocator";
	rename -uid "A8DB646A-44CD-B23C-F72B-57ACFD773A01";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint" 
		-p "HingeJoint__instance_2:hook_root_joint_rootPosLocator";
	rename -uid "6FC22C30-45F8-A9F8-4A53-BBADB11A6D5D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hook_target_joint_endPosLocator" 
		-p "HingeJoint__instance_2:hook_grp";
	rename -uid "6F343E32-480E-03F3-2284-068C2AEA2E48";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:hook_target_joint_endPosLocatorShape" 
		-p "HingeJoint__instance_2:hook_target_joint_endPosLocator";
	rename -uid "B1E1FBD7-4FDA-E7D3-D6CA-BDAD9F98B855";
	setAttr -k off ".v";
createNode pointConstraint -n "HingeJoint__instance_2:hook_pointConstraint" -p "HingeJoint__instance_2:hook_target_joint_endPosLocator";
	rename -uid "126290FB-4FF6-4C84-CD2B-1F8017E3EEE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "unhookedTargetW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0 0.001 0 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator" 
		-p "HingeJoint__instance_2:hook_grp";
	rename -uid "8D43927D-450A-94FC-4E07-67A146C20712";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1 0 ;
createNode locator -n "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocatorShape" 
		-p "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator";
	rename -uid "7C9733D9-4F48-2160-ABD1-5692F134F16E";
	setAttr -k off ".v";
createNode transform -n "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp" 
		-p "HingeJoint__instance_2:hook_grp";
	rename -uid "5EAACE6D-4DA0-BADE-E39A-93BDAE9D79D5";
createNode transform -n "HingeJoint__instance_2:hook_root_joint_hook_representation" 
		-p "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "1ED22CE6-4F73-2E20-D815-5889878DA79F";
createNode nurbsSurface -n "HingeJoint__instance_2:hook_root_joint_hook_representationShape" 
		-p "HingeJoint__instance_2:hook_root_joint_hook_representation";
	rename -uid "187D8DF6-4340-54D0-A747-C9BA9A01D6DA";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		6 0 0 0 10 10 10
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		44
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0 -2.862699950697759e-16 0.22163883751087754
		0 0.15672232497824459 0.15672232497824484
		0 0.22163883751087743 5.5517673144427339e-18
		0 0.15672232497824468 -0.15672232497824484
		0 -1.030019529394196e-16 -0.22163883751087765
		0 -0.15672232497824501 -0.15672232497824506
		0 -0.22163883751087782 -3.5945998741709007e-17
		0 -0.15672232497824509 0.15672232497824481
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.33333333333333331 -1.3824025845308839e-16 0.22163883751087757
		0.33333333333333326 0.15672232497824473 0.15672232497824487
		0.33333333333333326 0.22163883751087757 4.6373327286021172e-17
		0.33333333333333326 0.15672232497824481 -0.15672232497824481
		0.33333333333333331 4.502778367726793e-17 -0.22163883751087762
		0.33333333333333337 -0.15672232497824487 -0.15672232497824504
		0.33333333333333337 -0.22163883751087768 4.8755612298694312e-18
		0.33333333333333337 -0.15672232497824495 0.15672232497824484
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		0.66666666666666674 9.7894781635991762e-18 0.22163883751087762
		0.66666666666666663 0.1567223249782449 0.15672232497824493
		0.66666666666666663 0.22163883751087773 8.719488725759961e-17
		0.66666666666666663 0.15672232497824498 -0.15672232497824476
		0.66666666666666674 1.9305752029395549e-16 -0.22163883751087757
		0.66666666666666674 -0.1567223249782447 -0.15672232497824498
		0.66666666666666674 -0.22163883751087751 4.5697121201447876e-17
		0.66666666666666674 -0.15672232497824479 0.1567223249782449
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		1 1.5781921478028672e-16 0.22163883751087765
		1 0.15672232497824504 0.15672232497824495
		1 0.22163883751087787 1.2801644722917804e-16
		1 0.15672232497824512 -0.15672232497824473
		1 3.4108725691064299e-16 -0.22163883751087754
		1 -0.15672232497824456 -0.15672232497824495
		1 -0.22163883751087737 8.651868117302632e-17
		1 -0.15672232497824465 0.15672232497824493
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2" 
		-p "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "03B8FCFE-4C4C-EE9F-AD34-6CA7713B0551";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hook_root_jointW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 180 0 90 ;
	setAttr ".rsrr" -type "double3" 0 0 90 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2" 
		-p "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp";
	rename -uid "EC1DC0F3-4E29-B143-761B-21892C597253";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "module_transformW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_2:module_grp";
	rename -uid "48DC2F39-4D24-3AD9-5FF1-07849EF374F1";
createNode transform -n "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "425AC343-4F6F-9A59-F101-72AAA93BEF8B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator";
	rename -uid "8418A0EA-41F5-FE67-F717-3AA061E6A510";
	setAttr -k off ".v";
createNode parentConstraint -n "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2" 
		-p "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "A86D53D0-462F-BA57-0D15-A7A9F765B849";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp" 
		-p "HingeJoint__instance_2:module_grp";
	rename -uid "FEDC11E6-4945-E59A-22A2-B99B2331E85B";
createNode transform -n "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator" 
		-p "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "A52B9C68-4466-3019-E370-DB8A362BD973";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -0.5 0 ;
createNode locator -n "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocatorShape" 
		-p "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator";
	rename -uid "C47751C6-4D85-38A3-D065-F5920B1935C8";
	setAttr -k off ".v";
createNode parentConstraint -n "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1" 
		-p "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp";
	rename -uid "92AC6FD3-48AB-145A-EFC7-C58EE01393E6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:IK_root_joint_positionLocator" -p
		 "HingeJoint__instance_2:module_grp";
	rename -uid "A4E156F8-4DFB-6624-BD34-12A61AE97EA0";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:IK_root_joint_positionLocatorShape" 
		-p "HingeJoint__instance_2:IK_root_joint_positionLocator";
	rename -uid "7CE94948-43A8-95DC-3538-1A8369E10667";
	setAttr -k off ".v";
createNode joint -n "HingeJoint__instance_2:IK_root_joint" -p "HingeJoint__instance_2:IK_root_joint_positionLocator";
	rename -uid "065ABF7B-40DA-7C9E-445A-329FF9ED81FA";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 180 0.00027221573522774774 -1.7018343168774042e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926484 0 ;
	setAttr ".pa" -type "double3" 0 -50 0 ;
createNode joint -n "HingeJoint__instance_2:IK_hinge_joint" -p "HingeJoint__instance_2:IK_root_joint";
	rename -uid "116DBDA9-4921-B110-1C52-8DACBBD71FEC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 3.3306690738754696e-16 ;
	setAttr ".r" -type "double3" 0 56.145518303176402 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -28.072486935852961 0 ;
	setAttr ".pa" -type "double3" 0 50 0 ;
createNode joint -n "HingeJoint__instance_2:IK_end_joint" -p "HingeJoint__instance_2:IK_hinge_joint";
	rename -uid "164C9B80-40DC-E128-9F65-A8B7CF462000";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.123105525970459 0 3.3306690738754696e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 14.036243467926477 0 ;
createNode ikEffector -n "HingeJoint__instance_2:IK_root_joint_ikEffector" -p "HingeJoint__instance_2:IK_hinge_joint";
	rename -uid "76733AD2-4581-0231-DA93-13A4C505588C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode pointConstraint -n "IK_root_joint_positionLocator_pointConstraint1" -p
		 "HingeJoint__instance_2:IK_root_joint_positionLocator";
	rename -uid "DD3BF833-494D-EECB-2D21-849AEBC5B169";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "root_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:IK_hinge_joint_positionLocator" -p
		 "HingeJoint__instance_2:module_grp";
	rename -uid "F590CCCE-4227-AA4C-D16C-369C63944E57";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:IK_hinge_joint_positionLocatorShape" 
		-p "HingeJoint__instance_2:IK_hinge_joint_positionLocator";
	rename -uid "3D9EF36C-4EEF-1814-CC71-2EB01FE9CE4E";
	setAttr -k off ".v";
createNode pointConstraint -n "IK_hinge_joint_positionLocator_pointConstraint1" -p
		 "HingeJoint__instance_2:IK_hinge_joint_positionLocator";
	rename -uid "A64C0599-4CE7-952D-6FFB-39895E42A344";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "hinge_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
createNode transform -n "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator" 
		-p "HingeJoint__instance_2:module_grp";
	rename -uid "637B10AE-4EAE-D9D4-53B4-84B2011A4D05";
	setAttr ".v" no;
createNode locator -n "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocatorShape" 
		-p "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator";
	rename -uid "9A0596A2-476C-04F4-7E9A-02A99B651548";
	setAttr -k off ".v";
createNode ikHandle -n "HingeJoint__instance_2:IK_root_joint_ikHandle" -p "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator";
	rename -uid "B110318B-4C7C-185C-B751-06B9B5011015";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.4634356480297583e-06 0 3.1086244689504383e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "IK_root_joint_ikHandle_poleVectorConstraint1" 
		-p "HingeJoint__instance_2:IK_root_joint_ikHandle";
	rename -uid "F4610C4E-4395-5153-1C34-DD89D46C81AC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IK_hinge_joint_positionLocatorW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "IK_root_joint_ikHandle_positionLocator_pointConstraint1" 
		-p "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator";
	rename -uid "56EE755D-48B9-6941-BE7C-1A9DEE1CD7DD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "end_joint_translation_controlW0" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8 0 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode transform -n "Group__group2";
	rename -uid "4B2474D2-4D4B-41C9-3A0E-2293852FA8BD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 5.4223625156958732 0 2.7877490797121922 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
createNode mesh -n "Group__group2Shape" -p "Group__group2";
	rename -uid "71EF2E57-46EA-9225-0B31-15B2036C693B";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-07 -1.48870528 0 4.3673398e-07 -1.48870528 0 -4.3673398e-07 1.48870528 0
		 4.3673398e-07 1.48870528 0 1.48870528 -4.3673398e-07 0 1.48870528 4.3673398e-07 0
		 -1.48870528 -4.3673398e-07 0 -1.48870528 4.3673398e-07 0 3.3055887e-16 -4.3673398e-07 -1.48870528
		 3.3055905e-16 4.3673398e-07 -1.48870528 -3.3055905e-16 -4.3673398e-07 1.48870528
		 -3.3055887e-16 4.3673398e-07 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "Finger__instance_1:module_transform" -p "Group__group2";
	rename -uid "DD3EB5AD-428D-9C9C-2A57-6AA2AEFE56D1";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".t" -type "double3" 0 0 2.7877490797121922 ;
	setAttr ".s" -type "double3" 0.25 0.25 0.25 ;
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
createNode mesh -n "Finger__instance_1:module_transformShape" -p "Finger__instance_1:module_transform";
	rename -uid "C99550CB-4053-109F-FEAA-2F9B5E0043FA";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-07 -1.48870528 0 4.3673398e-07 -1.48870528 0 -4.3673398e-07 1.48870528 0
		 4.3673398e-07 1.48870528 0 1.48870528 -4.3673398e-07 0 1.48870528 4.3673398e-07 0
		 -1.48870528 -4.3673398e-07 0 -1.48870528 4.3673398e-07 0 3.3055887e-16 -4.3673398e-07 -1.48870528
		 3.3055905e-16 4.3673398e-07 -1.48870528 -3.3055905e-16 -4.3673398e-07 1.48870528
		 -3.3055887e-16 4.3673398e-07 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "Finger__instance_1:root_joint_translation_control" -p "Finger__instance_1:module_transform";
	rename -uid "3197F349-4DFA-B3A0-3504-638073BFBD96";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "Finger__instance_1:root_joint_translation_controlShape" 
		-p "Finger__instance_1:root_joint_translation_control";
	rename -uid "588AC23E-4D08-845B-AF0A-728EEB2C8222";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Finger__instance_1:knuckle_1_joint_translation_control" 
		-p "Finger__instance_1:module_transform";
	rename -uid "508F1CA8-48D4-519D-54B2-A89F3740C41F";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "Finger__instance_1:knuckle_1_joint_translation_controlShape" 
		-p "Finger__instance_1:knuckle_1_joint_translation_control";
	rename -uid "47A1A615-42DD-8F67-554A-70AFDCF1587C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Finger__instance_1:knuckle_2_joint_translation_control" 
		-p "Finger__instance_1:module_transform";
	rename -uid "601185E4-4336-2417-887D-D2A279E48372";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "Finger__instance_1:knuckle_2_joint_translation_controlShape" 
		-p "Finger__instance_1:knuckle_2_joint_translation_control";
	rename -uid "968826B1-4855-BFAB-66D4-31A491098AAE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Finger__instance_1:knuckle_3_joint_translation_control" 
		-p "Finger__instance_1:module_transform";
	rename -uid "82B27713-4883-05DE-C5EC-18945F13E561";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 12 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "Finger__instance_1:knuckle_3_joint_translation_controlShape" 
		-p "Finger__instance_1:knuckle_3_joint_translation_control";
	rename -uid "262BA72E-4973-81E5-1FF9-DCA20AD0E8D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Finger__instance_1:end_joint_translation_control" -p "Finger__instance_1:module_transform";
	rename -uid "4B2E18A4-4967-380D-A9CD-3BB0289B724E";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 16 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "Finger__instance_1:end_joint_translation_controlShape" 
		-p "Finger__instance_1:end_joint_translation_control";
	rename -uid "EAFE6ED8-4FA7-4BB7-5DA7-519D43A415CE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Group__group" -p "Group__group2";
	rename -uid "68FEA058-471D-6D5B-3417-AC81D8AEE37F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 0 -2.7877490797121922 ;
	setAttr ".s" -type "double3" 1.6201074625429537 1.6201074625429537 1.6201074625429537 ;
	setAttr -k off ".sx";
	setAttr -k off ".sz";
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
createNode mesh -n "Group__groupShape" -p "Group__group";
	rename -uid "05803D19-4CB2-A0E6-A3B3-57BF483409EE";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-07 -1.48870528 0 4.3673398e-07 -1.48870528 0 -4.3673398e-07 1.48870528 0
		 4.3673398e-07 1.48870528 0 1.48870528 -4.3673398e-07 0 1.48870528 4.3673398e-07 0
		 -1.48870528 -4.3673398e-07 0 -1.48870528 4.3673398e-07 0 3.3055887e-16 -4.3673398e-07 -1.48870528
		 3.3055905e-16 4.3673398e-07 -1.48870528 -3.3055905e-16 -4.3673398e-07 1.48870528
		 -3.3055887e-16 4.3673398e-07 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "HingeJoint__instance_2:module_transform" -p "Group__group";
	rename -uid "3FBE9E5A-4E3B-8E67-87B9-6D944F880343";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".s" -type "double3" 0.61724300586232694 0.61724300586232694 0.61724300586232694 ;
	setAttr ".aal" -type "attributeAlias" {"globalScale","scaleY"} ;
createNode mesh -n "HingeJoint__instance_2:module_transformShape" -p "HingeJoint__instance_2:module_transform";
	rename -uid "01804363-4379-6134-806B-AABC7D95B2A5";
	setAttr -k off ".v";
	setAttr ".ovs" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0 0.625
		 0 0.625 0.25 0.375 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr ".bnr" 0;
	setAttr -s 20 ".vt[0:19]"  -1 -1 1 1 -1 1 -1 1 1 1 1 1 -1 1 -1 1 1 -1
		 -1 -1 -1 1 -1 -1 -4.3673398e-07 -1.48870528 0 4.3673398e-07 -1.48870528 0 -4.3673398e-07 1.48870528 0
		 4.3673398e-07 1.48870528 0 1.48870528 -4.3673398e-07 0 1.48870528 4.3673398e-07 0
		 -1.48870528 -4.3673398e-07 0 -1.48870528 4.3673398e-07 0 3.3055887e-16 -4.3673398e-07 -1.48870528
		 3.3055905e-16 4.3673398e-07 -1.48870528 -3.3055905e-16 -4.3673398e-07 1.48870528
		 -3.3055887e-16 4.3673398e-07 1.48870528;
	setAttr -s 24 ".ed[0:23]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 9 0 10 11 0 8 10 0 9 11 0 12 13 0 14 15 0 12 14 0
		 13 15 0 16 17 0 18 19 0 16 18 0 17 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 12 15 -14 -15
		mu 0 4 14 15 16 17
		f 4 16 19 -18 -19
		mu 0 4 18 19 20 21
		f 4 20 23 -22 -23
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vnm" 0;
createNode transform -n "HingeJoint__instance_2:root_joint_translation_control" -p
		 "HingeJoint__instance_2:module_transform";
	rename -uid "7F0A61CF-4407-47EA-4352-5F92A4262D3C";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "HingeJoint__instance_2:root_joint_translation_controlShape" 
		-p "HingeJoint__instance_2:root_joint_translation_control";
	rename -uid "28DBD2DE-4AA7-0ADF-04CD-E8902EE1314F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "HingeJoint__instance_2:hinge_joint_translation_control" 
		-p "HingeJoint__instance_2:module_transform";
	rename -uid "0744939B-4F75-B017-7630-0B90477FCCF0";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 4 0 -1.0000000000000002 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "HingeJoint__instance_2:hinge_joint_translation_controlShape" 
		-p "HingeJoint__instance_2:hinge_joint_translation_control";
	rename -uid "B3BD7C93-48F7-0F56-1C82-57AB1AD86110";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "HingeJoint__instance_2:end_joint_translation_control" -p
		 "HingeJoint__instance_2:module_transform";
	rename -uid "E80E712A-490F-B053-D586-8CA400939FC2";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 8 0 -2.2204460492503131e-16 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsSurface -n "HingeJoint__instance_2:end_joint_translation_controlShape" 
		-p "HingeJoint__instance_2:end_joint_translation_control";
	rename -uid "9BBD26F7-4416-3CB0-DA54-8F94096DCB40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		9.596474681976929e-17 -1 -2.5316183359690662e-16
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		1.151601345627845e-16 -1 0.28272503694690354
		-0.19991679083637259 -1 0.19991679083637273
		-0.28272503694690365 -1 5.7191723447539755e-17
		-0.19991679083637276 -1 -0.19991679083637259
		-1.8508566094318079e-16 -1 -0.28272503694690365
		0.19991679083637254 -1 -0.19991679083637298
		0.2827250369469036 -1 -6.2210285873682227e-17
		0.1999167908363727 -1 0.19991679083637259
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		1.9902882483877521e-16 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058955
		-0.8717636375318033 -0.78361162489122427 1.6111055650702835e-16
		-0.61642997969058944 -0.78361162489122427 -0.61642997969058899
		-4.1463948278396632e-16 -0.78361162489122427 -0.87176363753180319
		0.61642997969058899 -0.78361162489122427 -0.61642997969058999
		0.87176363753180319 -0.78361162489122427 1.0506190143399388e-16
		0.61642997969058932 -0.78361162489122427 0.61642997969058932
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		2.051909376318187e-16 -6.284284658528814e-17 1.2264094625656803
		-0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		-1.2264094625656805 1.2253074553466149e-17 2.1934926354574312e-16
		-0.86720244749154174 6.5353909630129502e-17 -0.8672024474915413
		-5.0851507246572639e-16 8.7348995692220465e-17 -1.2264094625656803
		0.8672024474915413 6.5353909630129576e-17 -0.86720244749154252
		1.2264094625656803 1.2253074553466144e-17 2.901104977298788e-16
		0.86720244749154163 -4.0847760523197208e-17 0.86720244749154185
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		9.2681250202978354e-17 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058966
		-0.87176363753180353 0.78361162489122449 1.507277286910009e-16
		-0.61642997969058955 0.78361162489122449 -0.61642997969058932
		-3.0829190814816951e-16 0.78361162489122449 -0.87176363753180341
		0.61642997969058932 0.78361162489122449 -0.61642997969058999
		0.87176363753180341 0.78361162489122449 3.0737422288956035e-16
		0.61642997969058944 0.78361162489122449 0.61642997969058966
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		-2.0554511899433756e-17 0.99999999999999989 0.28272503694690376
		-0.19991679083637282 0.99999999999999989 0.19991679083637282
		-0.28272503694690376 0.99999999999999989 4.3941756900056795e-17
		-0.19991679083637273 0.99999999999999989 -0.1999167908363727
		-4.9371014480962574e-17 0.99999999999999989 -0.28272503694690365
		0.19991679083637276 0.99999999999999989 -0.19991679083637284
		0.28272503694690371 0.99999999999999989 1.9596904050327137e-16
		0.1999167908363727 0.99999999999999989 0.19991679083637293
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		1.739967336636337e-16 1 -1.6799646886496759e-17
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode container -n "HingeJoint__instance_2:module_container";
	rename -uid "07E8F976-41F5-52ED-F27D-738964FA02D4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 49 ".boc";
	setAttr -s 13 ".ish";
	setAttr ".ish[24]" yes;
	setAttr ".ish[25]" yes;
	setAttr ".ish[26]" yes;
	setAttr ".ish[27]" yes;
	setAttr ".ish[28]" yes;
	setAttr ".ish[29]" yes;
	setAttr ".ish[30]" yes;
	setAttr ".ish[31]" yes;
	setAttr ".ish[32]" yes;
	setAttr ".ish[33]" yes;
	setAttr ".ish[34]" yes;
	setAttr ".ish[35]" yes;
	setAttr ".ish[48]" yes;
	setAttr ".ctor" -type "string" "micma";
	setAttr ".cdat" -type "string" "2024/12/12 12:42:11";
	setAttr ".aal" -type "attributeAlias" {"root_joint_R","borderConnections[0]","end_joint_R"
		,"borderConnections[10]","end_joint_RX","borderConnections[11]","end_joint_RY","borderConnections[12]"
		,"end_joint_RZ","borderConnections[13]","end_jointrotateOrder","borderConnections[14]"
		,"moduleTransform_T","borderConnections[15]","moduleTransform_TX","borderConnections[16]"
		,"moduleTransform_TY","borderConnections[17]","moduleTransform_TZ","borderConnections[18]"
		,"moduleTransform_R","borderConnections[19]","root_joint_RX","borderConnections[1]"
		,"moduleTransform_RX","borderConnections[20]","moduleTransform_RY","borderConnections[21]"
		,"moduleTransform_RZ","borderConnections[22]","moduleTransform_globalScale","borderConnections[23]"
		,"root_joint_T","borderConnections[24]","root_joint_TX","borderConnections[25]","root_joint_TY"
		,"borderConnections[26]","root_joint_TZ","borderConnections[27]","hinge_joint_T","borderConnections[28]"
		,"hinge_joint_TX","borderConnections[29]","root_joint_RY","borderConnections[2]","hinge_joint_TY"
		,"borderConnections[30]","hinge_joint_TZ","borderConnections[31]","end_joint_T","borderConnections[32]"
		,"end_joint_TX","borderConnections[33]","end_joint_TY","borderConnections[34]","end_joint_TZ"
		,"borderConnections[35]","IK_root_joint_R","borderConnections[36]","IK_root_joint_RX"
		,"borderConnections[37]","IK_root_joint_RY","borderConnections[38]","IK_root_joint_RZ"
		,"borderConnections[39]","root_joint_RZ","borderConnections[3]","IK_hinge_joint_R"
		,"borderConnections[40]","IK_hinge_joint_RX","borderConnections[41]","IK_hinge_joint_RY"
		,"borderConnections[42]","IK_hinge_joint_RZ","borderConnections[43]","IK_end_joint_R"
		,"borderConnections[44]","IK_end_joint_RX","borderConnections[45]","IK_end_joint_RY"
		,"borderConnections[46]","IK_end_joint_RZ","borderConnections[47]","IK_hinge_joint_preferredAngle_representation_axis"
		,"borderConnections[48]","root_jointrotateOrder","borderConnections[4]","hinge_joint_R"
		,"borderConnections[5]","hinge_joint_RX","borderConnections[6]","hinge_joint_RY","borderConnections[7]"
		,"hinge_joint_RZ","borderConnections[8]","hinge_jointrotateOrder","borderConnections[9]"
		} ;
createNode container -n "Finger__instance_1:module_container";
	rename -uid "ED288FBB-4994-1481-3CCB-49BC4B7BCDC3";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 62 ".boc";
	setAttr -s 28 ".ish[34:61]" yes yes yes yes yes yes yes yes yes yes 
		yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes yes;
	setAttr ".ctor" -type "string" "micma";
	setAttr ".cdat" -type "string" "2024/12/12 12:40:31";
	setAttr ".aal" -type "attributeAlias" {"root_joint_R","borderConnections[0]","knuckle_2_joint_R"
		,"borderConnections[10]","knuckle_2_joint_RX","borderConnections[11]","knuckle_2_joint_RY"
		,"borderConnections[12]","knuckle_2_joint_RZ","borderConnections[13]","knuckle_2_jointrotateOrder"
		,"borderConnections[14]","knuckle_3_joint_R","borderConnections[15]","knuckle_3_joint_RX"
		,"borderConnections[16]","knuckle_3_joint_RY","borderConnections[17]","knuckle_3_joint_RZ"
		,"borderConnections[18]","knuckle_3_jointrotateOrder","borderConnections[19]","root_joint_RX"
		,"borderConnections[1]","end_joint_R","borderConnections[20]","end_joint_RX","borderConnections[21]"
		,"end_joint_RY","borderConnections[22]","end_joint_RZ","borderConnections[23]","end_jointrotateOrder"
		,"borderConnections[24]","moduleTransform_T","borderConnections[25]","moduleTransform_TX"
		,"borderConnections[26]","moduleTransform_TY","borderConnections[27]","moduleTransform_TZ"
		,"borderConnections[28]","moduleTransform_R","borderConnections[29]","root_joint_RY"
		,"borderConnections[2]","moduleTransform_RX","borderConnections[30]","moduleTransform_RY"
		,"borderConnections[31]","moduleTransform_RZ","borderConnections[32]","moduleTransform_globalScale"
		,"borderConnections[33]","root_joint_T","borderConnections[34]","root_joint_TX","borderConnections[35]"
		,"root_joint_TY","borderConnections[36]","root_joint_TZ","borderConnections[37]","knuckle_1_joint_T"
		,"borderConnections[38]","knuckle_1_joint_TX","borderConnections[39]","root_joint_RZ"
		,"borderConnections[3]","knuckle_1_joint_TY","borderConnections[40]","knuckle_1_joint_TZ"
		,"borderConnections[41]","knuckle_2_joint_T","borderConnections[42]","knuckle_2_joint_TX"
		,"borderConnections[43]","knuckle_2_joint_TY","borderConnections[44]","knuckle_2_joint_TZ"
		,"borderConnections[45]","knuckle_3_joint_T","borderConnections[46]","knuckle_3_joint_TX"
		,"borderConnections[47]","knuckle_3_joint_TY","borderConnections[48]","knuckle_3_joint_TZ"
		,"borderConnections[49]","root_jointrotateOrder","borderConnections[4]","end_joint_T"
		,"borderConnections[50]","end_joint_TX","borderConnections[51]","end_joint_TY","borderConnections[52]"
		,"end_joint_TZ","borderConnections[53]","root_joint_orientation","borderConnections[54]"
		,"root_joint_preferredAngle_representation_axis","borderConnections[55]","knuckle_1_joint_orientation"
		,"borderConnections[56]","knuckle_1_joint_preferredAngle_representation_axis","borderConnections[57]"
		,"knuckle_2_joint_orientation","borderConnections[58]","knuckle_2_joint_preferredAngle_representation_axis"
		,"borderConnections[59]","knuckle_1_joint_R","borderConnections[5]","knuckle_3_joint_orientation"
		,"borderConnections[60]","knuckle_3_joint_preferredAngle_representation_axis","borderConnections[61]"
		,"knuckle_1_joint_RX","borderConnections[6]","knuckle_1_joint_RY","borderConnections[7]"
		,"knuckle_1_joint_RZ","borderConnections[8]","knuckle_1_jointrotateOrder","borderConnections[9]"
		} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "8823FF55-482C-6154-89C5-06A97ADAEF56";
createNode shadingEngine -n "Finger__instance_1:root_joint_m_translation_control_SG";
	rename -uid "6640EBAA-4B92-4CBC-12FA-D680523C0CA9";
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:root_joint_m_translation_control";
	rename -uid "447E66B2-4E74-2067-E621-44B416C5C452";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo2";
	rename -uid "D2D8FE72-46F8-050D-344A-D1B07F96067C";
createNode shadingEngine -n "Finger__instance_1:knuckle_1_joint_m_translation_control_SG";
	rename -uid "FF2EE673-41B5-3833-9A4C-81A57681A92D";
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:knuckle_1_joint_m_translation_control";
	rename -uid "9F6A6925-4307-7505-D24E-0EB7E2010653";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo3";
	rename -uid "BA71CA30-4CA4-B025-7D05-1DA4122CB476";
createNode shadingEngine -n "Finger__instance_1:knuckle_2_joint_m_translation_control_SG";
	rename -uid "300FCD7B-457D-C30F-3A76-5DBD8B64052F";
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:knuckle_2_joint_m_translation_control";
	rename -uid "3A26766D-4B8C-C974-B940-64B4EAAC2BE3";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo4";
	rename -uid "B502DEE5-41B6-593A-B755-BBB4E3C0DD6E";
createNode shadingEngine -n "Finger__instance_1:knuckle_3_joint_m_translation_control_SG";
	rename -uid "A93A3516-46FC-CA27-274D-B5A9158D46CA";
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:knuckle_3_joint_m_translation_control";
	rename -uid "B18676B8-4585-4AB1-2DED-A5B57178CF66";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo5";
	rename -uid "B272431B-479F-1BAA-FEA1-B284F56050EF";
createNode shadingEngine -n "Finger__instance_1:end_joint_m_translation_control_SG";
	rename -uid "2907A2E1-43BB-0373-035B-42BCCD36E4B4";
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:end_joint_m_translation_control";
	rename -uid "6FD09E1D-40CD-1F0E-0D68-0AA62A5FDA0E";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo23";
	rename -uid "907AF63A-4683-7F94-2387-118514D98DD2";
createNode shadingEngine -n "HingeJoint__instance_2:root_joint_m_translation_control_SG";
	rename -uid "9C60FE92-48D0-6973-B77B-C7A4B3BCB5EF";
	setAttr ".ro" yes;
createNode lambert -n "HingeJoint__instance_2:root_joint_m_translation_control";
	rename -uid "6B106090-413F-D200-7E33-63A7E24F03DE";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo24";
	rename -uid "95616E15-4934-CD6E-4365-8EA9C972942A";
createNode shadingEngine -n "HingeJoint__instance_2:hinge_joint_m_translation_control_SG";
	rename -uid "5712E117-44F4-3292-24FB-E18FD7FA9618";
	setAttr ".ro" yes;
createNode lambert -n "HingeJoint__instance_2:hinge_joint_m_translation_control";
	rename -uid "BF550F51-4675-AC8D-75DB-99ACBB9D7DC6";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo25";
	rename -uid "3BC95908-4867-8DF6-A84B-A4879FDF55FF";
createNode shadingEngine -n "HingeJoint__instance_2:end_joint_m_translation_control_SG";
	rename -uid "27FB7CF6-489E-8910-E219-3BBDE8E3316D";
	setAttr ".ro" yes;
createNode lambert -n "HingeJoint__instance_2:end_joint_m_translation_control";
	rename -uid "88A8AD97-46F3-695F-8CE3-66BEB7159DD6";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.97250003 0.66659999 0.149 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode container -n "HingeJoint__instance_2:end_joint_translation_control_container";
	rename -uid "D947A436-4C7F-329B-22B7-13884DCFB979";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"end_joint_T","borderConnections[0]","end_joint_TX"
		,"borderConnections[1]","end_joint_TY","borderConnections[2]","end_joint_TZ","borderConnections[3]"
		} ;
createNode container -n "HingeJoint__instance_2:hook_container";
	rename -uid "D05DF36D-449A-C17D-0422-30948476BF98";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 8 ".boc";
	setAttr ".ctor" -type "string" "micma";
	setAttr ".cdat" -type "string" "2024/12/12 12:42:12";
	setAttr ".aal" -type "attributeAlias" {"hook_root_joint_R","borderConnections[0]"
		,"hook_root_joint_RX","borderConnections[1]","hook_root_joint_RY","borderConnections[2]"
		,"hook_root_joint_RZ","borderConnections[3]","hook_target_joint_R","borderConnections[4]"
		,"hook_target_joint_RX","borderConnections[5]","hook_target_joint_RY","borderConnections[6]"
		,"hook_target_joint_RZ","borderConnections[7]"} ;
createNode container -n "HingeJoint__instance_2:hinge_joint_hierarchy_representation_container";
	rename -uid "384B8DB7-456B-1D96-4ECF-B58EC41DF05E";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
createNode container -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_container";
	rename -uid "A10F51A2-464D-70D9-C90A-50A1751073D2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
createNode container -n "HingeJoint__instance_2:root_joint_hierarchy_representation_container";
	rename -uid "72BE6C64-429D-3EC9-0F47-E5A79DAB5558";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
createNode container -n "HingeJoint__instance_2:hinge_joint_translation_control_container";
	rename -uid "6A86D77A-4400-0588-5CA3-69933B4D36AD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"hinge_joint_T","borderConnections[0]","hinge_joint_TX"
		,"borderConnections[1]","hinge_joint_TY","borderConnections[2]","hinge_joint_TZ","borderConnections[3]"
		} ;
createNode distanceBetween -n "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator";
	rename -uid "E76A89A3-47F4-FABC-FDEA-5DBA390AE6AB";
createNode distanceBetween -n "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator";
	rename -uid "08185533-45F3-7349-061F-FF92D5E51675";
createNode distanceBetween -n "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator";
	rename -uid "43ECED0B-401C-7892-6307-5F866FC07A0E";
createNode hyperLayout -n "hyperLayout21";
	rename -uid "B5D281DB-43BA-5A0B-6DAA-EABFABF0C95E";
	setAttr ".ihi" 0;
	setAttr -s 74 ".hyp";
createNode distanceBetween -n "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator";
	rename -uid "33D7FC85-4A9F-815F-BAE5-CAB22A32147B";
createNode container -n "HingeJoint__instance_2:root_joint_translation_control_container";
	rename -uid "9D8FD051-4CAC-518A-0678-329D482A509E";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"root_joint_T","borderConnections[0]","root_joint_TX"
		,"borderConnections[1]","root_joint_TY","borderConnections[2]","root_joint_TZ","borderConnections[3]"
		} ;
createNode multiplyDivide -n "HingeJoint__instance_2:hinge_joint_ikHandle_scaleFactor";
	rename -uid "B69BD986-4792-26E3-7BAD-F59B1B6C34E8";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
createNode multiplyDivide -n "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue";
	rename -uid "8238F878-471E-9915-2662-4E97FA49AA43";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
createNode multiplyDivide -n "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue";
	rename -uid "D600F24D-4A5A-4B9E-4EF1-B4A723A73E8F";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
createNode multiplyDivide -n "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor";
	rename -uid "547F2746-459E-C3AA-3706-AAAC6A89A422";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
createNode multiplyDivide -n "HingeJoint__instance_2:hinge_joint_scaleMultiply";
	rename -uid "00A0A901-4AC8-C875-F755-9EB40A149B11";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
createNode multiplyDivide -n "HingeJoint__instance_2:root_joint_ikHandle_scaleFactor";
	rename -uid "FAC26F7D-458E-58D9-0878-36BF71920974";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
createNode multiplyDivide -n "HingeJoint__instance_2:end_joint_scaleMultiply";
	rename -uid "EE57E0BE-497B-4EE4-200D-B7B9037778D9";
	setAttr ".i1" -type "float3" 4.1231055 0 0 ;
createNode multiplyDivide -n "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor";
	rename -uid "9EE2A371-46E0-0801-209A-B8B7A8D1848F";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.1231055 1 1 ;
createNode hyperLayout -n "hyperLayout24";
	rename -uid "EB23835F-474D-E509-B8F3-0D95D9753062";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode container -n "HingeJoint__instance_2:hook_root_joint_hook_representation_container";
	rename -uid "E9EDDC35-449D-CBEA-3066-C48DB4F18110";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
createNode distanceBetween -n "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator";
	rename -uid "03AD0AF1-48B7-CC44-0FCD-7280D90C8CF9";
createNode hyperLayout -n "hyperLayout25";
	rename -uid "1ED2C066-465F-285A-A6FF-209AD1901E02";
	setAttr ".ihi" 0;
	setAttr -s 23 ".hyp";
createNode multiplyDivide -n "HingeJoint__instance_2:hook_root_joint_ikHandle_scaleFactor";
	rename -uid "A388AF8D-4CF1-180A-D9E7-9F911EB001D2";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.001 1 1 ;
createNode multiplyDivide -n "HingeJoint__instance_2:hook_target_joint_scaleMultiply";
	rename -uid "1BCE0011-47F5-3D52-4747-AB95630CE0E2";
	setAttr ".i1" -type "float3" 0.001 0 0 ;
createNode shadingEngine -n "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG";
	rename -uid "1DD5B049-4AD9-1BE8-CB0F-DFB0A9A91D6B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout26";
	rename -uid "158F4175-4BE0-3926-5B38-B78C1909ED9D";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation";
	rename -uid "4A1C80B3-4807-8C59-AB36-518ECBB10219";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.56099999 0.56099999 0.56099999 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo26";
	rename -uid "C8B952AD-4C0F-9FFF-D5BC-BBA160B0C2A1";
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "7061869D-435B-A1D6-0AF0-E68110A30E1B";
createNode shadingEngine -n "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG";
	rename -uid "A216A48C-4AC5-4AB6-78A9-EDA9CE39B984";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout28";
	rename -uid "C9955D9B-4648-DF4B-A80F-70B22C79F5F1";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_2:hinge_joint_m_hierarchyRepresentation";
	rename -uid "693BC45F-44DD-FD8E-4432-50B02F3D7551";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo28";
	rename -uid "D4C9A248-4B16-5A55-D2F4-84B8D7409C3B";
createNode shadingEngine -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG";
	rename -uid "2071B7F8-4116-C850-6802-1E8A863A7AF1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout29";
	rename -uid "5A1E23B7-4F88-A116-CFCC-13BB0E22F67E";
	setAttr ".ihi" 0;
	setAttr -s 8 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_2:IK_hinge_joint_m_preferredAngle_representation";
	rename -uid "5E0D8D28-4D48-F772-53DA-BCBD8879783E";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode animCurveUA -n "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_rotateX";
	rename -uid "10CCFD8B-46B8-CBE7-4AF9-049DBB8A80E7";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
createNode materialInfo -n "materialInfo29";
	rename -uid "9F2CA293-4A08-30ED-36AB-D4A9B37F1F4F";
createNode shadingEngine -n "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG";
	rename -uid "BADBB989-4E5F-272E-441C-ACBB7A42C840";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout27";
	rename -uid "75D079E1-47A2-FFFC-46DA-1385CDBB8BC6";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "HingeJoint__instance_2:root_joint_m_hierarchyRepresentation";
	rename -uid "CC306C4E-4C44-E37A-E46A-99BE4A164951";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo27";
	rename -uid "37E1440F-49C3-A67E-DFC9-448C59FCFD25";
createNode hyperLayout -n "hyperLayout23";
	rename -uid "89AD4217-4A73-4E79-61D1-2DA212028EDD";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout22";
	rename -uid "C6A29CD3-45A4-D8D2-FDAC-AEA39DEEB239";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode multiplyDivide -n "Finger__instance_1:knuckle_2_joint_ikHandle_scaleFactor";
	rename -uid "895CFC55-457D-E6D8-8C2A-F5B482D714C2";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "Finger__instance_1:knuckle_1_joint_ikHandle_scaleFactor";
	rename -uid "CB5AED3F-41BF-95CE-CFC9-60A20535DEC6";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "Finger__instance_1:knuckle_2_joint_scaleMultiply";
	rename -uid "99C6CFE9-45CF-F1EC-6586-01BCB27F7391";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode multiplyDivide -n "Finger__instance_1:knuckle_3_joint_ikHandle_scaleFactor";
	rename -uid "DC555F52-4168-002E-C8DE-29B125A964F0";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "Finger__instance_1:end_joint_scaleMultiply";
	rename -uid "9B42067E-402C-BA6E-5531-94BACCBAC18E";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode multiplyDivide -n "Finger__instance_1:knuckle_3_joint_scaleMultiply";
	rename -uid "5C199EFE-44E8-9EFA-8A98-16826EDA1781";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode container -n "Finger__instance_1:knuckle_2_joint_orientation_control_container";
	rename -uid "3363174B-43FF-A2CB-89C7-69833BFD8675";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:25:27";
	setAttr ".aal" -type "attributeAlias" {"knuckle_2_joint_orientation","borderConnections[0]"
		} ;
createNode container -n "Finger__instance_1:knuckle_1_joint_orientation_control_container";
	rename -uid "DF463F5D-4EF8-E5F8-BF11-86831C54BAB3";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:25:27";
	setAttr ".aal" -type "attributeAlias" {"knuckle_1_joint_orientation","borderConnections[0]"
		} ;
createNode container -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_container";
	rename -uid "4299024C-4259-3962-E477-3AB0562496EC";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
createNode container -n "Finger__instance_1:knuckle_3_joint_orientation_control_container";
	rename -uid "30AB2A39-4B8B-9B50-8A4D-BE95F35B075A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:25:27";
	setAttr ".aal" -type "attributeAlias" {"knuckle_3_joint_orientation","borderConnections[0]"
		} ;
createNode container -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_container";
	rename -uid "F79863B9-4574-2692-79C9-B6889D02236C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
createNode container -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_container";
	rename -uid "64627A32-49BC-8ED7-7EC7-69B1FB4403C7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
createNode container -n "Finger__instance_1:root_joint_preferredAngle_representation_container";
	rename -uid "441305E0-4FFE-2A66-367E-DFB995BA3C55";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/21 21:13:27";
	setAttr ".aal" -type "attributeAlias" {"axis","borderConnections[0]"} ;
createNode distanceBetween -n "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator";
	rename -uid "597F86AE-4B2B-1769-D82D-B1B1108D0A21";
createNode distanceBetween -n "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator";
	rename -uid "91ECF6DA-4426-8B29-A67F-8EA96BFB3CBF";
createNode distanceBetween -n "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator";
	rename -uid "C74F6349-4A7B-006C-4E02-8795893E4FB7";
createNode hyperLayout -n "hyperLayout1";
	rename -uid "D7387929-4183-4774-E75A-C0B1FCEBDFFE";
	setAttr ".ihi" 0;
	setAttr -s 100 ".hyp";
createNode distanceBetween -n "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator";
	rename -uid "CA3674F4-4DAF-2F5F-FCCF-729D51BB5CE3";
createNode multiplyDivide -n "Finger__instance_1:root_joint_ikHandle_scaleFactor";
	rename -uid "E64F76C7-4169-8B9E-53EA-E6A58711C69A";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "Finger__instance_1:knuckle_1_joint_scaleMultiply";
	rename -uid "5C674F27-401C-E18B-FC9A-699D2BD5E2DC";
	setAttr ".i1" -type "float3" 4 0 0 ;
createNode container -n "Finger__instance_1:knuckle_1_joint_translation_control_container";
	rename -uid "9BF63AA9-42C2-780D-7F7B-0EA810703D87";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"knuckle_1_joint_T","borderConnections[0]"
		,"knuckle_1_joint_TX","borderConnections[1]","knuckle_1_joint_TY","borderConnections[2]"
		,"knuckle_1_joint_TZ","borderConnections[3]"} ;
createNode container -n "Finger__instance_1:end_joint_translation_control_container";
	rename -uid "BA03E5EF-4617-D7D3-6BE8-B48A91B59F2B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"end_joint_T","borderConnections[0]","end_joint_TX"
		,"borderConnections[1]","end_joint_TY","borderConnections[2]","end_joint_TZ","borderConnections[3]"
		} ;
createNode container -n "Finger__instance_1:hook_container";
	rename -uid "520C90FF-4715-4A25-2A09-5396CE67D894";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".isc" yes;
	setAttr -s 8 ".boc";
	setAttr ".ctor" -type "string" "micma";
	setAttr ".cdat" -type "string" "2024/12/12 12:40:31";
	setAttr ".aal" -type "attributeAlias" {"hook_root_joint_R","borderConnections[0]"
		,"hook_root_joint_RX","borderConnections[1]","hook_root_joint_RY","borderConnections[2]"
		,"hook_root_joint_RZ","borderConnections[3]","hook_target_joint_R","borderConnections[4]"
		,"hook_target_joint_RX","borderConnections[5]","hook_target_joint_RY","borderConnections[6]"
		,"hook_target_joint_RZ","borderConnections[7]"} ;
createNode container -n "Finger__instance_1:knuckle_2_joint_translation_control_container";
	rename -uid "6E8C4A24-404D-0D7F-CF72-E0BF8966D93C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"knuckle_2_joint_T","borderConnections[0]"
		,"knuckle_2_joint_TX","borderConnections[1]","knuckle_2_joint_TY","borderConnections[2]"
		,"knuckle_2_joint_TZ","borderConnections[3]"} ;
createNode container -n "Finger__instance_1:root_joint_orientation_control_container";
	rename -uid "13119435-46D5-2785-E66D-A48A6EB6C4BF";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:25:27";
	setAttr ".aal" -type "attributeAlias" {"root_joint_orientation","borderConnections[0]"
		} ;
createNode container -n "Finger__instance_1:root_joint_translation_control_container";
	rename -uid "EB00343D-4260-2140-E50B-35BF6B6E5DB7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"root_joint_T","borderConnections[0]","root_joint_TX"
		,"borderConnections[1]","root_joint_TY","borderConnections[2]","root_joint_TZ","borderConnections[3]"
		} ;
createNode container -n "Finger__instance_1:knuckle_3_joint_translation_control_container";
	rename -uid "32C4A848-467F-1437-5E32-9BA774C5D50B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 4 ".boc";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/08/05 11:57:53";
	setAttr ".aal" -type "attributeAlias" {"knuckle_3_joint_T","borderConnections[0]"
		,"knuckle_3_joint_TX","borderConnections[1]","knuckle_3_joint_TY","borderConnections[2]"
		,"knuckle_3_joint_TZ","borderConnections[3]"} ;
createNode shadingEngine -n "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG";
	rename -uid "88008CAA-412A-0C10-99AE-6F819CBD5DBE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG";
	rename -uid "2E118939-407C-C3BD-9556-BEBFCFC89EB3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout17";
	rename -uid "F2A2084F-41C0-1E8B-02F0-F892708862C5";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 286;
	setAttr ".hyp[0].y" 613;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 286;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 497;
	setAttr ".hyp[3].y" 487;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" 474;
	setAttr ".hyp[4].y" 223;
	setAttr ".hyp[4].isf" yes;
	setAttr ".hyp[5].x" 148;
	setAttr ".hyp[5].y" 353;
	setAttr ".hyp[5].isf" yes;
	setAttr ".hyp[6].x" 148;
	setAttr ".hyp[6].y" 353;
	setAttr ".hyp[6].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:knuckle_2_joint_m_yAxisBlock";
	rename -uid "16FECBF4-42D9-1D69-DEB5-E7A887B5096D";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.32859999 0.69620001 0.1762 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode lambert -n "Finger__instance_1:knuckle_2_joint_m_zAxisBlock";
	rename -uid "05EE3660-4A78-CFB9-A375-6C9A6E77C03C";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo17";
	rename -uid "387E56BC-484F-CE6C-71FC-BE9A45BF4187";
createNode materialInfo -n "materialInfo18";
	rename -uid "932DFB51-49AD-CAC2-BFA6-479CA5177B92";
createNode groupId -n "groupId25";
	rename -uid "D77B1EA0-4B78-B3E8-3821-F4B00B54168A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId26";
	rename -uid "7FAC83F6-4F64-79DB-B4F3-76BCAE6E3918";
	setAttr ".ihi" 0;
createNode groupId -n "groupId24";
	rename -uid "3E80E4CD-4007-BEE6-AFB2-A3A3474DBECC";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG";
	rename -uid "CF9A149C-4803-E2FA-95F8-F58B69AF480C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG";
	rename -uid "F466945A-44D0-6840-9B92-438D4D59CBD3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode lambert -n "Finger__instance_1:knuckle_1_joint_m_zAxisBlock";
	rename -uid "48CD7644-458A-00CE-9CE3-0884E62E25F4";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode lambert -n "Finger__instance_1:knuckle_1_joint_m_yAxisBlock";
	rename -uid "8809BD1D-44CD-80A0-31BE-4E95770931C7";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.32859999 0.69620001 0.1762 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode hyperLayout -n "hyperLayout15";
	rename -uid "7606180D-461E-EF8D-38A0-269688E733A2";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 286;
	setAttr ".hyp[0].y" 613;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 286;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 497;
	setAttr ".hyp[3].y" 487;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" 474;
	setAttr ".hyp[4].y" 223;
	setAttr ".hyp[4].isf" yes;
	setAttr ".hyp[5].x" 148;
	setAttr ".hyp[5].y" 353;
	setAttr ".hyp[5].isf" yes;
	setAttr ".hyp[6].x" 148;
	setAttr ".hyp[6].y" 353;
	setAttr ".hyp[6].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "materialInfo14";
	rename -uid "2E86BD86-4F1B-8D11-B5EF-CF86840EC2BA";
createNode materialInfo -n "materialInfo15";
	rename -uid "BA6F1906-43E6-9B8C-34E6-D1BCBDEF5283";
createNode groupId -n "groupId22";
	rename -uid "083D3292-4606-C193-6EFB-7A928677C496";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	rename -uid "606FCC88-44FE-8D4F-DD24-09ACCABA97FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId21";
	rename -uid "808A8447-4B3E-36E9-7AF3-4488FB0E6AE1";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG";
	rename -uid "D0053E88-4EDA-E479-BEC3-92AE6913E881";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout16";
	rename -uid "CB9C4703-4EA0-1BB1-AB10-43AD208634C4";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:knuckle_1_joint_m_preferredAngle_representation";
	rename -uid "0798CC60-4C90-1B5A-E5C8-63BCA705F344";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode animCurveUA -n "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX";
	rename -uid "225C1146-4780-540A-72BE-63AC297CCC16";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
createNode materialInfo -n "materialInfo16";
	rename -uid "8B9CF9A2-4084-63DF-8DC4-28A4916D6B61";
createNode shadingEngine -n "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG";
	rename -uid "3A903961-4B28-55AA-201E-CEA18DE20504";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode shadingEngine -n "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG";
	rename -uid "CE0FF16F-498F-3EDE-F71C-2E84CEB3A341";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout19";
	rename -uid "E3C363AA-4CDF-420D-0581-F1B0DCBBB842";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 286;
	setAttr ".hyp[0].y" 613;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 286;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 497;
	setAttr ".hyp[3].y" 487;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" 474;
	setAttr ".hyp[4].y" 223;
	setAttr ".hyp[4].isf" yes;
	setAttr ".hyp[5].x" 148;
	setAttr ".hyp[5].y" 353;
	setAttr ".hyp[5].isf" yes;
	setAttr ".hyp[6].x" 148;
	setAttr ".hyp[6].y" 353;
	setAttr ".hyp[6].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:knuckle_3_joint_m_zAxisBlock";
	rename -uid "28DBAD58-4F37-EA61-5AFF-099FC90FEAFA";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode lambert -n "Finger__instance_1:knuckle_3_joint_m_yAxisBlock";
	rename -uid "EEC718A6-48F5-E7B5-3CE1-5D9A4D126A57";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.32859999 0.69620001 0.1762 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo20";
	rename -uid "7ADA01A6-4DC6-7150-492A-BE837BE16501";
createNode materialInfo -n "materialInfo21";
	rename -uid "F6FA911F-4CEA-FDDF-23AF-C5AA908B4587";
createNode groupId -n "groupId28";
	rename -uid "748EEC17-4B5C-14C0-8AB8-6985D1A58C5A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "B4C27D58-47F5-111E-7A99-179380144AF3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "45D09335-4F9E-E9A6-640A-9BA1D826352C";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG";
	rename -uid "9103B6A1-4E44-12C9-9541-76A8398FA1E0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout18";
	rename -uid "B6398FDF-4BFE-5BF3-F07A-3FBEF548CBF9";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:knuckle_2_joint_m_preferredAngle_representation";
	rename -uid "A0C5FC15-4C84-FC9E-E727-EEA6148DD717";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode animCurveUA -n "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX";
	rename -uid "D419625B-4B12-F163-1613-CB8B29DDEFAB";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
createNode materialInfo -n "materialInfo19";
	rename -uid "7015CA91-4178-8435-8520-1B996048AC47";
createNode shadingEngine -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG";
	rename -uid "5A0D4525-4B2A-306E-644A-868F6ADA8F36";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout20";
	rename -uid "0EF55823-4BDB-225A-C547-899D3B103CAB";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:knuckle_3_joint_m_preferredAngle_representation";
	rename -uid "3A175B8D-49AD-A43E-168A-EAAC423A60D6";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode animCurveUA -n "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX";
	rename -uid "03B84E6B-4C90-9EFA-2088-0F9E54119B12";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
createNode materialInfo -n "materialInfo22";
	rename -uid "8B17EEC6-4643-9E12-F3A5-03A0FFB7B257";
createNode shadingEngine -n "Finger__instance_1:root_joint_preferredAngle_representation_SG";
	rename -uid "01277682-4058-E1B5-A533-4B8A0A566FEF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode animCurveUA -n "Finger__instance_1:root_joint_preferredAngle_representation_rotateX";
	rename -uid "CADFD37C-4B30-508B-35C2-F2A1DA4ABEEC";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 180 2 90 3 -90;
createNode lambert -n "Finger__instance_1:root_joint_m_preferredAngle_representation";
	rename -uid "C5EA5420-4C0C-51A3-7E7A-97BA4802111B";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.90200001 0.79193944 0.094710015 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode hyperLayout -n "hyperLayout14";
	rename -uid "219C7393-4066-BE53-EC5F-80BFBF96CDF9";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 583;
	setAttr ".hyp[0].y" -264;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 376;
	setAttr ".hyp[1].y" -334;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 108;
	setAttr ".hyp[2].y" -158;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 399;
	setAttr ".hyp[3].y" -32;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" -53;
	setAttr ".hyp[4].y" -463;
	setAttr ".hyp[4].isf" yes;
	setAttr ".anf" yes;
createNode materialInfo -n "materialInfo13";
	rename -uid "5EFD9D85-4C3E-3A65-D598-688A1EB96CEF";
createNode groupId -n "groupId19";
	rename -uid "CDE01A56-475E-90A6-F41C-3EAA3FCA2988";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Finger__instance_1:root_joint_m_yAxisBlockSG";
	rename -uid "AB3A22C8-4A7C-DC9B-8AC2-848025D9F3A1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
	rename -uid "18D4F227-415D-CFDB-CCC3-64A720F45F67";
createNode lambert -n "Finger__instance_1:root_joint_m_yAxisBlock";
	rename -uid "DCBDBA4E-4469-5941-1F28-08BA8954D08F";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.32859999 0.69620001 0.1762 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode groupId -n "groupId20";
	rename -uid "DCD8B661-413F-39F8-5BEB-8DA3188ABB11";
	setAttr ".ihi" 0;
createNode shadingEngine -n "Finger__instance_1:root_joint_m_zAxisBlockSG";
	rename -uid "654C7208-48E6-F173-3119-4B96AB09C094";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
	rename -uid "6B416471-4F33-D0E9-9E79-44BD482EA0EE";
createNode lambert -n "Finger__instance_1:root_joint_m_zAxisBlock";
	rename -uid "7936F025-4357-EF99-792D-12856C89EE65";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0 0.1882 0.34110001 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode groupId -n "groupId18";
	rename -uid "BCEE876A-4FF4-BE49-9AC9-14A4C49F3D59";
	setAttr ".ihi" 0;
createNode hyperLayout -n "hyperLayout3";
	rename -uid "7931436D-4139-A88C-9FD6-71970C00E975";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout6";
	rename -uid "95ECC4E2-4CC2-93E6-62C9-50A66D08B231";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout7";
	rename -uid "F3CFFF67-4F48-1A36-6EF7-E3ADD3DE3CEE";
	setAttr ".ihi" 0;
	setAttr -s 23 ".hyp";
createNode distanceBetween -n "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator";
	rename -uid "E89F7BAC-4D83-6E35-50CC-84BD6B6124DE";
createNode multiplyDivide -n "Finger__instance_1:hook_root_joint_ikHandle_scaleFactor";
	rename -uid "53D503BA-4A65-DD1F-761A-3EB06820A242";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 0.001 1 1 ;
createNode multiplyDivide -n "Finger__instance_1:hook_target_joint_scaleMultiply";
	rename -uid "7BF67742-4F6A-1068-913C-089F0986228D";
	setAttr ".i1" -type "float3" 0.001 0 0 ;
createNode container -n "Finger__instance_1:hook_root_joint_hook_representation_container";
	rename -uid "B1265E2D-4729-0726-EAC5-FE9E1B830431";
	setAttr ".ctor" -type "string" "Administrator";
	setAttr ".cdat" -type "string" "2009/07/28 18:18:37";
createNode shadingEngine -n "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG";
	rename -uid "048039F8-4CD9-A8C1-59C9-029CD8DE4EDA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode hyperLayout -n "hyperLayout8";
	rename -uid "E4A7DAD6-4690-7FE4-F0FD-8FA195079223";
	setAttr ".ihi" 0;
	setAttr -s 7 ".hyp";
	setAttr ".hyp[1].x" 71;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 259;
	setAttr ".hyp[3].y" 93;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lambert -n "Finger__instance_1:hook_root_joint_m_hookRepresentation";
	rename -uid "A60BF18E-4B7C-7C40-2DD5-9D8DC36D655A";
	setAttr ".dc" 0;
	setAttr ".c" -type "float3" 0.56099999 0.56099999 0.56099999 ;
	setAttr ".ambc" -type "float3" 1 1 1 ;
createNode materialInfo -n "materialInfo6";
	rename -uid "2F2AAAA6-40F1-4DD2-0421-E69EC10BB2AA";
createNode hyperLayout -n "hyperLayout4";
	rename -uid "2E181E0F-423C-C55C-2EA3-B88E11D51A39";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout13";
	rename -uid "7BC4BDD5-40E8-0293-3BF2-7EB2F788B962";
	setAttr ".ihi" 0;
	setAttr -s 9 ".hyp";
	setAttr ".hyp[0].x" 286;
	setAttr ".hyp[0].y" 613;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 286;
	setAttr ".hyp[1].y" 93;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[3].x" 497;
	setAttr ".hyp[3].y" 487;
	setAttr ".hyp[3].isf" yes;
	setAttr ".hyp[4].x" 474;
	setAttr ".hyp[4].y" 223;
	setAttr ".hyp[4].isf" yes;
	setAttr ".hyp[5].x" 148;
	setAttr ".hyp[5].y" 353;
	setAttr ".hyp[5].isf" yes;
	setAttr ".hyp[6].x" 148;
	setAttr ".hyp[6].y" 353;
	setAttr ".hyp[6].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout2";
	rename -uid "96885FF4-4D73-8D99-2CD0-8EBB3FDC941E";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode hyperLayout -n "hyperLayout5";
	rename -uid "F5207E6C-4ED4-AD46-DF17-6492C1EDBEF8";
	setAttr ".ihi" 0;
	setAttr -s 4 ".hyp";
	setAttr ".hyp[0].x" 71;
	setAttr ".hyp[0].y" 93;
	setAttr ".hyp[0].isf" yes;
	setAttr ".hyp[1].x" 409;
	setAttr ".hyp[1].y" 309;
	setAttr ".hyp[1].isf" yes;
	setAttr ".hyp[2].x" 240;
	setAttr ".hyp[2].y" 309;
	setAttr ".hyp[2].isf" yes;
	setAttr ".hyp[3].x" 71;
	setAttr ".hyp[3].y" 309;
	setAttr ".hyp[3].isf" yes;
	setAttr ".anf" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E33B9D46-485E-736C-008A-16BC1F913305";
	setAttr -s 49 ".lnk";
	setAttr -s 49 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -s 27 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 30 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 30 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 5 ".sol";
connectAttr "Finger__instance_1:root_joint_pointConstraint.ctx" "Finger__instance_1:root_joint.tx"
		;
connectAttr "Finger__instance_1:root_joint_pointConstraint.cty" "Finger__instance_1:root_joint.ty"
		;
connectAttr "Finger__instance_1:root_joint_pointConstraint.ctz" "Finger__instance_1:root_joint.tz"
		;
connectAttr "Finger__instance_1:root_joint.s" "Finger__instance_1:knuckle_1_joint.is"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_scaleMultiply.ox" "Finger__instance_1:knuckle_1_joint.tx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.s" "Finger__instance_1:knuckle_2_joint.is"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_scaleMultiply.ox" "Finger__instance_1:knuckle_2_joint.tx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.s" "Finger__instance_1:knuckle_3_joint.is"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_scaleMultiply.ox" "Finger__instance_1:knuckle_3_joint.tx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.s" "Finger__instance_1:end_joint.is"
		;
connectAttr "Finger__instance_1:end_joint_scaleMultiply.ox" "Finger__instance_1:end_joint.tx"
		;
connectAttr "Finger__instance_1:end_joint.tx" "Finger__instance_1:knuckle_3_jointikEffector.tx"
		;
connectAttr "Finger__instance_1:end_joint.ty" "Finger__instance_1:knuckle_3_jointikEffector.ty"
		;
connectAttr "Finger__instance_1:end_joint.tz" "Finger__instance_1:knuckle_3_jointikEffector.tz"
		;
connectAttr "Finger__instance_1:end_joint.opm" "Finger__instance_1:knuckle_3_jointikEffector.opm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.tx" "Finger__instance_1:knuckle_2_jointikEffector.tx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ty" "Finger__instance_1:knuckle_2_jointikEffector.ty"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.tz" "Finger__instance_1:knuckle_2_jointikEffector.tz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.opm" "Finger__instance_1:knuckle_2_jointikEffector.opm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.tx" "Finger__instance_1:knuckle_1_jointikEffector.tx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ty" "Finger__instance_1:knuckle_1_jointikEffector.ty"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.tz" "Finger__instance_1:knuckle_1_jointikEffector.tz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.opm" "Finger__instance_1:knuckle_1_jointikEffector.opm"
		;
connectAttr "Finger__instance_1:root_joint.pim" "Finger__instance_1:root_joint_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:root_joint.rp" "Finger__instance_1:root_joint_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:root_joint.rpt" "Finger__instance_1:root_joint_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.t" "Finger__instance_1:root_joint_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rp" "Finger__instance_1:root_joint_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rpt" "Finger__instance_1:root_joint_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.pm" "Finger__instance_1:root_joint_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:root_joint_pointConstraint.w0" "Finger__instance_1:root_joint_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.tx" "Finger__instance_1:root_jointikEffector.tx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ty" "Finger__instance_1:root_jointikEffector.ty"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.tz" "Finger__instance_1:root_jointikEffector.tz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.opm" "Finger__instance_1:root_jointikEffector.opm"
		;
connectAttr "Finger__instance_1:root_joint.msg" "Finger__instance_1:root_joint_ikHandle.hsj"
		;
connectAttr "Finger__instance_1:root_jointikEffector.hp" "Finger__instance_1:root_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "Finger__instance_1:root_joint_ikHandle.hsv";
connectAttr "root_joint_ikHandle_poleVectorConstraint1.ctx" "Finger__instance_1:root_joint_ikHandle.pvx"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.cty" "Finger__instance_1:root_joint_ikHandle.pvy"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.ctz" "Finger__instance_1:root_joint_ikHandle.pvz"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_pointConstraint.ctx" "Finger__instance_1:root_joint_ikHandle.tx"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_pointConstraint.cty" "Finger__instance_1:root_joint_ikHandle.ty"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_pointConstraint.ctz" "Finger__instance_1:root_joint_ikHandle.tz"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle.pim" "root_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Finger__instance_1:root_joint.pm" "root_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Finger__instance_1:root_joint.t" "root_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator.t" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator.rp" "root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator.rpt" "root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator.pm" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.w0" "root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle.pim" "Finger__instance_1:root_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle.rp" "Finger__instance_1:root_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle.rpt" "Finger__instance_1:root_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.t" "Finger__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.rp" "Finger__instance_1:root_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.rpt" "Finger__instance_1:root_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.pm" "Finger__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_pointConstraint.w0" "Finger__instance_1:root_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.ctx" "Finger__instance_1:root_joint_rootPosLocator.tx"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.cty" "Finger__instance_1:root_joint_rootPosLocator.ty"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.ctz" "Finger__instance_1:root_joint_rootPosLocator.tz"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator.pim" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator.rp" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator.rpt" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:root_joint.t" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint.rp" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint.rpt" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint.pm" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.w0" "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_1_joint_endPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_1_joint_endPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_1_joint_endPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.pim" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.rp" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.t" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.rp" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.rpt" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.pm" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.msg" "Finger__instance_1:knuckle_1_joint_ikHandle.hsj"
		;
connectAttr "Finger__instance_1:knuckle_1_jointikEffector.hp" "Finger__instance_1:knuckle_1_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "Finger__instance_1:knuckle_1_joint_ikHandle.hsv";
connectAttr "knuckle_1_joint_ikHandle_poleVectorConstraint1.ctx" "Finger__instance_1:knuckle_1_joint_ikHandle.pvx"
		;
connectAttr "knuckle_1_joint_ikHandle_poleVectorConstraint1.cty" "Finger__instance_1:knuckle_1_joint_ikHandle.pvy"
		;
connectAttr "knuckle_1_joint_ikHandle_poleVectorConstraint1.ctz" "Finger__instance_1:knuckle_1_joint_ikHandle.pvz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.ctx" "Finger__instance_1:knuckle_1_joint_ikHandle.tx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.cty" "Finger__instance_1:knuckle_1_joint_ikHandle.ty"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.ctz" "Finger__instance_1:knuckle_1_joint_ikHandle.tz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle.pim" "knuckle_1_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.pm" "knuckle_1_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.t" "knuckle_1_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator.t" "knuckle_1_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator.rp" "knuckle_1_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator.rpt" "knuckle_1_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator.pm" "knuckle_1_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_1_joint_ikHandle_poleVectorConstraint1.w0" "knuckle_1_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle.pim" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle.rp" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle.rpt" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.t" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.rp" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.pm" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.w0" "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_1_joint_rootPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_1_joint_rootPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_1_joint_rootPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator.pim" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator.rp" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator.rpt" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.t" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rp" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rpt" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.pm" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_2_joint_endPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_2_joint_endPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_2_joint_endPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.pim" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.rp" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.t" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.rp" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.rpt" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.pm" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.msg" "Finger__instance_1:knuckle_2_joint_ikHandle.hsj"
		;
connectAttr "Finger__instance_1:knuckle_2_jointikEffector.hp" "Finger__instance_1:knuckle_2_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "Finger__instance_1:knuckle_2_joint_ikHandle.hsv";
connectAttr "knuckle_2_joint_ikHandle_poleVectorConstraint1.ctx" "Finger__instance_1:knuckle_2_joint_ikHandle.pvx"
		;
connectAttr "knuckle_2_joint_ikHandle_poleVectorConstraint1.cty" "Finger__instance_1:knuckle_2_joint_ikHandle.pvy"
		;
connectAttr "knuckle_2_joint_ikHandle_poleVectorConstraint1.ctz" "Finger__instance_1:knuckle_2_joint_ikHandle.pvz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.ctx" "Finger__instance_1:knuckle_2_joint_ikHandle.tx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.cty" "Finger__instance_1:knuckle_2_joint_ikHandle.ty"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.ctz" "Finger__instance_1:knuckle_2_joint_ikHandle.tz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle.pim" "knuckle_2_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.pm" "knuckle_2_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.t" "knuckle_2_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator.t" "knuckle_2_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator.rp" "knuckle_2_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator.rpt" "knuckle_2_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator.pm" "knuckle_2_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_2_joint_ikHandle_poleVectorConstraint1.w0" "knuckle_2_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle.pim" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle.rp" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle.rpt" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.t" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.rp" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.pm" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.w0" "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_2_joint_rootPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_2_joint_rootPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_2_joint_rootPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator.pim" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator.rp" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator.rpt" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.t" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rp" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rpt" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.pm" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_3_joint_endPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_3_joint_endPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_3_joint_endPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.pim" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.rp" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.t" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.rp" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.rpt" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.pm" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.msg" "Finger__instance_1:knuckle_3_joint_ikHandle.hsj"
		;
connectAttr "Finger__instance_1:knuckle_3_jointikEffector.hp" "Finger__instance_1:knuckle_3_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "Finger__instance_1:knuckle_3_joint_ikHandle.hsv";
connectAttr "knuckle_3_joint_ikHandle_poleVectorConstraint1.ctx" "Finger__instance_1:knuckle_3_joint_ikHandle.pvx"
		;
connectAttr "knuckle_3_joint_ikHandle_poleVectorConstraint1.cty" "Finger__instance_1:knuckle_3_joint_ikHandle.pvy"
		;
connectAttr "knuckle_3_joint_ikHandle_poleVectorConstraint1.ctz" "Finger__instance_1:knuckle_3_joint_ikHandle.pvz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.ctx" "Finger__instance_1:knuckle_3_joint_ikHandle.tx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.cty" "Finger__instance_1:knuckle_3_joint_ikHandle.ty"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.ctz" "Finger__instance_1:knuckle_3_joint_ikHandle.tz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle.pim" "knuckle_3_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.pm" "knuckle_3_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.t" "knuckle_3_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator.t" "knuckle_3_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator.rp" "knuckle_3_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator.rpt" "knuckle_3_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator.pm" "knuckle_3_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_3_joint_ikHandle_poleVectorConstraint1.w0" "knuckle_3_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle.pim" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle.rp" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle.rpt" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.t" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.rp" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.rpt" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.pm" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.w0" "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.ctx" "Finger__instance_1:knuckle_3_joint_rootPosLocator.tx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.cty" "Finger__instance_1:knuckle_3_joint_rootPosLocator.ty"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.ctz" "Finger__instance_1:knuckle_3_joint_rootPosLocator.tz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator.pim" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator.rp" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator.rpt" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.t" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rp" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rpt" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.pm" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.w0" "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator_pointConstraint.ctx" "Finger__instance_1:end_joint_endPosLocator.tx"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator_pointConstraint.cty" "Finger__instance_1:end_joint_endPosLocator.ty"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator_pointConstraint.ctz" "Finger__instance_1:end_joint_endPosLocator.tz"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.pim" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.rp" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.rpt" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.t" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.rp" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.rpt" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.pm" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator_pointConstraint.w0" "Finger__instance_1:end_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctx" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.tx"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.cty" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.ty"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctz" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.tz"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.crx" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.rx"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.cry" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.ry"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.crz" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.rz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.tx" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.sx"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csy" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.sy"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csz" "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.sz"
		;
connectAttr "groupId19.id" "Finger__instance_1:root_joint_orientation_controlShape.iog.og[0].gid"
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlockSG.mwc" "Finger__instance_1:root_joint_orientation_controlShape.iog.og[0].gco"
		;
connectAttr "groupId20.id" "Finger__instance_1:root_joint_orientation_controlShape.iog.og[1].gid"
		;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlockSG.mwc" "Finger__instance_1:root_joint_orientation_controlShape.iog.og[1].gco"
		;
connectAttr "groupId18.id" "Finger__instance_1:root_joint_orientation_controlShape.ciog.cog[0].cgid"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.ro" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.pim" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.rp" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.rpt" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:root_joint.t" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint.rp" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint.rpt" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint.r" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:root_joint.ro" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:root_joint.s" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:root_joint.pm" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:root_joint.jo" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:root_joint.ssc" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:root_joint.is" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.w0" "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.pim" "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:module_transform.s" "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:module_transform.pm" "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.w0" "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctx" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.tx"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.cty" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.ty"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctz" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.tz"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.crx" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.rx"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.cry" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.ry"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.crz" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.rz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.tx" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.sx"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csy" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.sy"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csz" "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.sz"
		;
connectAttr "groupId22.id" "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[0].gid"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.mwc" "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[0].gco"
		;
connectAttr "groupId23.id" "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[1].gid"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.mwc" "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[1].gco"
		;
connectAttr "groupId21.id" "Finger__instance_1:knuckle_1_joint_orientation_controlShape.ciog.cog[0].cgid"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.ro" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.pim" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.rp" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.rpt" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.t" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rp" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rpt" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.r" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ro" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.s" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.pm" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.jo" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ssc" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.is" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.w0" "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.pim" "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:module_transform.s" "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:module_transform.pm" "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.w0" "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctx" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.tx"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.cty" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.ty"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctz" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.tz"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.crx" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.rx"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.cry" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.ry"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.crz" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.rz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.tx" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.sx"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csy" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.sy"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csz" "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.sz"
		;
connectAttr "groupId25.id" "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[0].gid"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.mwc" "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[0].gco"
		;
connectAttr "groupId26.id" "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[1].gid"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.mwc" "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[1].gco"
		;
connectAttr "groupId24.id" "Finger__instance_1:knuckle_2_joint_orientation_controlShape.ciog.cog[0].cgid"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.ro" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.pim" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.rp" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.rpt" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.t" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rp" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rpt" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.r" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ro" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.s" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.pm" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.jo" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ssc" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.is" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.w0" "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.pim" "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:module_transform.s" "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:module_transform.pm" "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.w0" "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctx" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.tx"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.cty" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.ty"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.ctz" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.tz"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.crx" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.rx"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.cry" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.ry"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.crz" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.rz"
		;
connectAttr "Finger__instance_1:end_joint.tx" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.sx"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csy" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.sy"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.csz" "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.sz"
		;
connectAttr "groupId28.id" "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[0].gid"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.mwc" "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[0].gco"
		;
connectAttr "groupId29.id" "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[1].gid"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.mwc" "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[1].gco"
		;
connectAttr "groupId27.id" "Finger__instance_1:knuckle_3_joint_orientation_controlShape.ciog.cog[0].cgid"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.ro" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.pim" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.rp" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.rpt" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.t" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rp" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rpt" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.r" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ro" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.s" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.pm" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.jo" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ssc" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.is" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.w0" "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.pim" "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:module_transform.s" "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:module_transform.pm" "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.w0" "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.tx"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.ty"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.tz"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.rx"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.ry"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.rz"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.sx"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.sy"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.sz"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.ro" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.pim" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.rp" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.rpt" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:root_joint.t" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint.rp" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint.rpt" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint.r" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:root_joint.ro" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:root_joint.s" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:root_joint.pm" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:root_joint.jo" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:root_joint.ssc" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:root_joint.is" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control.rx" "Finger__instance_1:root_joint_preferredAngle_representation_rotateX_grp.rx"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_rotateX.o" "Finger__instance_1:root_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.pim" "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.s" "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.pm" "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.tx"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.ty"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.tz"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.rx"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.ry"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.rz"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.sx"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.sy"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.sz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.ro" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.rp" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.rpt" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.t" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rp" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rpt" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.r" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ro" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.s" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.pm" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.jo" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ssc" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.is" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control.rx" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX_grp.rx"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX.o" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.s" "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.pm" "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.tx"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.ty"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.tz"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.rx"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.ry"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.rz"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.sx"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.sy"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.sz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.ro" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.rp" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.rpt" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.t" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rp" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rpt" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.r" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ro" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.s" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.pm" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.jo" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ssc" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.is" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control.rx" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX_grp.rx"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX.o" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.s" "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.pm" "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.tx"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.ty"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.tz"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.rx"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.ry"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.rz"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.sx"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.sy"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.sz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.ro" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.rp" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.rpt" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.t" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rp" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rpt" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.r" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ro" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.s" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.pm" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.jo" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ssc" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.is" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control.rx" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX_grp.rx"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX.o" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.pim" "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.s" "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.pm" "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_root_joint_pointConstraint.ctx" "Finger__instance_1:hook_root_joint.tx"
		;
connectAttr "Finger__instance_1:hook_root_joint_pointConstraint.cty" "Finger__instance_1:hook_root_joint.ty"
		;
connectAttr "Finger__instance_1:hook_root_joint_pointConstraint.ctz" "Finger__instance_1:hook_root_joint.tz"
		;
connectAttr "Finger__instance_1:hook_root_joint.s" "Finger__instance_1:hook_target_joint.is"
		;
connectAttr "Finger__instance_1:hook_target_joint_scaleMultiply.ox" "Finger__instance_1:hook_target_joint.tx"
		;
connectAttr "Finger__instance_1:hook_target_joint.tx" "Finger__instance_1:hook_root_jointikEffector.tx"
		;
connectAttr "Finger__instance_1:hook_target_joint.ty" "Finger__instance_1:hook_root_jointikEffector.ty"
		;
connectAttr "Finger__instance_1:hook_target_joint.tz" "Finger__instance_1:hook_root_jointikEffector.tz"
		;
connectAttr "Finger__instance_1:hook_target_joint.opm" "Finger__instance_1:hook_root_jointikEffector.opm"
		;
connectAttr "Finger__instance_1:hook_root_joint.pim" "Finger__instance_1:hook_root_joint_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:hook_root_joint.rp" "Finger__instance_1:hook_root_joint_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:hook_root_joint.rpt" "Finger__instance_1:hook_root_joint_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.t" "Finger__instance_1:hook_root_joint_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rp" "Finger__instance_1:hook_root_joint_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rpt" "Finger__instance_1:hook_root_joint_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.pm" "Finger__instance_1:hook_root_joint_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:hook_root_joint_pointConstraint.w0" "Finger__instance_1:hook_root_joint_pointConstraint.tg[0].tw"
		;
connectAttr "unhookedTarget_pointConstraint1.ctx" "Finger__instance_1:unhookedTarget.tx"
		;
connectAttr "unhookedTarget_pointConstraint1.cty" "Finger__instance_1:unhookedTarget.ty"
		;
connectAttr "unhookedTarget_pointConstraint1.ctz" "Finger__instance_1:unhookedTarget.tz"
		;
connectAttr "Finger__instance_1:unhookedTarget.pim" "unhookedTarget_pointConstraint1.cpim"
		;
connectAttr "Finger__instance_1:unhookedTarget.rp" "unhookedTarget_pointConstraint1.crp"
		;
connectAttr "Finger__instance_1:unhookedTarget.rpt" "unhookedTarget_pointConstraint1.crt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.t" "unhookedTarget_pointConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rp" "unhookedTarget_pointConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rpt" "unhookedTarget_pointConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.pm" "unhookedTarget_pointConstraint1.tg[0].tpm"
		;
connectAttr "unhookedTarget_pointConstraint1.w0" "unhookedTarget_pointConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_root_joint.msg" "Finger__instance_1:hook_root_joint_ikHandle.hsj"
		;
connectAttr "Finger__instance_1:hook_root_jointikEffector.hp" "Finger__instance_1:hook_root_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "Finger__instance_1:hook_root_joint_ikHandle.hsv";
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.ctx" "Finger__instance_1:hook_root_joint_ikHandle.pvx"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.cty" "Finger__instance_1:hook_root_joint_ikHandle.pvy"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.ctz" "Finger__instance_1:hook_root_joint_ikHandle.pvz"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.ctx" "Finger__instance_1:hook_root_joint_ikHandle.tx"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.cty" "Finger__instance_1:hook_root_joint_ikHandle.ty"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.ctz" "Finger__instance_1:hook_root_joint_ikHandle.tz"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle.pim" "hook_root_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "Finger__instance_1:hook_root_joint.pm" "hook_root_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "Finger__instance_1:hook_root_joint.t" "hook_root_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator.t" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator.rp" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator.rpt" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator.pm" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.w0" "hook_root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle.pim" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle.rp" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle.rpt" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.t" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.rp" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.rpt" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.pm" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.w0" "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.ctx" "Finger__instance_1:hook_root_joint_rootPosLocator.tx"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.cty" "Finger__instance_1:hook_root_joint_rootPosLocator.ty"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.ctz" "Finger__instance_1:hook_root_joint_rootPosLocator.tz"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator.pim" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator.rp" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator.rpt" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:hook_root_joint.t" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:hook_root_joint.rp" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:hook_root_joint.rpt" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:hook_root_joint.pm" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.w0" "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_pointConstraint.ctx" "Finger__instance_1:hook_target_joint_endPosLocator.tx"
		;
connectAttr "Finger__instance_1:hook_pointConstraint.cty" "Finger__instance_1:hook_target_joint_endPosLocator.ty"
		;
connectAttr "Finger__instance_1:hook_pointConstraint.ctz" "Finger__instance_1:hook_target_joint_endPosLocator.tz"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.pim" "Finger__instance_1:hook_pointConstraint.cpim"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.rp" "Finger__instance_1:hook_pointConstraint.crp"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.rpt" "Finger__instance_1:hook_pointConstraint.crt"
		;
connectAttr "Finger__instance_1:unhookedTarget.t" "Finger__instance_1:hook_pointConstraint.tg[0].tt"
		;
connectAttr "Finger__instance_1:unhookedTarget.rp" "Finger__instance_1:hook_pointConstraint.tg[0].trp"
		;
connectAttr "Finger__instance_1:unhookedTarget.rpt" "Finger__instance_1:hook_pointConstraint.tg[0].trt"
		;
connectAttr "Finger__instance_1:unhookedTarget.pm" "Finger__instance_1:hook_pointConstraint.tg[0].tpm"
		;
connectAttr "Finger__instance_1:hook_pointConstraint.w0" "Finger__instance_1:hook_pointConstraint.tg[0].tw"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.ctx" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.tx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cty" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ty"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.ctz" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.tz"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crx" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cry" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ry"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crz" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rz"
		;
connectAttr "Finger__instance_1:hook_target_joint.tx" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.csy" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sy"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.csz" "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.sz"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:hook_root_joint.t" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:hook_root_joint.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:hook_root_joint.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:hook_root_joint.r" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:hook_root_joint.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:hook_root_joint.s" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:hook_root_joint.pm" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "Finger__instance_1:hook_root_joint.jo" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "Finger__instance_1:hook_root_joint.ssc" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "Finger__instance_1:hook_root_joint.is" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.w0" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "Finger__instance_1:module_transform.s" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:module_transform.pm" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.w0" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.t" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.r" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.s" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.pm" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.t" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.rp" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.rpt" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.r" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.ro" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.s" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.pm" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.t" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.rp" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.rpt" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.r" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.ro" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.s" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.pm" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.t" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.rp" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.rpt" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.r" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.ro" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.s" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.pm" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:root_joint_pointConstraint.ctx" "HingeJoint__instance_2:root_joint.tx"
		;
connectAttr "HingeJoint__instance_2:root_joint_pointConstraint.cty" "HingeJoint__instance_2:root_joint.ty"
		;
connectAttr "HingeJoint__instance_2:root_joint_pointConstraint.ctz" "HingeJoint__instance_2:root_joint.tz"
		;
connectAttr "HingeJoint__instance_2:root_joint.s" "HingeJoint__instance_2:hinge_joint.is"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_scaleMultiply.ox" "HingeJoint__instance_2:hinge_joint.tx"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.s" "HingeJoint__instance_2:end_joint.is"
		;
connectAttr "HingeJoint__instance_2:end_joint_scaleMultiply.ox" "HingeJoint__instance_2:end_joint.tx"
		;
connectAttr "HingeJoint__instance_2:end_joint.tx" "HingeJoint__instance_2:hinge_jointikEffector.tx"
		;
connectAttr "HingeJoint__instance_2:end_joint.ty" "HingeJoint__instance_2:hinge_jointikEffector.ty"
		;
connectAttr "HingeJoint__instance_2:end_joint.tz" "HingeJoint__instance_2:hinge_jointikEffector.tz"
		;
connectAttr "HingeJoint__instance_2:end_joint.opm" "HingeJoint__instance_2:hinge_jointikEffector.opm"
		;
connectAttr "HingeJoint__instance_2:root_joint.pim" "HingeJoint__instance_2:root_joint_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint.rp" "HingeJoint__instance_2:root_joint_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint.rpt" "HingeJoint__instance_2:root_joint_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "HingeJoint__instance_2:root_joint_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rp" "HingeJoint__instance_2:root_joint_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rpt" "HingeJoint__instance_2:root_joint_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.pm" "HingeJoint__instance_2:root_joint_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:root_joint_pointConstraint.w0" "HingeJoint__instance_2:root_joint_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.tx" "HingeJoint__instance_2:root_jointikEffector.tx"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.ty" "HingeJoint__instance_2:root_jointikEffector.ty"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.tz" "HingeJoint__instance_2:root_jointikEffector.tz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.opm" "HingeJoint__instance_2:root_jointikEffector.opm"
		;
connectAttr "HingeJoint__instance_2:root_joint.msg" "HingeJoint__instance_2:root_joint_ikHandle.hsj"
		;
connectAttr "HingeJoint__instance_2:root_jointikEffector.hp" "HingeJoint__instance_2:root_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_2:root_joint_ikHandle.hsv";
connectAttr "root_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_2:root_joint_ikHandle.pvx"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_2:root_joint_ikHandle.pvy"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_2:root_joint_ikHandle.pvz"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_2:root_joint_ikHandle.tx"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_2:root_joint_ikHandle.ty"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_2:root_joint_ikHandle.tz"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle.pim" "root_joint_ikHandle_poleVectorConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint.pm" "root_joint_ikHandle_poleVectorConstraint2.ps"
		;
connectAttr "HingeJoint__instance_2:root_joint.t" "root_joint_ikHandle_poleVectorConstraint2.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator.t" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator.rp" "root_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator.rpt" "root_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator.pm" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.w0" "root_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle.pim" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle.rp" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle.rpt" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.t" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.rp" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.pm" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_2:root_joint_rootPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_2:root_joint_rootPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_2:root_joint_rootPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator.pim" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator.rp" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator.rpt" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint.t" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint.rp" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint.rpt" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint.pm" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_2:hinge_joint_endPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_2:hinge_joint_endPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_2:hinge_joint_endPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.pim" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.rp" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.rpt" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.t" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rp" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rpt" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.pm" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.msg" "HingeJoint__instance_2:hinge_joint_ikHandle.hsj"
		;
connectAttr "HingeJoint__instance_2:hinge_jointikEffector.hp" "HingeJoint__instance_2:hinge_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_2:hinge_joint_ikHandle.hsv";
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_2:hinge_joint_ikHandle.pvx"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_2:hinge_joint_ikHandle.pvy"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_2:hinge_joint_ikHandle.pvz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_2:hinge_joint_ikHandle.tx"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_2:hinge_joint_ikHandle.ty"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_2:hinge_joint_ikHandle.tz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle.pim" "hinge_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.pm" "hinge_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.t" "hinge_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator.t" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator.rp" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator.rpt" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator.pm" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.w0" "hinge_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle.pim" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle.rp" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle.rpt" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.t" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.rp" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.rpt" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.pm" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_2:hinge_joint_rootPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_2:hinge_joint_rootPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_2:hinge_joint_rootPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator.pim" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator.rp" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator.rpt" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.t" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rp" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rpt" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.pm" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.ctx" "HingeJoint__instance_2:end_joint_endPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.cty" "HingeJoint__instance_2:end_joint_endPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.ctz" "HingeJoint__instance_2:end_joint_endPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.pim" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.rp" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.rpt" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.t" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.rp" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.rpt" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.pm" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.w0" "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctx" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.tx"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cty" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.ty"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctz" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.tz"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crx" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.rx"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cry" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.ry"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crz" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.rz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.tx" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.sx"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csy" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.sy"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csz" "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.sz"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint.t" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint.rp" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint.rpt" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint.r" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:root_joint.ro" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:root_joint.s" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:root_joint.pm" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:root_joint.jo" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "HingeJoint__instance_2:root_joint.ssc" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "HingeJoint__instance_2:root_joint.is" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.w0" "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.pim" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:module_transform.s" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:module_transform.pm" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.w0" "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctx" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.tx"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cty" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.ty"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.ctz" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.tz"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crx" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.rx"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cry" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.ry"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crz" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.rz"
		;
connectAttr "HingeJoint__instance_2:end_joint.tx" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.sx"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csy" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.sy"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.csz" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.sz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cro"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.t" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rp" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rpt" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.r" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.ro" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.jo" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.ssc" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.is" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.pim" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:module_transform.s" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:module_transform.pm" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.w0" "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.tg[0].tw"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctx" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.tx"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cty" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.ty"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.ctz" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.tz"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crx" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.rx"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cry" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.ry"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crz" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.rz"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csx" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.sx"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csy" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.sy"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.csz" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.sz"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_rotateX.o" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation.rx"
		 -l on;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.t" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.rp" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.rpt" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.r" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.ro" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.jo" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tjo"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.ssc" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tsc"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.is" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tis"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.pim" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.s" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.pm" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.w0" "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_pointConstraint.ctx" "HingeJoint__instance_2:hook_root_joint.tx"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_pointConstraint.cty" "HingeJoint__instance_2:hook_root_joint.ty"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_pointConstraint.ctz" "HingeJoint__instance_2:hook_root_joint.tz"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.s" "HingeJoint__instance_2:hook_target_joint.is"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_scaleMultiply.ox" "HingeJoint__instance_2:hook_target_joint.tx"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.tx" "HingeJoint__instance_2:hook_root_jointikEffector.tx"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.ty" "HingeJoint__instance_2:hook_root_jointikEffector.ty"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.tz" "HingeJoint__instance_2:hook_root_jointikEffector.tz"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.opm" "HingeJoint__instance_2:hook_root_jointikEffector.opm"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.pim" "HingeJoint__instance_2:hook_root_joint_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rp" "HingeJoint__instance_2:hook_root_joint_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rpt" "HingeJoint__instance_2:hook_root_joint_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "HingeJoint__instance_2:hook_root_joint_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rp" "HingeJoint__instance_2:hook_root_joint_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rpt" "HingeJoint__instance_2:hook_root_joint_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.pm" "HingeJoint__instance_2:hook_root_joint_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_pointConstraint.w0" "HingeJoint__instance_2:hook_root_joint_pointConstraint.tg[0].tw"
		;
connectAttr "unhookedTarget_pointConstraint2.ctx" "HingeJoint__instance_2:unhookedTarget.tx"
		;
connectAttr "unhookedTarget_pointConstraint2.cty" "HingeJoint__instance_2:unhookedTarget.ty"
		;
connectAttr "unhookedTarget_pointConstraint2.ctz" "HingeJoint__instance_2:unhookedTarget.tz"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.pim" "unhookedTarget_pointConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.rp" "unhookedTarget_pointConstraint2.crp"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.rpt" "unhookedTarget_pointConstraint2.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "unhookedTarget_pointConstraint2.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rp" "unhookedTarget_pointConstraint2.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rpt" "unhookedTarget_pointConstraint2.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.pm" "unhookedTarget_pointConstraint2.tg[0].tpm"
		;
connectAttr "unhookedTarget_pointConstraint2.w0" "unhookedTarget_pointConstraint2.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.msg" "HingeJoint__instance_2:hook_root_joint_ikHandle.hsj"
		;
connectAttr "HingeJoint__instance_2:hook_root_jointikEffector.hp" "HingeJoint__instance_2:hook_root_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_2:hook_root_joint_ikHandle.hsv"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.ctx" "HingeJoint__instance_2:hook_root_joint_ikHandle.pvx"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.cty" "HingeJoint__instance_2:hook_root_joint_ikHandle.pvy"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.ctz" "HingeJoint__instance_2:hook_root_joint_ikHandle.pvz"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.ctx" "HingeJoint__instance_2:hook_root_joint_ikHandle.tx"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.cty" "HingeJoint__instance_2:hook_root_joint_ikHandle.ty"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.ctz" "HingeJoint__instance_2:hook_root_joint_ikHandle.tz"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle.pim" "hook_root_joint_ikHandle_poleVectorConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.pm" "hook_root_joint_ikHandle_poleVectorConstraint2.ps"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.t" "hook_root_joint_ikHandle_poleVectorConstraint2.crp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator.t" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator.rp" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator.rpt" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator.pm" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tpm"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.w0" "hook_root_joint_ikHandle_poleVectorConstraint2.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle.pim" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle.rp" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle.rpt" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.t" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.pm" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.w0" "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.ctx" "HingeJoint__instance_2:hook_root_joint_rootPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.cty" "HingeJoint__instance_2:hook_root_joint_rootPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.ctz" "HingeJoint__instance_2:hook_root_joint_rootPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator.pim" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator.rp" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator.rpt" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.t" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rp" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rpt" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.pm" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.w0" "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_pointConstraint.ctx" "HingeJoint__instance_2:hook_target_joint_endPosLocator.tx"
		;
connectAttr "HingeJoint__instance_2:hook_pointConstraint.cty" "HingeJoint__instance_2:hook_target_joint_endPosLocator.ty"
		;
connectAttr "HingeJoint__instance_2:hook_pointConstraint.ctz" "HingeJoint__instance_2:hook_target_joint_endPosLocator.tz"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.pim" "HingeJoint__instance_2:hook_pointConstraint.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.rp" "HingeJoint__instance_2:hook_pointConstraint.crp"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.rpt" "HingeJoint__instance_2:hook_pointConstraint.crt"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.t" "HingeJoint__instance_2:hook_pointConstraint.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.rp" "HingeJoint__instance_2:hook_pointConstraint.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.rpt" "HingeJoint__instance_2:hook_pointConstraint.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.pm" "HingeJoint__instance_2:hook_pointConstraint.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hook_pointConstraint.w0" "HingeJoint__instance_2:hook_pointConstraint.tg[0].tw"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.ctx" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.tx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cty" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.ty"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.ctz" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.tz"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crx" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.rx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cry" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.ry"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crz" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.rz"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.tx" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.sx"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.csy" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.sy"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.csz" "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.sz"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cro"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.crt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.t" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rp" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rpt" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.r" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.ro" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.s" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.pm" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tpm"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.jo" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tjo"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.ssc" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tsc"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.is" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tis"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.w0" "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.pim" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:module_transform.s" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:module_transform.pm" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].tpm"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.w0" "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.tg[0].tw"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctx" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cty" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.ctz" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crx" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cry" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crz" "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cro"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.cpim"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rp" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rpt" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.r" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.ro" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.s" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.pm" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tpm"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.w0" "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.tg[0].tw"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctx" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tx"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cty" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ty"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.ctz" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.tz"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crx" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rx"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cry" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ry"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crz" "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rz"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cro"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.pim" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.t" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rp" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rpt" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.r" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tr"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.ro" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tro"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.s" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].ts"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.pm" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tpm"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.w0" "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_2:IK_root_joint_positionLocator.tx"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.cty" "HingeJoint__instance_2:IK_root_joint_positionLocator.ty"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_2:IK_root_joint_positionLocator.tz"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.s" "HingeJoint__instance_2:IK_hinge_joint.is"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.ox" "HingeJoint__instance_2:IK_hinge_joint.tx"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.s" "HingeJoint__instance_2:IK_end_joint.is"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.ox" "HingeJoint__instance_2:IK_end_joint.tx"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.tx" "HingeJoint__instance_2:IK_root_joint_ikEffector.tx"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.ty" "HingeJoint__instance_2:IK_root_joint_ikEffector.ty"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.tz" "HingeJoint__instance_2:IK_root_joint_ikEffector.tz"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.opm" "HingeJoint__instance_2:IK_root_joint_ikEffector.opm"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocator.pim" "IK_root_joint_positionLocator_pointConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocator.rp" "IK_root_joint_positionLocator_pointConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocator.rpt" "IK_root_joint_positionLocator_pointConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rp" "IK_root_joint_positionLocator_pointConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.rpt" "IK_root_joint_positionLocator_pointConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.pm" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tpm"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.w0" "IK_root_joint_positionLocator_pointConstraint1.tg[0].tw"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_2:IK_hinge_joint_positionLocator.tx"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.cty" "HingeJoint__instance_2:IK_hinge_joint_positionLocator.ty"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_2:IK_hinge_joint_positionLocator.tz"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.pim" "IK_hinge_joint_positionLocator_pointConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.rp" "IK_hinge_joint_positionLocator_pointConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.rpt" "IK_hinge_joint_positionLocator_pointConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.t" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rp" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.rpt" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.pm" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tpm"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.w0" "IK_hinge_joint_positionLocator_pointConstraint1.tg[0].tw"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.ctx" "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.tx"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.cty" "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.ty"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.ctz" "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.tz"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.msg" "HingeJoint__instance_2:IK_root_joint_ikHandle.hsj"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikEffector.hp" "HingeJoint__instance_2:IK_root_joint_ikHandle.hee"
		;
connectAttr "ikRPsolver.msg" "HingeJoint__instance_2:IK_root_joint_ikHandle.hsv"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.ctx" "HingeJoint__instance_2:IK_root_joint_ikHandle.pvx"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.cty" "HingeJoint__instance_2:IK_root_joint_ikHandle.pvy"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.ctz" "HingeJoint__instance_2:IK_root_joint_ikHandle.pvz"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle.pim" "IK_root_joint_ikHandle_poleVectorConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.pm" "IK_root_joint_ikHandle_poleVectorConstraint1.ps"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.t" "IK_root_joint_ikHandle_poleVectorConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.t" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.rp" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.rpt" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.pm" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.w0" "IK_root_joint_ikHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.pim" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.cpim"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.crp"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.crt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.t" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.rp" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].trp"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.rpt" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].trt"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.pm" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tpm"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.w0" "IK_root_joint_ikHandle_positionLocator_pointConstraint1.tg[0].tw"
		;
connectAttr "Group__group2.sy" "Group__group2.sx" -l on;
connectAttr "Group__group2.sy" "Group__group2.sz" -l on;
connectAttr "Finger__instance_1:module_transform.sy" "Finger__instance_1:module_transform.sx"
		;
connectAttr "Finger__instance_1:module_transform.sy" "Finger__instance_1:module_transform.sz"
		;
connectAttr "Group__group.sy" "Group__group.sx" -l on;
connectAttr "Group__group.sy" "Group__group.sz" -l on;
connectAttr "HingeJoint__instance_2:module_transform.sy" "HingeJoint__instance_2:module_transform.sx"
		;
connectAttr "HingeJoint__instance_2:module_transform.sy" "HingeJoint__instance_2:module_transform.sz"
		;
connectAttr "HingeJoint__instance_2:root_joint.r" "HingeJoint__instance_2:module_container.boc[0]"
		;
connectAttr "HingeJoint__instance_2:root_joint.rx" "HingeJoint__instance_2:module_container.boc[1]"
		;
connectAttr "HingeJoint__instance_2:root_joint.ry" "HingeJoint__instance_2:module_container.boc[2]"
		;
connectAttr "HingeJoint__instance_2:root_joint.rz" "HingeJoint__instance_2:module_container.boc[3]"
		;
connectAttr "HingeJoint__instance_2:root_joint.ro" "HingeJoint__instance_2:module_container.boc[4]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.r" "HingeJoint__instance_2:module_container.boc[5]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rx" "HingeJoint__instance_2:module_container.boc[6]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.ry" "HingeJoint__instance_2:module_container.boc[7]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.rz" "HingeJoint__instance_2:module_container.boc[8]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint.ro" "HingeJoint__instance_2:module_container.boc[9]"
		;
connectAttr "HingeJoint__instance_2:end_joint.r" "HingeJoint__instance_2:module_container.boc[10]"
		;
connectAttr "HingeJoint__instance_2:end_joint.rx" "HingeJoint__instance_2:module_container.boc[11]"
		;
connectAttr "HingeJoint__instance_2:end_joint.ry" "HingeJoint__instance_2:module_container.boc[12]"
		;
connectAttr "HingeJoint__instance_2:end_joint.rz" "HingeJoint__instance_2:module_container.boc[13]"
		;
connectAttr "HingeJoint__instance_2:end_joint.ro" "HingeJoint__instance_2:module_container.boc[14]"
		;
connectAttr "HingeJoint__instance_2:module_transform.t" "HingeJoint__instance_2:module_container.boc[15]"
		;
connectAttr "HingeJoint__instance_2:module_transform.tx" "HingeJoint__instance_2:module_container.boc[16]"
		;
connectAttr "HingeJoint__instance_2:module_transform.ty" "HingeJoint__instance_2:module_container.boc[17]"
		;
connectAttr "HingeJoint__instance_2:module_transform.tz" "HingeJoint__instance_2:module_container.boc[18]"
		;
connectAttr "HingeJoint__instance_2:module_transform.r" "HingeJoint__instance_2:module_container.boc[19]"
		;
connectAttr "HingeJoint__instance_2:module_transform.rx" "HingeJoint__instance_2:module_container.boc[20]"
		;
connectAttr "HingeJoint__instance_2:module_transform.ry" "HingeJoint__instance_2:module_container.boc[21]"
		;
connectAttr "HingeJoint__instance_2:module_transform.rz" "HingeJoint__instance_2:module_container.boc[22]"
		;
connectAttr "HingeJoint__instance_2:module_transform.sy" "HingeJoint__instance_2:module_container.boc[23]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_container.boc[0]" "HingeJoint__instance_2:module_container.boc[24]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_container.boc[1]" "HingeJoint__instance_2:module_container.boc[25]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_container.boc[2]" "HingeJoint__instance_2:module_container.boc[26]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_container.boc[3]" "HingeJoint__instance_2:module_container.boc[27]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[0]" "HingeJoint__instance_2:module_container.boc[28]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[1]" "HingeJoint__instance_2:module_container.boc[29]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[2]" "HingeJoint__instance_2:module_container.boc[30]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[3]" "HingeJoint__instance_2:module_container.boc[31]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control_container.boc[0]" "HingeJoint__instance_2:module_container.boc[32]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control_container.boc[1]" "HingeJoint__instance_2:module_container.boc[33]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control_container.boc[2]" "HingeJoint__instance_2:module_container.boc[34]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control_container.boc[3]" "HingeJoint__instance_2:module_container.boc[35]"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.r" "HingeJoint__instance_2:module_container.boc[36]"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.rx" "HingeJoint__instance_2:module_container.boc[37]"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.ry" "HingeJoint__instance_2:module_container.boc[38]"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.rz" "HingeJoint__instance_2:module_container.boc[39]"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.r" "HingeJoint__instance_2:module_container.boc[40]"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.rx" "HingeJoint__instance_2:module_container.boc[41]"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.ry" "HingeJoint__instance_2:module_container.boc[42]"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.rz" "HingeJoint__instance_2:module_container.boc[43]"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.r" "HingeJoint__instance_2:module_container.boc[44]"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.rx" "HingeJoint__instance_2:module_container.boc[45]"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.ry" "HingeJoint__instance_2:module_container.boc[46]"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.rz" "HingeJoint__instance_2:module_container.boc[47]"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_container.boc[0]" "HingeJoint__instance_2:module_container.boc[48]"
		;
connectAttr "hyperLayout21.msg" "HingeJoint__instance_2:module_container.hl";
connectAttr "Finger__instance_1:root_joint.r" "Finger__instance_1:module_container.boc[0]"
		;
connectAttr "Finger__instance_1:root_joint.rx" "Finger__instance_1:module_container.boc[1]"
		;
connectAttr "Finger__instance_1:root_joint.ry" "Finger__instance_1:module_container.boc[2]"
		;
connectAttr "Finger__instance_1:root_joint.rz" "Finger__instance_1:module_container.boc[3]"
		;
connectAttr "Finger__instance_1:root_joint.ro" "Finger__instance_1:module_container.boc[4]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.r" "Finger__instance_1:module_container.boc[5]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rx" "Finger__instance_1:module_container.boc[6]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ry" "Finger__instance_1:module_container.boc[7]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.rz" "Finger__instance_1:module_container.boc[8]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint.ro" "Finger__instance_1:module_container.boc[9]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.r" "Finger__instance_1:module_container.boc[10]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rx" "Finger__instance_1:module_container.boc[11]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ry" "Finger__instance_1:module_container.boc[12]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.rz" "Finger__instance_1:module_container.boc[13]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint.ro" "Finger__instance_1:module_container.boc[14]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.r" "Finger__instance_1:module_container.boc[15]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rx" "Finger__instance_1:module_container.boc[16]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ry" "Finger__instance_1:module_container.boc[17]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.rz" "Finger__instance_1:module_container.boc[18]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint.ro" "Finger__instance_1:module_container.boc[19]"
		;
connectAttr "Finger__instance_1:end_joint.r" "Finger__instance_1:module_container.boc[20]"
		;
connectAttr "Finger__instance_1:end_joint.rx" "Finger__instance_1:module_container.boc[21]"
		;
connectAttr "Finger__instance_1:end_joint.ry" "Finger__instance_1:module_container.boc[22]"
		;
connectAttr "Finger__instance_1:end_joint.rz" "Finger__instance_1:module_container.boc[23]"
		;
connectAttr "Finger__instance_1:end_joint.ro" "Finger__instance_1:module_container.boc[24]"
		;
connectAttr "Finger__instance_1:module_transform.t" "Finger__instance_1:module_container.boc[25]"
		;
connectAttr "Finger__instance_1:module_transform.tx" "Finger__instance_1:module_container.boc[26]"
		;
connectAttr "Finger__instance_1:module_transform.ty" "Finger__instance_1:module_container.boc[27]"
		;
connectAttr "Finger__instance_1:module_transform.tz" "Finger__instance_1:module_container.boc[28]"
		;
connectAttr "Finger__instance_1:module_transform.r" "Finger__instance_1:module_container.boc[29]"
		;
connectAttr "Finger__instance_1:module_transform.rx" "Finger__instance_1:module_container.boc[30]"
		;
connectAttr "Finger__instance_1:module_transform.ry" "Finger__instance_1:module_container.boc[31]"
		;
connectAttr "Finger__instance_1:module_transform.rz" "Finger__instance_1:module_container.boc[32]"
		;
connectAttr "Finger__instance_1:module_transform.sy" "Finger__instance_1:module_container.boc[33]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_container.boc[0]" "Finger__instance_1:module_container.boc[34]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_container.boc[1]" "Finger__instance_1:module_container.boc[35]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_container.boc[2]" "Finger__instance_1:module_container.boc[36]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_container.boc[3]" "Finger__instance_1:module_container.boc[37]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[0]" "Finger__instance_1:module_container.boc[38]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[1]" "Finger__instance_1:module_container.boc[39]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[2]" "Finger__instance_1:module_container.boc[40]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[3]" "Finger__instance_1:module_container.boc[41]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[0]" "Finger__instance_1:module_container.boc[42]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[1]" "Finger__instance_1:module_container.boc[43]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[2]" "Finger__instance_1:module_container.boc[44]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[3]" "Finger__instance_1:module_container.boc[45]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[0]" "Finger__instance_1:module_container.boc[46]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[1]" "Finger__instance_1:module_container.boc[47]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[2]" "Finger__instance_1:module_container.boc[48]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[3]" "Finger__instance_1:module_container.boc[49]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control_container.boc[0]" "Finger__instance_1:module_container.boc[50]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control_container.boc[1]" "Finger__instance_1:module_container.boc[51]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control_container.boc[2]" "Finger__instance_1:module_container.boc[52]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control_container.boc[3]" "Finger__instance_1:module_container.boc[53]"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_container.boc[0]" "Finger__instance_1:module_container.boc[54]"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_container.boc[0]" "Finger__instance_1:module_container.boc[55]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_container.boc[0]" "Finger__instance_1:module_container.boc[56]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_container.boc[0]" "Finger__instance_1:module_container.boc[57]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_container.boc[0]" "Finger__instance_1:module_container.boc[58]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_container.boc[0]" "Finger__instance_1:module_container.boc[59]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_container.boc[0]" "Finger__instance_1:module_container.boc[60]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_container.boc[0]" "Finger__instance_1:module_container.boc[61]"
		;
connectAttr "hyperLayout1.msg" "Finger__instance_1:module_container.hl";
connectAttr "Finger__instance_1:root_joint_m_translation_control_SG.msg" "materialInfo1.sg"
		;
connectAttr "Finger__instance_1:root_joint_m_translation_control.msg" "materialInfo1.m"
		;
connectAttr "Finger__instance_1:root_joint_m_translation_control.oc" "Finger__instance_1:root_joint_m_translation_control_SG.ss"
		;
connectAttr "Finger__instance_1:root_joint_translation_controlShape.iog" "Finger__instance_1:root_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.msg" "materialInfo2.sg"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control.msg" "materialInfo2.m"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control.oc" "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_controlShape.iog" "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.msg" "materialInfo3.sg"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control.msg" "materialInfo3.m"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control.oc" "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_controlShape.iog" "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.msg" "materialInfo4.sg"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control.msg" "materialInfo4.m"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control.oc" "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_controlShape.iog" "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:end_joint_m_translation_control_SG.msg" "materialInfo5.sg"
		;
connectAttr "Finger__instance_1:end_joint_m_translation_control.msg" "materialInfo5.m"
		;
connectAttr "Finger__instance_1:end_joint_m_translation_control.oc" "Finger__instance_1:end_joint_m_translation_control_SG.ss"
		;
connectAttr "Finger__instance_1:end_joint_translation_controlShape.iog" "Finger__instance_1:end_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control_SG.msg" "materialInfo23.sg"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control.msg" "materialInfo23.m"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control.oc" "HingeJoint__instance_2:root_joint_m_translation_control_SG.ss"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_controlShape.iog" "HingeJoint__instance_2:root_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.msg" "materialInfo24.sg"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control.msg" "materialInfo24.m"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control.oc" "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.ss"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_controlShape.iog" "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control_SG.msg" "materialInfo25.sg"
		;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control.msg" "materialInfo25.m"
		;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control.oc" "HingeJoint__instance_2:end_joint_m_translation_control_SG.ss"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_controlShape.iog" "HingeJoint__instance_2:end_joint_m_translation_control_SG.dsm"
		 -na;
connectAttr "hyperLayout24.msg" "HingeJoint__instance_2:end_joint_translation_control_container.hl"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.t" "HingeJoint__instance_2:end_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.tx" "HingeJoint__instance_2:end_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.ty" "HingeJoint__instance_2:end_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.tz" "HingeJoint__instance_2:end_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.r" "HingeJoint__instance_2:hook_container.boc[0]"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rx" "HingeJoint__instance_2:hook_container.boc[1]"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.ry" "HingeJoint__instance_2:hook_container.boc[2]"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint.rz" "HingeJoint__instance_2:hook_container.boc[3]"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.r" "HingeJoint__instance_2:hook_container.boc[4]"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.rx" "HingeJoint__instance_2:hook_container.boc[5]"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.ry" "HingeJoint__instance_2:hook_container.boc[6]"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.rz" "HingeJoint__instance_2:hook_container.boc[7]"
		;
connectAttr "hyperLayout25.msg" "HingeJoint__instance_2:hook_container.hl";
connectAttr "hyperLayout28.msg" "HingeJoint__instance_2:hinge_joint_hierarchy_representation_container.hl"
		;
connectAttr "hyperLayout29.msg" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_container.hl"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "hyperLayout27.msg" "HingeJoint__instance_2:root_joint_hierarchy_representation_container.hl"
		;
connectAttr "hyperLayout23.msg" "HingeJoint__instance_2:hinge_joint_translation_control_container.hl"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.t" "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.tx" "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.ty" "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.tz" "HingeJoint__instance_2:hinge_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p1"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.p2"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocatorShape.wp" "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p1"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.p2"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p1"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.p2"
		;
connectAttr "HingeJoint__instance_2:module_grp.msg" "hyperLayout21.hyp[0].dn";
connectAttr "HingeJoint__instance_2:joints_grp.msg" "hyperLayout21.hyp[1].dn";
connectAttr "HingeJoint__instance_2:hierarchyRepresentations_grp.msg" "hyperLayout21.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:orientationControls_grp.msg" "hyperLayout21.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:preferredAngleRepresentation_grp.msg" "hyperLayout21.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint.msg" "hyperLayout21.hyp[5].dn";
connectAttr "HingeJoint__instance_2:hinge_joint.msg" "hyperLayout21.hyp[6].dn";
connectAttr "HingeJoint__instance_2:end_joint.msg" "hyperLayout21.hyp[7].dn";
connectAttr "HingeJoint__instance_2:module_transform.msg" "hyperLayout21.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_2:module_transformShape.msg" "hyperLayout21.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_container.msg" "hyperLayout21.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_container.msg" "hyperLayout21.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control_container.msg" "hyperLayout21.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_pointConstraint.msg" "hyperLayout21.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_2:hook_container.msg" "hyperLayout21.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle.msg" "hyperLayout21.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_2:root_jointikEffector.msg" "hyperLayout21.hyp[17].dn"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout21.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator.msg" "hyperLayout21.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator.msg" "hyperLayout21.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout21.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_pointConstraint.msg" "hyperLayout21.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" "hyperLayout21.hyp[23].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_scaleFactor.msg" "hyperLayout21.hyp[24].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_scaleMultiply.msg" "hyperLayout21.hyp[25].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_rootPosLocatorShape.msg" "hyperLayout21.hyp[26].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocatorShape.msg" "hyperLayout21.hyp[27].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout21.hyp[28].dn"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint2.msg" "hyperLayout21.hyp[29].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_endPosLocator_pointConstraint.msg" "hyperLayout21.hyp[30].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocator.msg" "hyperLayout21.hyp[31].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout21.hyp[32].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_container.msg" "hyperLayout21.hyp[33].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle.msg" "hyperLayout21.hyp[34].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_jointikEffector.msg" "hyperLayout21.hyp[35].dn"
		;
connectAttr "hinge_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout21.hyp[36].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator.msg" "hyperLayout21.hyp[37].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator.msg" "hyperLayout21.hyp[38].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocator_pointConstraint.msg" "hyperLayout21.hyp[39].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_pointConstraint.msg" "hyperLayout21.hyp[40].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" "hyperLayout21.hyp[41].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_scaleFactor.msg" "hyperLayout21.hyp[42].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_scaleMultiply.msg" "hyperLayout21.hyp[43].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_rootPosLocatorShape.msg" "hyperLayout21.hyp[44].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocatorShape.msg" "hyperLayout21.hyp[45].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout21.hyp[46].dn"
		;
connectAttr "hinge_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout21.hyp[47].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_endPosLocator_pointConstraint.msg" "hyperLayout21.hyp[48].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocator.msg" "hyperLayout21.hyp[49].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout21.hyp[50].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_container.msg" "hyperLayout21.hyp[51].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint.msg" "hyperLayout21.hyp[52].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint.msg" "hyperLayout21.hyp[53].dn"
		;
connectAttr "HingeJoint__instance_2:IK_end_joint.msg" "hyperLayout21.hyp[54].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" "hyperLayout21.hyp[55].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" "hyperLayout21.hyp[56].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" "hyperLayout21.hyp[57].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout21.hyp[58].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" "hyperLayout21.hyp[59].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" "hyperLayout21.hyp[60].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle.msg" "hyperLayout21.hyp[61].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikEffector.msg" "hyperLayout21.hyp[62].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocator.msg" "hyperLayout21.hyp[63].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocator.msg" "hyperLayout21.hyp[64].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocator.msg" "hyperLayout21.hyp[65].dn"
		;
connectAttr "IK_root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout21.hyp[66].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_positionLocatorShape.msg" "hyperLayout21.hyp[67].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocatorShape.msg" "hyperLayout21.hyp[68].dn"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocatorShape.msg" "hyperLayout21.hyp[69].dn"
		;
connectAttr "IK_root_joint_positionLocator_pointConstraint1.msg" "hyperLayout21.hyp[70].dn"
		;
connectAttr "IK_hinge_joint_positionLocator_pointConstraint1.msg" "hyperLayout21.hyp[71].dn"
		;
connectAttr "IK_root_joint_ikHandle_positionLocator_pointConstraint1.msg" "hyperLayout21.hyp[72].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_container.msg" "hyperLayout21.hyp[73].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_positionLocatorShape.wp" "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p1"
		;
connectAttr "HingeJoint__instance_2:IK_root_joint_ikHandle_positionLocatorShape.wp" "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.p2"
		;
connectAttr "hyperLayout22.msg" "HingeJoint__instance_2:root_joint_translation_control_container.hl"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.t" "HingeJoint__instance_2:root_joint_translation_control_container.boc[0]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.tx" "HingeJoint__instance_2:root_joint_translation_control_container.boc[1]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.ty" "HingeJoint__instance_2:root_joint_translation_control_container.boc[2]"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.tz" "HingeJoint__instance_2:root_joint_translation_control_container.boc[3]"
		;
connectAttr "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.d" "HingeJoint__instance_2:hinge_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.ox" "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.i2x"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.ox" "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.i2x"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.d" "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.i1x"
		;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_2:hinge_joint_scaleMultiply.i2x"
		;
connectAttr "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.d" "HingeJoint__instance_2:root_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_2:end_joint_scaleMultiply.i2x"
		;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.d" "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.i1x"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_controlShape.msg" "hyperLayout24.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_translation_control.msg" "hyperLayout24.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control_SG.msg" "hyperLayout24.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control.msg" "hyperLayout24.hyp[3].dn"
		;
connectAttr "hyperLayout26.msg" "HingeJoint__instance_2:hook_root_joint_hook_representation_container.hl"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p1"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocatorShape.wp" "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p2"
		;
connectAttr "HingeJoint__instance_2:hook_grp.msg" "hyperLayout25.hyp[0].dn";
connectAttr "HingeJoint__instance_2:hook_root_joint.msg" "hyperLayout25.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint.msg" "hyperLayout25.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:unhookedTarget.msg" "hyperLayout25.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:unhookedTargetShape.msg" "hyperLayout25.hyp[4].dn"
		;
connectAttr "unhookedTarget_pointConstraint2.msg" "hyperLayout25.hyp[5].dn";
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle.msg" "hyperLayout25.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_jointikEffector.msg" "hyperLayout25.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocator.msg" "hyperLayout25.hyp[8].dn"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint2.msg" "hyperLayout25.hyp[9].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator.msg" "hyperLayout25.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocator.msg" "hyperLayout25.hyp[11].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout25.hyp[12].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_pointConstraint.msg" "hyperLayout25.hyp[13].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" "hyperLayout25.hyp[14].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_scaleFactor.msg" "hyperLayout25.hyp[15].dn"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_scaleMultiply.msg" "hyperLayout25.hyp[16].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_poleVectorLocatorShape.msg" "hyperLayout25.hyp[17].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_rootPosLocatorShape.msg" "hyperLayout25.hyp[18].dn"
		;
connectAttr "HingeJoint__instance_2:hook_target_joint_endPosLocatorShape.msg" "hyperLayout25.hyp[19].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_pointConstraint.msg" "hyperLayout25.hyp[20].dn"
		;
connectAttr "HingeJoint__instance_2:hook_pointConstraint.msg" "hyperLayout25.hyp[21].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_container.msg" "hyperLayout25.hyp[22].dn"
		;
connectAttr "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.d" "HingeJoint__instance_2:hook_root_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_scaleFactor.ox" "HingeJoint__instance_2:hook_target_joint_scaleMultiply.i2x"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation.oc" "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.ss"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representationShape.iog" "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation.msg" "hyperLayout26.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.msg" "hyperLayout26.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation.msg" "hyperLayout26.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representationShape.msg" "hyperLayout26.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_hook_representation_parentConstraint_grp.msg" "hyperLayout26.hyp[6].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint2.msg" "hyperLayout26.hyp[7].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint2.msg" "hyperLayout26.hyp[8].dn"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.msg" "materialInfo26.sg"
		;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation.msg" "materialInfo26.m"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.ss"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representationShape.iog" "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hierarchyRepresentation.msg" "hyperLayout28.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.msg" "hyperLayout28.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation.msg" "hyperLayout28.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representationShape.msg" "hyperLayout28.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representation.msg" "hyperLayout28.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_arrow_representationShape.msg" "hyperLayout28.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_hierarchy_representation_parentConstraint_grp.msg" "hyperLayout28.hyp[8].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.msg" "hyperLayout28.hyp[9].dn"
		;
connectAttr "hinge_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout28.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.msg" "materialInfo28.sg"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hierarchyRepresentation.msg" "materialInfo28.m"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_m_preferredAngle_representation.oc" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.ss"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representationShape.iog" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_m_preferredAngle_representation.msg" "hyperLayout29.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation.msg" "hyperLayout29.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representationShape.msg" "hyperLayout29.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.msg" "hyperLayout29.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_rotateX.msg" "hyperLayout29.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_parentConstraintGrp.msg" "hyperLayout29.hyp[5].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "hyperLayout29.hyp[6].dn"
		;
connectAttr "IK_hinge_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "hyperLayout29.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation.axis" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_rotateX.i"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.msg" "materialInfo29.sg"
		;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_m_preferredAngle_representation.msg" "materialInfo29.m"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_hierarchyRepresentation.oc" "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.ss"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representationShape.iog" "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_arrow_representationShape.iog" "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_hierarchyRepresentation.msg" "hyperLayout27.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.msg" "hyperLayout27.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation.msg" "hyperLayout27.hyp[4].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representationShape.msg" "hyperLayout27.hyp[5].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_arrow_representation.msg" "hyperLayout27.hyp[6].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_arrow_representationShape.msg" "hyperLayout27.hyp[7].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_hierarchy_representation_parentConstraint_grp.msg" "hyperLayout27.hyp[8].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_parentConstraint1.msg" "hyperLayout27.hyp[9].dn"
		;
connectAttr "root_joint_hierarchy_representation_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout27.hyp[10].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.msg" "materialInfo27.sg"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_hierarchyRepresentation.msg" "materialInfo27.m"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_controlShape.msg" "hyperLayout23.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_translation_control.msg" "hyperLayout23.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.msg" "hyperLayout23.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control.msg" "hyperLayout23.hyp[3].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_controlShape.msg" "hyperLayout22.hyp[0].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_translation_control.msg" "hyperLayout22.hyp[1].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control_SG.msg" "hyperLayout22.hyp[2].dn"
		;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control.msg" "hyperLayout22.hyp[3].dn"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator.d" "Finger__instance_1:knuckle_2_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator.d" "Finger__instance_1:knuckle_1_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_scaleFactor.ox" "Finger__instance_1:knuckle_2_joint_scaleMultiply.i2x"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator.d" "Finger__instance_1:knuckle_3_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_scaleFactor.ox" "Finger__instance_1:end_joint_scaleMultiply.i2x"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_scaleFactor.ox" "Finger__instance_1:knuckle_3_joint_scaleMultiply.i2x"
		;
connectAttr "hyperLayout17.msg" "Finger__instance_1:knuckle_2_joint_orientation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control.rx" "Finger__instance_1:knuckle_2_joint_orientation_control_container.boc[0]"
		;
connectAttr "hyperLayout15.msg" "Finger__instance_1:knuckle_1_joint_orientation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control.rx" "Finger__instance_1:knuckle_1_joint_orientation_control_container.boc[0]"
		;
connectAttr "hyperLayout16.msg" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "hyperLayout19.msg" "Finger__instance_1:knuckle_3_joint_orientation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control.rx" "Finger__instance_1:knuckle_3_joint_orientation_control_container.boc[0]"
		;
connectAttr "hyperLayout18.msg" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "hyperLayout20.msg" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "hyperLayout14.msg" "Finger__instance_1:root_joint_preferredAngle_representation_container.hl"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation.axis" "Finger__instance_1:root_joint_preferredAngle_representation_container.boc[0]"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocatorShape.wp" "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator.p1"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocatorShape.wp" "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator.p2"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator.p1"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator.p2"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator.p1"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator.p2"
		;
connectAttr "Finger__instance_1:module_grp.msg" "hyperLayout1.hyp[0].dn";
connectAttr "Finger__instance_1:joints_grp.msg" "hyperLayout1.hyp[1].dn";
connectAttr "Finger__instance_1:hierarchyRepresentations_grp.msg" "hyperLayout1.hyp[2].dn"
		;
connectAttr "Finger__instance_1:orientationControls_grp.msg" "hyperLayout1.hyp[3].dn"
		;
connectAttr "Finger__instance_1:preferredAngleRepresentation_grp.msg" "hyperLayout1.hyp[4].dn"
		;
connectAttr "Finger__instance_1:root_joint.msg" "hyperLayout1.hyp[5].dn";
connectAttr "Finger__instance_1:knuckle_1_joint.msg" "hyperLayout1.hyp[6].dn";
connectAttr "Finger__instance_1:knuckle_2_joint.msg" "hyperLayout1.hyp[7].dn";
connectAttr "Finger__instance_1:knuckle_3_joint.msg" "hyperLayout1.hyp[8].dn";
connectAttr "Finger__instance_1:end_joint.msg" "hyperLayout1.hyp[9].dn";
connectAttr "Finger__instance_1:module_transform.msg" "hyperLayout1.hyp[10].dn";
connectAttr "Finger__instance_1:module_transformShape.msg" "hyperLayout1.hyp[11].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_container.msg" "hyperLayout1.hyp[12].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_container.msg" "hyperLayout1.hyp[13].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_container.msg" "hyperLayout1.hyp[14].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_container.msg" "hyperLayout1.hyp[15].dn"
		;
connectAttr "Finger__instance_1:end_joint_translation_control_container.msg" "hyperLayout1.hyp[16].dn"
		;
connectAttr "Finger__instance_1:root_joint_pointConstraint.msg" "hyperLayout1.hyp[17].dn"
		;
connectAttr "Finger__instance_1:hook_container.msg" "hyperLayout1.hyp[18].dn";
connectAttr "Finger__instance_1:root_joint_ikHandle.msg" "hyperLayout1.hyp[20].dn"
		;
connectAttr "Finger__instance_1:root_jointikEffector.msg" "hyperLayout1.hyp[21].dn"
		;
connectAttr "root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[22].dn"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator.msg" "hyperLayout1.hyp[23].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator.msg" "hyperLayout1.hyp[24].dn"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[25].dn"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[26].dn"
		;
connectAttr "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator.msg" "hyperLayout1.hyp[27].dn"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[28].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_scaleMultiply.msg" "hyperLayout1.hyp[29].dn"
		;
connectAttr "Finger__instance_1:root_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[30].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[31].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[32].dn"
		;
connectAttr "root_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[33].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[34].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[35].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[36].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle.msg" "hyperLayout1.hyp[38].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_jointikEffector.msg" "hyperLayout1.hyp[39].dn"
		;
connectAttr "knuckle_1_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[40].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator.msg" "hyperLayout1.hyp[41].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator.msg" "hyperLayout1.hyp[42].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[43].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[44].dn"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator.msg" "hyperLayout1.hyp[45].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[46].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_scaleMultiply.msg" "hyperLayout1.hyp[47].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[48].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[49].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[50].dn"
		;
connectAttr "knuckle_1_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[51].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[52].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[53].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[54].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle.msg" "hyperLayout1.hyp[56].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_jointikEffector.msg" "hyperLayout1.hyp[57].dn"
		;
connectAttr "knuckle_2_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[58].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator.msg" "hyperLayout1.hyp[59].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator.msg" "hyperLayout1.hyp[60].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[61].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[62].dn"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator.msg" "hyperLayout1.hyp[63].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[64].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_scaleMultiply.msg" "hyperLayout1.hyp[65].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[66].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[67].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[68].dn"
		;
connectAttr "knuckle_2_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[69].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[70].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[71].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[72].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle.msg" "hyperLayout1.hyp[74].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_jointikEffector.msg" "hyperLayout1.hyp[75].dn"
		;
connectAttr "knuckle_3_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout1.hyp[76].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator.msg" "hyperLayout1.hyp[77].dn"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator.msg" "hyperLayout1.hyp[78].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocator_pointConstraint.msg" "hyperLayout1.hyp[79].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_pointConstraint.msg" "hyperLayout1.hyp[80].dn"
		;
connectAttr "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator.msg" "hyperLayout1.hyp[81].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_scaleFactor.msg" "hyperLayout1.hyp[82].dn"
		;
connectAttr "Finger__instance_1:end_joint_scaleMultiply.msg" "hyperLayout1.hyp[83].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocatorShape.msg" "hyperLayout1.hyp[84].dn"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocatorShape.msg" "hyperLayout1.hyp[85].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp.msg" "hyperLayout1.hyp[86].dn"
		;
connectAttr "knuckle_3_joint_translation_control_poleVectorLocator_parentConstraintGrp_parentConstraint1.msg" "hyperLayout1.hyp[87].dn"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocator_pointConstraint.msg" "hyperLayout1.hyp[88].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocator.msg" "hyperLayout1.hyp[89].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control_poleVectorLocatorShape.msg" "hyperLayout1.hyp[90].dn"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_container.msg" "hyperLayout1.hyp[92].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_container.msg" "hyperLayout1.hyp[93].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_container.msg" "hyperLayout1.hyp[94].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_container.msg" "hyperLayout1.hyp[95].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_container.msg" "hyperLayout1.hyp[96].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_container.msg" "hyperLayout1.hyp[97].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_container.msg" "hyperLayout1.hyp[98].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_container.msg" "hyperLayout1.hyp[99].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_rootPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator.p1"
		;
connectAttr "Finger__instance_1:end_joint_endPosLocatorShape.wp" "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator.p2"
		;
connectAttr "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator.d" "Finger__instance_1:root_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "Finger__instance_1:root_joint_ikHandle_scaleFactor.ox" "Finger__instance_1:knuckle_1_joint_scaleMultiply.i2x"
		;
connectAttr "hyperLayout3.msg" "Finger__instance_1:knuckle_1_joint_translation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.t" "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[0]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.tx" "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[1]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.ty" "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[2]"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.tz" "Finger__instance_1:knuckle_1_joint_translation_control_container.boc[3]"
		;
connectAttr "hyperLayout6.msg" "Finger__instance_1:end_joint_translation_control_container.hl"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.t" "Finger__instance_1:end_joint_translation_control_container.boc[0]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.tx" "Finger__instance_1:end_joint_translation_control_container.boc[1]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.ty" "Finger__instance_1:end_joint_translation_control_container.boc[2]"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.tz" "Finger__instance_1:end_joint_translation_control_container.boc[3]"
		;
connectAttr "Finger__instance_1:hook_root_joint.r" "Finger__instance_1:hook_container.boc[0]"
		;
connectAttr "Finger__instance_1:hook_root_joint.rx" "Finger__instance_1:hook_container.boc[1]"
		;
connectAttr "Finger__instance_1:hook_root_joint.ry" "Finger__instance_1:hook_container.boc[2]"
		;
connectAttr "Finger__instance_1:hook_root_joint.rz" "Finger__instance_1:hook_container.boc[3]"
		;
connectAttr "Finger__instance_1:hook_target_joint.r" "Finger__instance_1:hook_container.boc[4]"
		;
connectAttr "Finger__instance_1:hook_target_joint.rx" "Finger__instance_1:hook_container.boc[5]"
		;
connectAttr "Finger__instance_1:hook_target_joint.ry" "Finger__instance_1:hook_container.boc[6]"
		;
connectAttr "Finger__instance_1:hook_target_joint.rz" "Finger__instance_1:hook_container.boc[7]"
		;
connectAttr "hyperLayout7.msg" "Finger__instance_1:hook_container.hl";
connectAttr "hyperLayout4.msg" "Finger__instance_1:knuckle_2_joint_translation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.t" "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[0]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.tx" "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[1]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.ty" "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[2]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.tz" "Finger__instance_1:knuckle_2_joint_translation_control_container.boc[3]"
		;
connectAttr "hyperLayout13.msg" "Finger__instance_1:root_joint_orientation_control_container.hl"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control.rx" "Finger__instance_1:root_joint_orientation_control_container.boc[0]"
		;
connectAttr "hyperLayout2.msg" "Finger__instance_1:root_joint_translation_control_container.hl"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.t" "Finger__instance_1:root_joint_translation_control_container.boc[0]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.tx" "Finger__instance_1:root_joint_translation_control_container.boc[1]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.ty" "Finger__instance_1:root_joint_translation_control_container.boc[2]"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.tz" "Finger__instance_1:root_joint_translation_control_container.boc[3]"
		;
connectAttr "hyperLayout5.msg" "Finger__instance_1:knuckle_3_joint_translation_control_container.hl"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.t" "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[0]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.tx" "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[1]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.ty" "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[2]"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.tz" "Finger__instance_1:knuckle_3_joint_translation_control_container.boc[3]"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlock.oc" "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[1]" "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.dsm"
		 -na;
connectAttr "groupId26.msg" "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlock.oc" "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_controlShape.iog.og[0]" "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.dsm"
		 -na;
connectAttr "groupId25.msg" "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlock.msg" "hyperLayout17.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlock.msg" "hyperLayout17.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.msg" "hyperLayout17.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.msg" "hyperLayout17.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control.msg" "hyperLayout17.hyp[5].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_controlShape.msg" "hyperLayout17.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_orientation_control_parentConstraint_grp.msg" "hyperLayout17.hyp[7].dn"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_parentConstraint1.msg" "hyperLayout17.hyp[8].dn"
		;
connectAttr "knuckle_2_joint_orientation_control_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout17.hyp[9].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.msg" "materialInfo17.sg"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlock.msg" "materialInfo17.m"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.msg" "materialInfo18.sg"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlock.msg" "materialInfo18.m"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlock.oc" "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[1]" "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.dsm"
		 -na;
connectAttr "groupId23.msg" "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlock.oc" "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_controlShape.iog.og[0]" "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.dsm"
		 -na;
connectAttr "groupId22.msg" "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlock.msg" "hyperLayout15.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlock.msg" "hyperLayout15.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.msg" "hyperLayout15.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.msg" "hyperLayout15.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control.msg" "hyperLayout15.hyp[5].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_controlShape.msg" "hyperLayout15.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_orientation_control_parentConstraint_grp.msg" "hyperLayout15.hyp[7].dn"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_parentConstraint1.msg" "hyperLayout15.hyp[8].dn"
		;
connectAttr "knuckle_1_joint_orientation_control_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout15.hyp[9].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.msg" "materialInfo14.sg"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlock.msg" "materialInfo14.m"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.msg" "materialInfo15.sg"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlock.msg" "materialInfo15.m"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_preferredAngle_representation.oc" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representationShape.iog" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_preferredAngle_representation.msg" "hyperLayout16.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation.msg" "hyperLayout16.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representationShape.msg" "hyperLayout16.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.msg" "hyperLayout16.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX.msg" "hyperLayout16.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_parentConstraintGrp.msg" "hyperLayout16.hyp[5].dn"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "hyperLayout16.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX_grp.msg" "hyperLayout16.hyp[7].dn"
		;
connectAttr "knuckle_1_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "hyperLayout16.hyp[8].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_rotateX.i"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.msg" "materialInfo16.sg"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_preferredAngle_representation.msg" "materialInfo16.m"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlock.oc" "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[1]" "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.dsm"
		 -na;
connectAttr "groupId29.msg" "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlock.oc" "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_controlShape.iog.og[0]" "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.dsm"
		 -na;
connectAttr "groupId28.msg" "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.gn"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlock.msg" "hyperLayout19.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlock.msg" "hyperLayout19.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.msg" "hyperLayout19.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.msg" "hyperLayout19.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control.msg" "hyperLayout19.hyp[5].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_controlShape.msg" "hyperLayout19.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_orientation_control_parentConstraint_grp.msg" "hyperLayout19.hyp[7].dn"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_parentConstraint1.msg" "hyperLayout19.hyp[8].dn"
		;
connectAttr "knuckle_3_joint_orientation_control_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout19.hyp[9].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.msg" "materialInfo20.sg"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlock.msg" "materialInfo20.m"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.msg" "materialInfo21.sg"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlock.msg" "materialInfo21.m"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_preferredAngle_representation.oc" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representationShape.iog" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_preferredAngle_representation.msg" "hyperLayout18.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation.msg" "hyperLayout18.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representationShape.msg" "hyperLayout18.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.msg" "hyperLayout18.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX.msg" "hyperLayout18.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_parentConstraintGrp.msg" "hyperLayout18.hyp[5].dn"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "hyperLayout18.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX_grp.msg" "hyperLayout18.hyp[7].dn"
		;
connectAttr "knuckle_2_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "hyperLayout18.hyp[8].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_rotateX.i"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.msg" "materialInfo19.sg"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_preferredAngle_representation.msg" "materialInfo19.m"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_preferredAngle_representation.oc" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.ss"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representationShape.iog" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_preferredAngle_representation.msg" "hyperLayout20.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation.msg" "hyperLayout20.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representationShape.msg" "hyperLayout20.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.msg" "hyperLayout20.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX.msg" "hyperLayout20.hyp[4].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_parentConstraintGrp.msg" "hyperLayout20.hyp[5].dn"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "hyperLayout20.hyp[6].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX_grp.msg" "hyperLayout20.hyp[7].dn"
		;
connectAttr "knuckle_3_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "hyperLayout20.hyp[8].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation.axis" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_rotateX.i"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.msg" "materialInfo22.sg"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_preferredAngle_representation.msg" "materialInfo22.m"
		;
connectAttr "Finger__instance_1:root_joint_m_preferredAngle_representation.oc" "Finger__instance_1:root_joint_preferredAngle_representation_SG.ss"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representationShape.iog" "Finger__instance_1:root_joint_preferredAngle_representation_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation.axis" "Finger__instance_1:root_joint_preferredAngle_representation_rotateX.i"
		;
connectAttr "Finger__instance_1:root_joint_m_preferredAngle_representation.msg" "hyperLayout14.hyp[0].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation.msg" "hyperLayout14.hyp[1].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representationShape.msg" "hyperLayout14.hyp[2].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_SG.msg" "hyperLayout14.hyp[3].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_rotateX.msg" "hyperLayout14.hyp[4].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_parentConstraintGrp.msg" "hyperLayout14.hyp[5].dn"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_parentConstraint1.msg" "hyperLayout14.hyp[6].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_rotateX_grp.msg" "hyperLayout14.hyp[7].dn"
		;
connectAttr "root_joint_preferredAngle_parentConstraintGrp_scaleConstraint1.msg" "hyperLayout14.hyp[8].dn"
		;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_SG.msg" "materialInfo13.sg"
		;
connectAttr "Finger__instance_1:root_joint_m_preferredAngle_representation.msg" "materialInfo13.m"
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlock.oc" "Finger__instance_1:root_joint_m_yAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:root_joint_orientation_controlShape.iog.og[0]" "Finger__instance_1:root_joint_m_yAxisBlockSG.dsm"
		 -na;
connectAttr "groupId19.msg" "Finger__instance_1:root_joint_m_yAxisBlockSG.gn" -na
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlockSG.msg" "materialInfo12.sg"
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlock.msg" "materialInfo12.m";
connectAttr "Finger__instance_1:root_joint_m_zAxisBlock.oc" "Finger__instance_1:root_joint_m_zAxisBlockSG.ss"
		;
connectAttr "Finger__instance_1:root_joint_orientation_controlShape.iog.og[1]" "Finger__instance_1:root_joint_m_zAxisBlockSG.dsm"
		 -na;
connectAttr "groupId20.msg" "Finger__instance_1:root_joint_m_zAxisBlockSG.gn" -na
		;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlockSG.msg" "materialInfo11.sg"
		;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlock.msg" "materialInfo11.m";
connectAttr "Finger__instance_1:knuckle_1_joint_translation_controlShape.msg" "hyperLayout3.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_translation_control.msg" "hyperLayout3.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.msg" "hyperLayout3.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control.msg" "hyperLayout3.hyp[3].dn"
		;
connectAttr "Finger__instance_1:end_joint_translation_controlShape.msg" "hyperLayout6.hyp[0].dn"
		;
connectAttr "Finger__instance_1:end_joint_translation_control.msg" "hyperLayout6.hyp[1].dn"
		;
connectAttr "Finger__instance_1:end_joint_m_translation_control_SG.msg" "hyperLayout6.hyp[2].dn"
		;
connectAttr "Finger__instance_1:end_joint_m_translation_control.msg" "hyperLayout6.hyp[3].dn"
		;
connectAttr "Finger__instance_1:hook_grp.msg" "hyperLayout7.hyp[0].dn";
connectAttr "Finger__instance_1:hook_root_joint.msg" "hyperLayout7.hyp[1].dn";
connectAttr "Finger__instance_1:hook_target_joint.msg" "hyperLayout7.hyp[2].dn";
connectAttr "Finger__instance_1:unhookedTarget.msg" "hyperLayout7.hyp[3].dn";
connectAttr "Finger__instance_1:unhookedTargetShape.msg" "hyperLayout7.hyp[4].dn"
		;
connectAttr "unhookedTarget_pointConstraint1.msg" "hyperLayout7.hyp[5].dn";
connectAttr "Finger__instance_1:hook_root_joint_ikHandle.msg" "hyperLayout7.hyp[6].dn"
		;
connectAttr "Finger__instance_1:hook_root_jointikEffector.msg" "hyperLayout7.hyp[7].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocator.msg" "hyperLayout7.hyp[8].dn"
		;
connectAttr "hook_root_joint_ikHandle_poleVectorConstraint1.msg" "hyperLayout7.hyp[9].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator.msg" "hyperLayout7.hyp[10].dn"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocator.msg" "hyperLayout7.hyp[11].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocator_pointConstraint.msg" "hyperLayout7.hyp[12].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_pointConstraint.msg" "hyperLayout7.hyp[13].dn"
		;
connectAttr "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" "hyperLayout7.hyp[14].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_scaleFactor.msg" "hyperLayout7.hyp[15].dn"
		;
connectAttr "Finger__instance_1:hook_target_joint_scaleMultiply.msg" "hyperLayout7.hyp[16].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_poleVectorLocatorShape.msg" "hyperLayout7.hyp[17].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocatorShape.msg" "hyperLayout7.hyp[18].dn"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocatorShape.msg" "hyperLayout7.hyp[19].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_pointConstraint.msg" "hyperLayout7.hyp[20].dn"
		;
connectAttr "Finger__instance_1:hook_pointConstraint.msg" "hyperLayout7.hyp[21].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_container.msg" "hyperLayout7.hyp[22].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_rootPosLocatorShape.wp" "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p1"
		;
connectAttr "Finger__instance_1:hook_target_joint_endPosLocatorShape.wp" "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.p2"
		;
connectAttr "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.d" "Finger__instance_1:hook_root_joint_ikHandle_scaleFactor.i1x"
		;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_scaleFactor.ox" "Finger__instance_1:hook_target_joint_scaleMultiply.i2x"
		;
connectAttr "hyperLayout8.msg" "Finger__instance_1:hook_root_joint_hook_representation_container.hl"
		;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation.oc" "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.ss"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representationShape.iog" "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.dsm"
		 -na;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation.msg" "hyperLayout8.hyp[1].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.msg" "hyperLayout8.hyp[3].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation.msg" "hyperLayout8.hyp[4].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representationShape.msg" "hyperLayout8.hyp[5].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_hook_representation_parentConstraint_grp.msg" "hyperLayout8.hyp[6].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_parentConstraint1.msg" "hyperLayout8.hyp[7].dn"
		;
connectAttr "hook_root_joint_hook_representation_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout8.hyp[8].dn"
		;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.msg" "materialInfo6.sg"
		;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation.msg" "materialInfo6.m"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_controlShape.msg" "hyperLayout4.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_translation_control.msg" "hyperLayout4.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.msg" "hyperLayout4.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control.msg" "hyperLayout4.hyp[3].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlock.msg" "hyperLayout13.hyp[0].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlock.msg" "hyperLayout13.hyp[1].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlockSG.msg" "hyperLayout13.hyp[3].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlockSG.msg" "hyperLayout13.hyp[4].dn"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control.msg" "hyperLayout13.hyp[5].dn"
		;
connectAttr "Finger__instance_1:root_joint_orientation_controlShape.msg" "hyperLayout13.hyp[6].dn"
		;
connectAttr "Finger__instance_1:root_joint_orientation_control_parentConstraint_grp.msg" "hyperLayout13.hyp[7].dn"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_parentConstraint1.msg" "hyperLayout13.hyp[8].dn"
		;
connectAttr "root_joint_orientation_control_parentConstraint_grp_scaleConstraint1.msg" "hyperLayout13.hyp[9].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_controlShape.msg" "hyperLayout2.hyp[0].dn"
		;
connectAttr "Finger__instance_1:root_joint_translation_control.msg" "hyperLayout2.hyp[1].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_translation_control_SG.msg" "hyperLayout2.hyp[2].dn"
		;
connectAttr "Finger__instance_1:root_joint_m_translation_control.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_controlShape.msg" "hyperLayout5.hyp[0].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_translation_control.msg" "hyperLayout5.hyp[1].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.msg" "hyperLayout5.hyp[2].dn"
		;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control.msg" "hyperLayout5.hyp[3].dn"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:root_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:root_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:root_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:root_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:root_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:root_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:root_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:end_joint_m_translation_control_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.message" ":defaultLightSet.message";
connectAttr "Finger__instance_1:root_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:end_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:root_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlockSG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hookRepresentation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_preferredAngle_representation_SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:end_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:hook_root_joint_m_hookRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_yAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_zAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:root_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_yAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_zAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_yAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_zAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_yAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_zAxisBlock.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:end_joint_m_translation_control.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:hook_root_joint_m_hookRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_m_hierarchyRepresentation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "HingeJoint__instance_2:IK_hinge_joint_m_preferredAngle_representation.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "Finger__instance_1:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:hook_root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:hook_target_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:distBetween_root_joint_rootPosLocator_knuckle_1_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:distBetween_knuckle_1_joint_rootPosLocator_knuckle_2_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_1_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:distBetween_knuckle_2_joint_rootPosLocator_knuckle_3_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_2_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:distBetween_knuckle_3_joint_rootPosLocator_end_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:knuckle_3_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:end_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_hook_root_joint_rootPosLocator_hook_target_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:hook_root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:hook_target_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_root_joint_rootPosLocator_hinge_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:root_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_hinge_joint_rootPosLocator_end_joint_endPosLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:hinge_joint_ikHandle_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:end_joint_scaleMultiply.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_root_joint_positionLocator_IK_hinge_joint_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_scaleFactor.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "HingeJoint__instance_2:distBetween_IK_hinge_joint_positionLocator_IK_root_joint_ikHandle_positionLocator_translationValue.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "Finger__instance_1:module_transformShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "HingeJoint__instance_2:module_transformShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "Group__groupShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Group__group2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of __duplicationCache.ma
