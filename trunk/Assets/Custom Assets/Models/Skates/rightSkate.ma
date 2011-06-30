//Maya ASCII 2010 scene
//Name: rightSkate.ma
//Last modified: Sun, Jun 12, 2011 05:45:51 PM
//Codeset: 1252
requires maya "2010";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2010";
fileInfo "version" "2010 x64";
fileInfo "cutIdentifier" "200907280308-756013";
fileInfo "osv" "Microsoft Windows Vista  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.592502571754066 7.3687432823823302 7.7468335135234643 ;
	setAttr ".r" -type "double3" 331.14353868610647 1385.0000000003706 360.00000000231364 ;
	setAttr ".rp" -type "double3" 0 0 1.1102230246251565e-016 ;
	setAttr ".rpt" -type "double3" 1.8131634224888466e-017 1.272000349389844e-018 -2.2054662624489059e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 15.625121613532524;
	setAttr ".coi" 15.116442407691629;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.03319739883376973 1.0526254393960259 0.99399472385245624 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -0.0045060161596044424 1.651402564921117 -0.044145355586995727 ;
createNode transform -n "transform9" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pTorus1";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -0.93754948643970404 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "transform8" -p "pTorus1";
	setAttr ".v" no;
createNode mesh -n "pTorusShape1" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	setAttr ".t" -type "double3" 0 0 1.2251798813290324 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0 0 1.1752396499518807 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 0.11233005406255681 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 0.11233005406255681 ;
createNode transform -n "pasted__group" -p "group1";
	setAttr ".t" -type "double3" 0 0 1.2251798813290324 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" 0 0 1.4190037165016691 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 1.2875697040144374 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 1.2875697040144374 ;
createNode transform -n "pasted__group1" -p "group2";
	setAttr ".t" -type "double3" 0 0 1.1752396499518807 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 0.11233005406255681 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 0.11233005406255681 ;
createNode transform -n "pasted__pasted__group" -p "pasted__group1";
	setAttr ".t" -type "double3" 0 0 1.2251798813290324 ;
	setAttr ".rp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
	setAttr ".sp" -type "double3" 0.0032341984848537203 -0.79165685790374818 -1.1128498272664755 ;
createNode transform -n "group3";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pTorus1" -p "group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0055873197739063 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "transform7" -p "|group3|pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pTorusShape1" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group4";
	setAttr ".t" -type "double3" 0 0 1.2824677257630923 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
createNode transform -n "pasted__group3" -p "group4";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pasted__pTorus1" -p "|group4|pasted__group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0384462517884365 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "transform6" -p "|group4|pasted__group3|pasted__pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pTorusShape1" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group5";
	setAttr ".t" -type "double3" 0 0 1.236711580923898 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 1.6850802561537326 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 1.6850802561537326 ;
createNode transform -n "pasted__group4" -p "group5";
	setAttr ".t" -type "double3" 0 0 1.2824677257630923 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
createNode transform -n "pasted__pasted__group3" -p "|group5|pasted__group4";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pasted__pasted__pTorus1" -p "|group5|pasted__group4|pasted__pasted__group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0389249481031648 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "transform5" -p "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pTorusShape1" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" 1.0760462767007604 0.98400764375605743 0.1039336374548534 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode transform -n "transform4" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPipe1";
	setAttr ".t" -type "double3" 1.0764115389925735 0.984 -0.27724755547981911 ;
createNode transform -n "transform3" -p "pPipe1";
	setAttr ".v" no;
createNode mesh -n "pPipeShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group6";
	setAttr ".t" -type "double3" -2.1051565119055065 0 0 ;
	setAttr ".rp" -type "double3" 1.0764115389925735 0.984 0.066311231597925985 ;
	setAttr ".sp" -type "double3" 1.0764115389925735 0.984 0.066311231597925985 ;
createNode transform -n "pasted__pCylinder2" -p "group6";
	setAttr ".t" -type "double3" 1.0760462767007604 0.98400764375605743 0.1039336374548534 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode transform -n "transform2" -p "|group6|pasted__pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pPipe1" -p "group6";
	setAttr ".t" -type "double3" 1.0764115389925735 0.984 -0.27724755547981911 ;
createNode transform -n "transform1" -p "|group6|pasted__pPipe1";
	setAttr ".v" no;
createNode mesh -n "pasted__pPipeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group7";
	setAttr ".rp" -type "double3" 0.023833274841308594 0.96466964483261108 0.91810667514801025 ;
	setAttr ".sp" -type "double3" 0.023833274841308594 0.96466964483261108 0.91810667514801025 ;
createNode transform -n "pasted__pCylinder1" -p "group7";
	setAttr ".t" -type "double3" -0.0045060161596044424 1.651402564921117 -0.044145355586995727 ;
createNode transform -n "pasted__transform9" -p "pasted__pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape1" -p "pasted__transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pTorus1" -p "group7";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -0.93754948643970404 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "pasted__transform8" -p "|group7|pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pTorusShape1" -p "pasted__transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group3" -p "group7";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pasted__pTorus1" -p "|group7|pasted__group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0055873197739063 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "pasted__transform7" -p "|group7|pasted__group3|pasted__pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pTorusShape1" -p "pasted__transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group4" -p "group7";
	setAttr ".t" -type "double3" 0 0 1.2824677257630923 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
createNode transform -n "pasted__pasted__group3" -p "|group7|pasted__group4";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pasted__pasted__pTorus1" -p "|group7|pasted__group4|pasted__pasted__group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0384462517884365 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "pasted__transform6" -p "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pTorusShape1" -p "pasted__transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group5" -p "group7";
	setAttr ".t" -type "double3" 0 0 1.236711580923898 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 1.6850802561537326 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 1.6850802561537326 ;
createNode transform -n "pasted__pasted__group4" -p "pasted__group5";
	setAttr ".t" -type "double3" 0 0 1.2824677257630923 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 0.40261253039064021 ;
createNode transform -n "pasted__pasted__pasted__group3" -p "pasted__pasted__group4";
	setAttr ".t" -type "double3" 0 0 1.2935085361710372 ;
	setAttr ".rp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
	setAttr ".sp" -type "double3" 0.0032342035142685077 -0.91150871610012896 -0.89089600578039696 ;
createNode transform -n "pasted__pasted__pasted__pasted__pTorus1" -p "pasted__pasted__pasted__group3";
	setAttr ".t" -type "double3" 0.0032342035142685077 -0.79427167338388582 -1.0389249481031648 ;
	setAttr ".s" -type "double3" 0.3375183126107143 0.3375183126107143 0.3375183126107143 ;
createNode transform -n "pasted__transform5" -p "pasted__pasted__pasted__pasted__pTorus1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pasted__pasted__pTorusShape1" -p "pasted__transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pCylinder2" -p "group7";
	setAttr ".t" -type "double3" 1.0760462767007604 0.98400764375605743 0.1039336374548534 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode transform -n "pasted__transform4" -p "|group7|pasted__pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pasted__pCylinderShape2" -p "pasted__transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pPipe1" -p "group7";
	setAttr ".t" -type "double3" 1.0764115389925735 0.984 -0.27724755547981911 ;
createNode transform -n "pasted__transform3" -p "|group7|pasted__pPipe1";
	setAttr ".v" no;
createNode mesh -n "pasted__pPipeShape1" -p "pasted__transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__group6" -p "group7";
	setAttr ".t" -type "double3" -2.1051565119055065 0 0 ;
	setAttr ".rp" -type "double3" 1.0764115389925735 0.984 0.066311231597925985 ;
	setAttr ".sp" -type "double3" 1.0764115389925735 0.984 0.066311231597925985 ;
createNode transform -n "pasted__pasted__pCylinder2" -p "pasted__group6";
	setAttr ".t" -type "double3" 1.0760462767007604 0.98400764375605743 0.1039336374548534 ;
	setAttr ".ra" -type "double3" 89.999999999999986 0 0 ;
createNode transform -n "pasted__transform2" -p "pasted__pasted__pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pCylinderShape2" -p "pasted__transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pasted__pasted__pPipe1" -p "pasted__group6";
	setAttr ".t" -type "double3" 1.0764115389925735 0.984 -0.27724755547981911 ;
createNode transform -n "pasted__transform1" -p "pasted__pasted__pPipe1";
	setAttr ".v" no;
createNode mesh -n "pasted__pasted__pPipeShape1" -p "pasted__transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode anisotropic -n "sphere";
createNode shadingEngine -n "anisotropic1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode shadingEngine -n "anisotropic2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/JandS/Desktop/box_texture.tga";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -constrainDrag 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -constrainDrag 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 1.0601301386157618;
	setAttr ".h" 3.3028051298422341;
	setAttr ".sa" 8;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.092368223 0.55046755 0.8607322 ;
	setAttr ".rs" 55231;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[2:4]" -type "float3" 0.1937484 0 0  0.1937484 0 0  0.1937484 
		0 0 ;
	setAttr ".tk[10:12]" -type "float3" 0.1937484 0 0  0.19374843 2.9802322e-008 
		-5.9604645e-008  0.1937484 0 0 ;
	setAttr ".tk[16:31]" -type "float3" -0.16738354 0 0  -3.2986442e-008 -2.1536835e-009 
		0  0.16738358 0 -2.9802322e-008  0.23671605 -1.4901161e-008 0  0.16738361 0 5.9604645e-008  
		5.9604645e-008 6.7520887e-009 0  -0.16738355 7.4505806e-009 0  -0.23671609 0 0  -0.16738354 
		-7.4505806e-009 0  1.3309098e-008 1.3969839e-008 1.4901161e-008  0.16738361 -3.7252903e-008 
		0  0.23671609 -1.4901161e-008 0  0.16738361 0 5.9604645e-008  5.9604645e-008 2.3283064e-009 
		-2.9802322e-008  -0.16738355 7.4505806e-009 0  -0.23671605 -2.9802322e-008 5.9604645e-008 ;
	setAttr ".tk[33]" -type "float3" 7.5221589e-009 9.3132257e-010 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.092368223 0.55046755 0.8607322 ;
	setAttr ".rs" 47867;
	setAttr ".lt" -type "double3" 0.57088164708072053 0 1.8527019504517139 ;
	setAttr ".ls" -type "double3" -1.0476662854723064 0.64484867830928272 0.2182871036975354 ;
	setAttr ".c[0]"  0 1 1;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".pc" -type "double3" -0.54562280711931166 1.039147193788498 1.8908702404277005 ;
	setAttr ".ro" -type "double3" -30.637364933621139 -1.8613344336522093 -103.7601813298416 ;
	setAttr ".ps" -type "double2" 1 1.1009351015090942 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[6]" -type "float3" 1.4901161e-008 0 -1.1920929e-007 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-008 0 -1.1920929e-007 ;
	setAttr ".tk[40:46]" -type "float3" 0 -0.19205657 0  -0.02277578 -0.19205657 
		0.81173605  -0.02277578 -0.11746829 0.81173605  0 -0.11746829 0  0 -0.19205657 0  
		0 -0.11746829 0  0 -0.074588269 0 ;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 4 "vtx[5]" "vtx[12]" "vtx[35]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[6]" -type "float3" 0.2452178 0 0.11338542 ;
	setAttr ".tk[14]" -type "float3" 0.2452178 0 0.11338542 ;
	setAttr ".tk[42:43]" -type "float3" -0.28335485 0 0  -0.28335485 0 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -0.13481489 0 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.090155855 0 ;
	setAttr ".tk[4]" -type "float3" -0.13194308 2.9802322e-008 0.037638377 ;
	setAttr ".tk[6:8]" -type "float3" -0.13481489 0 0  -0.13481489 0 0  -0.13481489 
		0 0 ;
	setAttr ".tk[12]" -type "float3" -0.13194308 2.9802322e-008 0.037638377 ;
	setAttr ".tk[14:15]" -type "float3" -0.23255666 0 -0.14937755  -0.13481489 
		0 0 ;
	setAttr ".tk[36:42]" -type "float3" -0.41288722 0 -0.25962153  -0.41288722 
		-0.28792641 -0.25962153  0 -0.2700443 0  -0.13481489 0 0  -0.13481489 -0.37108538 
		0  -0.093490645 0 0  -0.09349063 -0.14544299 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 3 "e[4:5]" "e[59]" "e[61]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 3 "e[53]" "e[55:56]" "e[58]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[67]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.024960821 -0.036218729 0.92022747 ;
	setAttr ".rs" 47060;
	setAttr ".lt" -type "double3" -6.9826352146990325e-018 1.478851763270228e-016 0.24680948389186491 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTorus -n "polyTorus1";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyTorus -n "pasted__polyTorus1";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyTorus -n "pasted__pasted__polyTorus1";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyTorus -n "pasted__pasted__pasted__polyTorus1";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".r" 0.23555271595343494;
	setAttr ".h" 0.5;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPipe -n "polyPipe1";
	setAttr ".ax" -type "double3" 0 1 90 ;
	setAttr ".r" 0.236;
	setAttr ".h" 0.5;
	setAttr ".t" 0.15;
	setAttr ".sa" 10;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[40:49]";
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.35393363 ;
	setAttr ".rs" 60663;
	setAttr ".lt" -type "double3" 0 1.2885860817304601e-016 0.11982721656475941 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.47376084 ;
	setAttr ".rs" 46375;
	setAttr ".lt" -type "double3" 0 2.463051331759287e-016 0.063595152590610785 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[21:30]" -type "float3"  -0.043304071 0 -1.0957727e-008 
		-0.035033695 0 0.0254535 -0.013381665 0 0.041184612 0.013381708 0 0.041184612 0.03503374 
		0 0.02545348 0.043304071 0 -1.0957727e-008 0.035033695 0 -0.0254535 0.013381665 0 
		-0.041184612 -0.013381708 0 -0.041184612 -0.035033695 0 -0.02545348;
createNode polyPipe -n "pasted__polyPipe1";
	setAttr ".ax" -type "double3" 0 1 90 ;
	setAttr ".r" 0.236;
	setAttr ".h" 0.5;
	setAttr ".t" 0.15;
	setAttr ".sa" 10;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.47376084 ;
	setAttr ".rs" 46375;
	setAttr ".lt" -type "double3" 0 2.463051331759287e-016 0.063595152590610785 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "pasted__polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[21:30]" -type "float3"  -0.043304071 0 -1.0957727e-008 
		-0.035033695 0 0.0254535 -0.013381665 0 0.041184612 0.013381708 0 0.041184612 0.03503374 
		0 0.02545348 0.043304071 0 -1.0957727e-008 0.035033695 0 -0.0254535 0.013381665 0 
		-0.041184612 -0.013381708 0 -0.041184612 -0.035033695 0 -0.02545348;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.35393363 ;
	setAttr ".rs" 60663;
	setAttr ".lt" -type "double3" 0 1.2885860817304601e-016 0.11982721656475941 ;
	setAttr ".c[0]"  0 1 1;
createNode deleteComponent -n "pasted__deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[40:49]";
createNode polyCylinder -n "pasted__polyCylinder2";
	setAttr ".r" 0.23555271595343494;
	setAttr ".h" 0.5;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.073354758 0 ;
	setAttr ".tk[33]" -type "float3" 0.094702989 0 -0.053613972 ;
	setAttr ".tk[35:36]" -type "float3" 0 -0.11102591 0  0.094702989 -0.11102591 
		-0.053613964 ;
	setAttr ".tk[38:51]" -type "float3" 0 -0.052985881 0  0.05719975 0 0.7622503  
		0.094261497 -0.39977354 0.7622503  0.17018411 0 -0.26060736  -0.0089070713 0 -0.20963173  
		0.16494182 0 0.67625397  0.12850623 0 0.018339187  0.16049664 0 0.099858172  0.10486782 
		0.073354758 0.17747982  0.0052791657 0 0.20963173  -0.10486776 5.9604645e-008 0.17747982  
		-0.16049664 0 0.099858172  -0.14880006 0 0.010495789  -0.13811518 0 -0.16529915 ;
createNode polySmoothFace -n "polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[31:40]" -type "float3"  -0.11610778 0 1.0022586e-016 
		-0.093933031 0 0.068246491 -0.03587915 0 0.11042499 0.035879303 0 0.11042499 0.093933195 
		0 0.068246432 0.11610778 0 1.0022586e-016 0.093933031 0 -0.068246432 0.03587915 0 
		-0.11042499 -0.035879303 0 -0.11042499 -0.093933031 0 -0.06824635;
createNode polySmoothFace -n "polySmoothFace7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[31:40]" -type "float3"  -0.11610778 0 1.0022586e-016 
		-0.093933031 0 0.068246491 -0.03587915 0 0.11042499 0.035879303 0 0.11042499 0.093933195 
		0 0.068246432 0.11610778 0 1.0022586e-016 0.093933031 0 -0.068246432 0.03587915 0 
		-0.11042499 -0.035879303 0 -0.11042499 -0.093933031 0 -0.06824635;
createNode polySmoothFace -n "polySmoothFace9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyUnite -n "polyUnite1";
	setAttr -s 9 ".ip";
	setAttr -s 9 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:201]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:201]";
createNode polySmoothFace -n "pasted__polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "pasted__polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.073354758 0 ;
	setAttr ".tk[33]" -type "float3" 0.094702989 0 -0.053613972 ;
	setAttr ".tk[35:36]" -type "float3" 0 -0.11102591 0  0.094702989 -0.11102591 
		-0.053613964 ;
	setAttr ".tk[38:51]" -type "float3" 0 -0.052985881 0  0.05719975 0 0.7622503  
		0.094261497 -0.39977354 0.7622503  0.17018411 0 -0.26060736  -0.0089070713 0 -0.20963173  
		0.16494182 0 0.67625397  0.12850623 0 0.018339187  0.16049664 0 0.099858172  0.10486782 
		0.073354758 0.17747982  0.0052791657 0 0.20963173  -0.10486776 5.9604645e-008 0.17747982  
		-0.16049664 0 0.099858172  -0.14880006 0 0.010495789  -0.13811518 0 -0.16529915 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.024960821 -0.036218729 0.92022747 ;
	setAttr ".rs" 47060;
	setAttr ".lt" -type "double3" -6.9826352146990325e-018 1.478851763270228e-016 0.24680948389186491 ;
	setAttr ".c[0]"  0 1 1;
createNode deleteComponent -n "pasted__deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "e[67]";
createNode deleteComponent -n "pasted__deleteComponent2";
	setAttr ".dc" -type "componentList" 3 "e[53]" "e[55:56]" "e[58]";
createNode deleteComponent -n "pasted__deleteComponent1";
	setAttr ".dc" -type "componentList" 3 "e[4:5]" "e[59]" "e[61]";
createNode polyTweak -n "pasted__polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -0.13481489 0 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.090155855 0 ;
	setAttr ".tk[4]" -type "float3" -0.13194308 2.9802322e-008 0.037638377 ;
	setAttr ".tk[6:8]" -type "float3" -0.13481489 0 0  -0.13481489 0 0  -0.13481489 
		0 0 ;
	setAttr ".tk[12]" -type "float3" -0.13194308 2.9802322e-008 0.037638377 ;
	setAttr ".tk[14:15]" -type "float3" -0.23255666 0 -0.14937755  -0.13481489 
		0 0 ;
	setAttr ".tk[36:42]" -type "float3" -0.41288722 0 -0.25962153  -0.41288722 
		-0.28792641 -0.25962153  0 -0.2700443 0  -0.13481489 0 0  -0.13481489 -0.37108538 
		0  -0.093490645 0 0  -0.09349063 -0.14544299 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert3";
	setAttr ".ics" -type "componentList" 4 "vtx[5]" "vtx[12]" "vtx[35]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyTweak -n "pasted__polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[6]" -type "float3" 0.2452178 0 0.11338542 ;
	setAttr ".tk[14]" -type "float3" 0.2452178 0 0.11338542 ;
	setAttr ".tk[42:43]" -type "float3" -0.28335485 0 0  -0.28335485 0 0 ;
createNode polyMergeVert -n "pasted__polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "pasted__polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".am" yes;
createNode polyTweak -n "pasted__polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[6]" -type "float3" 1.4901161e-008 0 -1.1920929e-007 ;
	setAttr ".tk[14]" -type "float3" 1.4901161e-008 0 -1.1920929e-007 ;
	setAttr ".tk[40:46]" -type "float3" 0 -0.19205657 0  -0.02277578 -0.19205657 
		0.81173605  -0.02277578 -0.11746829 0.81173605  0 -0.11746829 0  0 -0.19205657 0  
		0 -0.11746829 0  0 -0.074588269 0 ;
createNode polyCut -n "pasted__polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".pc" -type "double3" -0.54562280711931166 1.039147193788498 1.8908702404277005 ;
	setAttr ".ro" -type "double3" -30.637364933621139 -1.8613344336522093 -103.7601813298416 ;
	setAttr ".ps" -type "double2" 1 1.1009351015090942 ;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.092368223 0.55046755 0.8607322 ;
	setAttr ".rs" 47867;
	setAttr ".lt" -type "double3" 0.57088164708072053 0 1.8527019504517139 ;
	setAttr ".ls" -type "double3" -1.0476662854723064 0.64484867830928272 0.2182871036975354 ;
	setAttr ".c[0]"  0 1 1;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.0045060161596044424 1.651402564921117 -0.044145355586995727 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.092368223 0.55046755 0.8607322 ;
	setAttr ".rs" 55231;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "pasted__polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[2:4]" -type "float3" 0.1937484 0 0  0.1937484 0 0  0.1937484 
		0 0 ;
	setAttr ".tk[10:12]" -type "float3" 0.1937484 0 0  0.19374843 2.9802322e-008 
		-5.9604645e-008  0.1937484 0 0 ;
	setAttr ".tk[16:31]" -type "float3" -0.16738354 0 0  -3.2986442e-008 -2.1536835e-009 
		0  0.16738358 0 -2.9802322e-008  0.23671605 -1.4901161e-008 0  0.16738361 0 5.9604645e-008  
		5.9604645e-008 6.7520887e-009 0  -0.16738355 7.4505806e-009 0  -0.23671609 0 0  -0.16738354 
		-7.4505806e-009 0  1.3309098e-008 1.3969839e-008 1.4901161e-008  0.16738361 -3.7252903e-008 
		0  0.23671609 -1.4901161e-008 0  0.16738361 0 5.9604645e-008  5.9604645e-008 2.3283064e-009 
		-2.9802322e-008  -0.16738355 7.4505806e-009 0  -0.23671605 -2.9802322e-008 5.9604645e-008 ;
	setAttr ".tk[33]" -type "float3" 7.5221589e-009 9.3132257e-010 0 ;
createNode polyCylinder -n "pasted__polyCylinder1";
	setAttr ".r" 1.0601301386157618;
	setAttr ".h" 3.3028051298422341;
	setAttr ".sa" 8;
	setAttr ".sh" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySmoothFace -n "pasted__polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTorus -n "pasted__polyTorus2";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode groupId -n "pasted__groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySmoothFace -n "pasted__polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTorus -n "pasted__pasted__polyTorus2";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode groupId -n "pasted__groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySmoothFace -n "pasted__polySmoothFace4";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTorus -n "pasted__pasted__pasted__polyTorus2";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode groupId -n "pasted__groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:399]";
createNode polySmoothFace -n "pasted__polySmoothFace5";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTorus -n "pasted__pasted__pasted__pasted__polyTorus1";
	setAttr ".ax" -type "double3" 90 1 0 ;
	setAttr ".r" 1.088;
	setAttr ".sr" 0.75;
	setAttr ".sa" 10;
	setAttr ".sh" 10;
createNode groupId -n "pasted__groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode polySmoothFace -n "pasted__polySmoothFace6";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "pasted__polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[31:40]" -type "float3"  -0.11610778 0 1.0022586e-016 
		-0.093933031 0 0.068246491 -0.03587915 0 0.11042499 0.035879303 0 0.11042499 0.093933195 
		0 0.068246432 0.11610778 0 1.0022586e-016 0.093933031 0 -0.068246432 0.03587915 0 
		-0.11042499 -0.035879303 0 -0.11042499 -0.093933031 0 -0.06824635;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.47376084 ;
	setAttr ".rs" 46375;
	setAttr ".lt" -type "double3" 0 2.463051331759287e-016 0.063595152590610785 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "pasted__polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[21:30]" -type "float3"  -0.043304071 0 -1.0957727e-008 
		-0.035033695 0 0.0254535 -0.013381665 0 0.041184612 0.013381708 0 0.041184612 0.03503374 
		0 0.02545348 0.043304071 0 -1.0957727e-008 0.035033695 0 -0.0254535 0.013381665 0 
		-0.041184612 -0.013381708 0 -0.041184612 -0.035033695 0 -0.02545348;
createNode polyExtrudeFace -n "pasted__polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.35393363 ;
	setAttr ".rs" 60663;
	setAttr ".lt" -type "double3" 0 1.2885860817304601e-016 0.11982721656475941 ;
	setAttr ".c[0]"  0 1 1;
createNode deleteComponent -n "pasted__deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "e[40:49]";
createNode polyCylinder -n "pasted__polyCylinder3";
	setAttr ".r" 0.23555271595343494;
	setAttr ".h" 0.5;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode polySmoothFace -n "pasted__polySmoothFace7";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyPipe -n "pasted__polyPipe2";
	setAttr ".ax" -type "double3" 0 1 90 ;
	setAttr ".r" 0.236;
	setAttr ".h" 0.5;
	setAttr ".t" 0.15;
	setAttr ".sa" 10;
createNode groupId -n "pasted__groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode polySmoothFace -n "pasted__polySmoothFace8";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "pasted__polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[31:40]" -type "float3"  -0.11610778 0 1.0022586e-016 
		-0.093933031 0 0.068246491 -0.03587915 0 0.11042499 0.035879303 0 0.11042499 0.093933195 
		0 0.068246432 0.11610778 0 1.0022586e-016 0.093933031 0 -0.068246432 0.03587915 0 
		-0.11042499 -0.035879303 0 -0.11042499 -0.093933031 0 -0.06824635;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.47376084 ;
	setAttr ".rs" 46375;
	setAttr ".lt" -type "double3" 0 2.463051331759287e-016 0.063595152590610785 ;
	setAttr ".c[0]"  0 1 1;
createNode polyTweak -n "pasted__pasted__polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[21:30]" -type "float3"  -0.043304071 0 -1.0957727e-008 
		-0.035033695 0 0.0254535 -0.013381665 0 0.041184612 0.013381708 0 0.041184612 0.03503374 
		0 0.02545348 0.043304071 0 -1.0957727e-008 0.035033695 0 -0.0254535 0.013381665 0 
		-0.041184612 -0.013381708 0 -0.041184612 -0.035033695 0 -0.02545348;
createNode polyExtrudeFace -n "pasted__pasted__polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[20]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 1 0 0 -1 2.2204460492503131e-016 0
		 2.9656347377081871 0.98400764375605743 0.1039336374548534 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.9656348 0.98400766 0.35393363 ;
	setAttr ".rs" 60663;
	setAttr ".lt" -type "double3" 0 1.2885860817304601e-016 0.11982721656475941 ;
	setAttr ".c[0]"  0 1 1;
createNode deleteComponent -n "pasted__pasted__deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "e[40:49]";
createNode polyCylinder -n "pasted__pasted__polyCylinder2";
	setAttr ".r" 0.23555271595343494;
	setAttr ".h" 0.5;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "pasted__groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "pasted__groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:159]";
createNode polySmoothFace -n "pasted__polySmoothFace9";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyPipe -n "pasted__pasted__polyPipe1";
	setAttr ".ax" -type "double3" 0 1 90 ;
	setAttr ".r" 0.236;
	setAttr ".h" 0.5;
	setAttr ".t" 0.15;
	setAttr ".sa" 10;
createNode groupId -n "pasted__groupId17";
	setAttr ".ihi" 0;
createNode groupId -n "pasted__groupId18";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 12;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 37 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 36 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[1].cgid";
connectAttr "groupId3.id" "pTorusShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pTorusShape1.iog.og[1].gco";
connectAttr "groupParts2.og" "pTorusShape1.i";
connectAttr "groupId4.id" "pTorusShape1.ciog.cog[1].cgid";
connectAttr "groupParts3.og" "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.i"
		;
connectAttr "groupId5.id" "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "groupId6.id" "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "groupParts4.og" "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.i"
		;
connectAttr "groupId7.id" "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "groupId8.id" "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "groupParts5.og" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.i"
		;
connectAttr "groupId9.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "groupId10.id" "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "groupId11.id" "pCylinderShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[1].gco";
connectAttr "groupParts6.og" "pCylinderShape2.i";
connectAttr "groupId12.id" "pCylinderShape2.ciog.cog[1].cgid";
connectAttr "groupId13.id" "pPipeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pPipeShape1.iog.og[1].gco";
connectAttr "groupParts7.og" "pPipeShape1.i";
connectAttr "groupId14.id" "pPipeShape1.ciog.cog[1].cgid";
connectAttr "groupParts8.og" "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.i"
		;
connectAttr "groupId15.id" "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[1].gco"
		;
connectAttr "groupId16.id" "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.ciog.cog[1].cgid"
		;
connectAttr "groupParts9.og" "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.i"
		;
connectAttr "groupId17.id" "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.iog.og[1].gco"
		;
connectAttr "groupId18.id" "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.ciog.cog[1].cgid"
		;
connectAttr "polyUnite1.out" "polySurfaceShape1.i";
connectAttr "pasted__groupId1.id" "pasted__pCylinderShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pCylinderShape1.iog.og[1].gco";
connectAttr "pasted__groupParts1.og" "pasted__pCylinderShape1.i";
connectAttr "pasted__groupId2.id" "pasted__pCylinderShape1.ciog.cog[1].cgid";
connectAttr "pasted__groupId3.id" "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupParts2.og" "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.i"
		;
connectAttr "pasted__groupId4.id" "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupParts3.og" "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.i"
		;
connectAttr "pasted__groupId5.id" "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId6.id" "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupParts4.og" "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.i"
		;
connectAttr "pasted__groupId7.id" "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId8.id" "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupParts5.og" "pasted__pasted__pasted__pasted__pTorusShape1.i"
		;
connectAttr "pasted__groupId9.id" "pasted__pasted__pasted__pasted__pTorusShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pasted__pasted__pTorusShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId10.id" "pasted__pasted__pasted__pasted__pTorusShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupId11.id" "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.iog.og[1].gco"
		;
connectAttr "pasted__groupParts6.og" "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.i"
		;
connectAttr "pasted__groupId12.id" "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupId13.id" "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupParts7.og" "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.i"
		;
connectAttr "pasted__groupId14.id" "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupParts8.og" "pasted__pasted__pCylinderShape2.i";
connectAttr "pasted__groupId15.id" "pasted__pasted__pCylinderShape2.iog.og[1].gid"
		;
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pCylinderShape2.iog.og[1].gco"
		;
connectAttr "pasted__groupId16.id" "pasted__pasted__pCylinderShape2.ciog.cog[1].cgid"
		;
connectAttr "pasted__groupParts9.og" "pasted__pasted__pPipeShape1.i";
connectAttr "pasted__groupId17.id" "pasted__pasted__pPipeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pasted__pasted__pPipeShape1.iog.og[1].gco"
		;
connectAttr "pasted__groupId18.id" "pasted__pasted__pPipeShape1.ciog.cog[1].cgid"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "anisotropic1SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "anisotropic2SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "anisotropic1SG.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "anisotropic2SG.msg" "lightLinker1.slnk[3].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "sphere.c";
connectAttr "sphere.oc" "anisotropic1SG.ss";
connectAttr "anisotropic1SG.msg" "materialInfo1.sg";
connectAttr "sphere.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "anisotropic2SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyCut1.out" "polyTweak2.ip";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweak3.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak3.ip";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyCylinder2.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "pasted__polyTweak5.out" "pasted__polyExtrudeFace5.ip";
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.wm" "pasted__polyExtrudeFace5.mp"
		;
connectAttr "pasted__polyExtrudeFace4.out" "pasted__polyTweak5.ip";
connectAttr "pasted__deleteComponent4.og" "pasted__polyExtrudeFace4.ip";
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.wm" "pasted__polyExtrudeFace4.mp"
		;
connectAttr "pasted__polyCylinder2.out" "pasted__deleteComponent4.ig";
connectAttr "polyTweak6.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTorus1.out" "polySmoothFace2.ip";
connectAttr "pasted__polyTorus1.out" "polySmoothFace3.ip";
connectAttr "pasted__pasted__polyTorus1.out" "polySmoothFace4.ip";
connectAttr "pasted__pasted__pasted__polyTorus1.out" "polySmoothFace5.ip";
connectAttr "polyTweak7.out" "polySmoothFace6.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyPipe1.out" "polySmoothFace7.ip";
connectAttr "polyTweak8.out" "polySmoothFace8.ip";
connectAttr "pasted__polyExtrudeFace5.out" "polyTweak8.ip";
connectAttr "pasted__polyPipe1.out" "polySmoothFace9.ip";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pTorusShape1.o" "polyUnite1.ip[1]";
connectAttr "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.o" "polyUnite1.ip[2]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.o" "polyUnite1.ip[3]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.o" "polyUnite1.ip[4]"
		;
connectAttr "pCylinderShape2.o" "polyUnite1.ip[5]";
connectAttr "pPipeShape1.o" "polyUnite1.ip[6]";
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.o" "polyUnite1.ip[7]"
		;
connectAttr "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.o" "polyUnite1.ip[8]"
		;
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pTorusShape1.wm" "polyUnite1.im[1]";
connectAttr "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.wm" "polyUnite1.im[2]"
		;
connectAttr "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.wm" "polyUnite1.im[3]"
		;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.wm" "polyUnite1.im[4]"
		;
connectAttr "pCylinderShape2.wm" "polyUnite1.im[5]";
connectAttr "pPipeShape1.wm" "polyUnite1.im[6]";
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.wm" "polyUnite1.im[7]"
		;
connectAttr "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.wm" "polyUnite1.im[8]"
		;
connectAttr "polySmoothFace1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySmoothFace2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySmoothFace3.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polySmoothFace4.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polySmoothFace5.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "polySmoothFace6.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "polySmoothFace7.out" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "polySmoothFace8.out" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "polySmoothFace9.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "pasted__polySmoothFace1.out" "pasted__groupParts1.ig";
connectAttr "pasted__groupId1.id" "pasted__groupParts1.gi";
connectAttr "pasted__polyTweak7.out" "pasted__polySmoothFace1.ip";
connectAttr "pasted__polyExtrudeFace3.out" "pasted__polyTweak7.ip";
connectAttr "pasted__deleteComponent3.og" "pasted__polyExtrudeFace3.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace3.mp";
connectAttr "pasted__deleteComponent2.og" "pasted__deleteComponent3.ig";
connectAttr "pasted__deleteComponent1.og" "pasted__deleteComponent2.ig";
connectAttr "pasted__polyTweak4.out" "pasted__deleteComponent1.ig";
connectAttr "pasted__polyMergeVert4.out" "pasted__polyTweak4.ip";
connectAttr "pasted__polyMergeVert3.out" "pasted__polyMergeVert4.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyMergeVert4.mp";
connectAttr "pasted__polyTweak3.out" "pasted__polyMergeVert3.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyMergeVert3.mp";
connectAttr "pasted__polyMergeVert2.out" "pasted__polyTweak3.ip";
connectAttr "pasted__polyMergeVert1.out" "pasted__polyMergeVert2.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyMergeVert2.mp";
connectAttr "pasted__polyTweak2.out" "pasted__polyMergeVert1.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyMergeVert1.mp";
connectAttr "pasted__polyCut1.out" "pasted__polyTweak2.ip";
connectAttr "pasted__polyExtrudeFace2.out" "pasted__polyCut1.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyCut1.mp";
connectAttr "pasted__polyExtrudeFace1.out" "pasted__polyExtrudeFace2.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace2.mp";
connectAttr "pasted__polyTweak1.out" "pasted__polyExtrudeFace1.ip";
connectAttr "pasted__pCylinderShape1.wm" "pasted__polyExtrudeFace1.mp";
connectAttr "pasted__polyCylinder1.out" "pasted__polyTweak1.ip";
connectAttr "pasted__polySmoothFace2.out" "pasted__groupParts2.ig";
connectAttr "pasted__groupId3.id" "pasted__groupParts2.gi";
connectAttr "pasted__polyTorus2.out" "pasted__polySmoothFace2.ip";
connectAttr "pasted__polySmoothFace3.out" "pasted__groupParts3.ig";
connectAttr "pasted__groupId5.id" "pasted__groupParts3.gi";
connectAttr "pasted__pasted__polyTorus2.out" "pasted__polySmoothFace3.ip";
connectAttr "pasted__polySmoothFace4.out" "pasted__groupParts4.ig";
connectAttr "pasted__groupId7.id" "pasted__groupParts4.gi";
connectAttr "pasted__pasted__pasted__polyTorus2.out" "pasted__polySmoothFace4.ip"
		;
connectAttr "pasted__polySmoothFace5.out" "pasted__groupParts5.ig";
connectAttr "pasted__groupId9.id" "pasted__groupParts5.gi";
connectAttr "pasted__pasted__pasted__pasted__polyTorus1.out" "pasted__polySmoothFace5.ip"
		;
connectAttr "pasted__polySmoothFace6.out" "pasted__groupParts6.ig";
connectAttr "pasted__groupId11.id" "pasted__groupParts6.gi";
connectAttr "pasted__polyTweak8.out" "pasted__polySmoothFace6.ip";
connectAttr "pasted__polyExtrudeFace7.out" "pasted__polyTweak8.ip";
connectAttr "pasted__polyTweak6.out" "pasted__polyExtrudeFace7.ip";
connectAttr "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.wm" "pasted__polyExtrudeFace7.mp"
		;
connectAttr "pasted__polyExtrudeFace6.out" "pasted__polyTweak6.ip";
connectAttr "pasted__deleteComponent5.og" "pasted__polyExtrudeFace6.ip";
connectAttr "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.wm" "pasted__polyExtrudeFace6.mp"
		;
connectAttr "pasted__polyCylinder3.out" "pasted__deleteComponent5.ig";
connectAttr "pasted__polySmoothFace7.out" "pasted__groupParts7.ig";
connectAttr "pasted__groupId13.id" "pasted__groupParts7.gi";
connectAttr "pasted__polyPipe2.out" "pasted__polySmoothFace7.ip";
connectAttr "pasted__polySmoothFace8.out" "pasted__groupParts8.ig";
connectAttr "pasted__groupId15.id" "pasted__groupParts8.gi";
connectAttr "pasted__polyTweak9.out" "pasted__polySmoothFace8.ip";
connectAttr "pasted__pasted__polyExtrudeFace5.out" "pasted__polyTweak9.ip";
connectAttr "pasted__pasted__polyTweak5.out" "pasted__pasted__polyExtrudeFace5.ip"
		;
connectAttr "pasted__pasted__pCylinderShape2.wm" "pasted__pasted__polyExtrudeFace5.mp"
		;
connectAttr "pasted__pasted__polyExtrudeFace4.out" "pasted__pasted__polyTweak5.ip"
		;
connectAttr "pasted__pasted__deleteComponent4.og" "pasted__pasted__polyExtrudeFace4.ip"
		;
connectAttr "pasted__pasted__pCylinderShape2.wm" "pasted__pasted__polyExtrudeFace4.mp"
		;
connectAttr "pasted__pasted__polyCylinder2.out" "pasted__pasted__deleteComponent4.ig"
		;
connectAttr "pasted__polySmoothFace9.out" "pasted__groupParts9.ig";
connectAttr "pasted__groupId17.id" "pasted__groupParts9.gi";
connectAttr "pasted__pasted__polyPipe1.out" "pasted__polySmoothFace9.ip";
connectAttr "anisotropic1SG.pa" ":renderPartition.st" -na;
connectAttr "anisotropic2SG.pa" ":renderPartition.st" -na;
connectAttr "sphere.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "polySurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group3|pasted__pTorus1|transform7|pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group4|pasted__group3|pasted__pasted__pTorus1|transform6|pasted__pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group5|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|transform5|pasted__pasted__pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPipeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__pCylinder2|transform2|pasted__pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group6|pasted__pPipe1|transform1|pasted__pPipeShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pCylinderShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pCylinderShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__pTorus1|pasted__transform8|pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group3|pasted__pasted__pTorus1|pasted__transform7|pasted__pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__group4|pasted__pasted__group3|pasted__pasted__pasted__pTorus1|pasted__transform6|pasted__pasted__pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pTorusShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pasted__pasted__pTorusShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__pCylinder2|pasted__transform4|pasted__pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group7|pasted__pPipe1|pasted__transform3|pasted__pPipeShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pCylinderShape2.iog.og[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pCylinderShape2.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pasted__pasted__pPipeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na
		;
connectAttr "pasted__pasted__pPipeShape1.ciog.cog[1]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "pasted__groupId18.msg" ":initialShadingGroup.gn" -na;
// End of rightSkate.ma
