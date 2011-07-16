//Maya ASCII 2009 scene
//Name: CrateNoParachute.ma
//Last modified: Mon, Jan 11, 2010 06:44:04 PM
//Codeset: 1252
requires maya "2009";
requires "Mayatomr" "10.0.1.8m - 3.7.1.26 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2009";
fileInfo "version" "2009 x64";
fileInfo "cutIdentifier" "200809110029-734661";
fileInfo "osv" "Microsoft Windows Vista  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.541171889615782 21.128959059377998 -32.953639414578177 ;
	setAttr ".r" -type "double3" -25.538352723485289 -149.79999999997636 360 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 45.851444770179519;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.0056334733963012695 2.4409453868865967 0.071133136749267578 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 35.061268711917293 102.87629209397575 -2.4178268324048378 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 27.892071919434834;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 20.929929868214153 6.8749657526757275 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 82.608266117419447;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 1.5938606847697754 0.21251475796930347 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.948642203587148;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "CrateNoParachute";
createNode mesh -n "CrateNoParachuteShape" -p "CrateNoParachute";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 264 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.45019358 0.14583403 0.45023656 
		0.051990166 0.96287984 0.052138805 0.54768509 0.052026927 0.03534925 0.14561553 0.035398126 
		0.051770967 0.45018196 0.167603 0.035337687 0.16738454 0.13575974 0.5744015 0.15525019 
		0.57437158 0.96285444 0.14598411 0.54765362 0.1458735 0.15467393 0.20103574 0.13518342 
		0.20106593 0.54764789 0.1676425 0.96284878 0.16775307 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.96288574 0.030369788 0.54769099 
		0.03025797 0.13526773 0.61097115 0.13532287 0.98385918 0.03540951 0.030001901 0.450248 
		0.030221127 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.13526773 0.61097115 0.13532287 
		0.98385918 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.13518342 0.20106593 0.15467393 
		0.20103574 0.15525019 0.57437158 0.13575974 0.5744015 0.96284878 0.16775307 0.54764789 
		0.1676425 0.54765362 0.1458735 0.96285444 0.14598411 0.54768509 0.052026927 0.96287984 
		0.052138805 0.54769099 0.03025797 0.96288574 0.030369788 0.45019358 0.14583403 0.45023656 
		0.051990166 0.035398126 0.051770967 0.03540951 0.030001901 0.450248 0.030221127 0.45018196 
		0.167603 0.035337687 0.16738454 0.03534925 0.14561553 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.13526773 0.61097115 0.13532287 
		0.98385918 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.13518342 0.20106593 0.15467393 
		0.20103574 0.15525019 0.57437158 0.13575974 0.5744015 0.96284878 0.16775307 0.54764789 
		0.1676425 0.54765362 0.1458735 0.96285444 0.14598411 0.54768509 0.052026927 0.96287984 
		0.052138805 0.54769099 0.03025797 0.96288574 0.030369788 0.45019358 0.14583403 0.45023656 
		0.051990166 0.035398126 0.051770967 0.03540951 0.030001901 0.450248 0.030221127 0.45018196 
		0.167603 0.035337687 0.16738454 0.03534925 0.14561553 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.13526773 0.61097115 0.13532287 
		0.98385918 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.13518342 0.20106593 0.15467393 
		0.20103574 0.15525019 0.57437158 0.13575974 0.5744015 0.96284878 0.16775307 0.54764789 
		0.1676425 0.54765362 0.1458735 0.96285444 0.14598411 0.54768509 0.052026927 0.96287984 
		0.052138805 0.54769099 0.03025797 0.96288574 0.030369788 0.45019358 0.14583403 0.45023656 
		0.051990166 0.035398126 0.051770967 0.03540951 0.030001901 0.450248 0.030221127 0.45018196 
		0.167603 0.035337687 0.16738454 0.03534925 0.14561553 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.13526773 0.61097115 0.13532287 
		0.98385918 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.13518342 0.20106593 0.15467393 
		0.20103574 0.15525019 0.57437158 0.13575974 0.5744015 0.96284878 0.16775307 0.54764789 
		0.1676425 0.54765362 0.1458735 0.96285444 0.14598411 0.54768509 0.052026927 0.96287984 
		0.052138805 0.54769099 0.03025797 0.96288574 0.030369788 0.45019358 0.14583403 0.45023656 
		0.051990166 0.035398126 0.051770967 0.03540951 0.030001901 0.450248 0.030221127 0.45018196 
		0.167603 0.035337687 0.16738454 0.03534925 0.14561553 0.27650976 0.27994525 0.89083272 
		0.28014469 0.89112741 0.89509887 0.27583286 0.89492208 0.19322369 0.19897425 0.97404426 
		0.19893119 0.91759378 0.25415519 0.24927986 0.25429693 0.97328579 0.97917849 0.91765898 
		0.92206448 0.19376886 0.97892314 0.24981841 0.92251998 0.028614581 0.98387504 0.028559357 
		0.61098707 0.048040539 0.61098409 0.048095614 0.98387218 0.13526773 0.61097115 0.13532287 
		0.98385918 0.15474898 0.61096835 0.15480399 0.98385626 0.047915101 0.20120054 0.048491329 
		0.57453656 0.029000983 0.5745669 0.028424591 0.20123035 0.13518342 0.20106593 0.15467393 
		0.20103574 0.15525019 0.57437158 0.13575974 0.5744015 0.96284878 0.16775307 0.54764789 
		0.1676425;
	setAttr ".uvst[0].uvsp[250:263]" 0.54765362 0.1458735 0.96285444 0.14598411 
		0.54768509 0.052026927 0.96287984 0.052138805 0.54769099 0.03025797 0.96288574 0.030369788 
		0.45019358 0.14583403 0.45023656 0.051990166 0.035398126 0.051770967 0.03540951 0.030001901 
		0.450248 0.030221127 0.45018196 0.167603 0.035337687 0.16738454 0.03534925 0.14561553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Emission";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[1]" -type "float3"  -3.4272671e-007 5.9604645e-008 1.4901161e-007;
	setAttr -s 199 ".vt";
	setAttr ".vt[0:165]"  2.4463122 -0.011000395 2.5230787 2.446312 4.8928909 
		2.5230789 2.4463122 4.8928909 -2.3808124 2.446312 -0.011000474 -2.3808124 2.4563627 
		0.37669182 -1.9931206 2.4563627 0.37669182 2.1353862 2.4563627 4.5051994 -1.9931206 
		2.4563627 4.5051994 2.1353862 2.217886 0.37669182 -1.9931206 2.217886 0.37669182 
		2.1353862 2.217886 4.5051994 -1.9931206 2.217886 4.5051994 2.1353862 2.2139838 0.56208009 
		-2.2542715 2.2139838 4.788444 1.9720922 2.3542688 0.56208009 -2.2542715 2.3542688 
		4.788444 1.9720922 2.3542688 0.11792713 -1.8101187 2.3542688 4.3442912 2.416245 2.2139838 
		0.11792713 -1.8101187 2.2139838 4.3442912 2.416245 2.3542688 2.016654 0.088545322 
		2.2139838 2.016654 0.088545322 2.2139838 2.4607682 -0.35556889 2.3542688 2.4607682 
		-0.35556889 2.3542688 2.4442472 0.51613855 2.2139838 2.4442472 0.51613855 2.2139838 
		2.8883615 0.072024345 2.3542688 2.8883615 0.072024345 2.2139838 4.7803073 -1.8198977 
		2.2139838 0.55394322 2.406466 2.3542688 4.7803073 -1.8198977 2.3542688 0.55394322 
		2.406466 2.3542688 4.3526769 -2.2475281 2.3542688 0.12631279 1.9788365 2.2139838 
		4.3526769 -2.2475281 2.2139838 0.12631279 1.9788365 -2.4575791 4.8928909 2.5230787 
		-2.4575791 4.8928909 -2.3808124 2.05862 4.9029417 -1.9931206 2.05862 4.9029417 2.1353862 
		-2.0698876 4.9029417 -1.9931206 -2.0698876 4.9029417 2.1353862 2.05862 4.664465 -1.9931206 
		2.05862 4.664465 2.1353862 -2.0698876 4.664465 -1.9931206 -2.0698876 4.664465 2.1353862 
		1.8732316 4.6605625 -2.2542715 -2.3531322 4.6605625 1.9720922 1.8732316 4.8008475 
		-2.2542715 -2.3531322 4.8008475 1.9720922 2.3173847 4.8008475 -1.8101187 -1.9089794 
		4.8008475 2.416245 2.3173847 4.6605625 -1.8101187 -1.9089794 4.6605625 2.416245 0.41865778 
		4.8008475 0.088545322 0.41865778 4.6605625 0.088545322 -0.025456429 4.6605625 -0.35556889 
		-0.025456429 4.8008475 -0.35556889 -0.0089354515 4.8008475 0.51613855 -0.0089354515 
		4.6605625 0.51613855 -0.45304966 4.6605625 0.072024345 -0.45304966 4.8008475 0.072024345 
		-2.3449955 4.6605625 -1.8198977 1.8813686 4.6605625 2.406466 -2.3449955 4.8008475 
		-1.8198977 1.8813686 4.8008475 2.406466 -1.9173651 4.8008475 -2.2475281 2.3089991 
		4.8008475 1.9788365 -1.9173651 4.6605625 -2.2475281 2.3089991 4.6605625 1.9788365 
		-2.4575791 -0.011000474 2.5230787 2.05862 4.505199 2.5331292 2.05862 0.37669206 2.5331292 
		-2.0698876 4.505199 2.5331292 -2.0698876 0.37669206 2.5331292 2.05862 4.505199 2.2946525 
		2.05862 0.37669206 2.2946525 -2.0698876 4.505199 2.2946525 -2.0698876 0.37669206 
		2.2946525 1.8732316 4.7663498 2.2907503 -2.3531322 0.53998613 2.2907503 1.8732316 
		4.7663498 2.4310353 -2.359334 0.53879261 2.4236403 2.3173847 4.322197 2.4310353 -1.9089794 
		0.095833302 2.4310353 2.3173847 4.322197 2.2907503 -1.9089794 0.095833302 2.2907503 
		0.41865778 2.423533 2.4310353 0.41865778 2.423533 2.2907503 -0.025456429 2.8676472 
		2.2907503 -0.025456429 2.8676472 2.4310353 -0.0089354515 1.9959397 2.4310353 -0.0089354515 
		1.9959397 2.2907503 -0.45304966 2.4400539 2.2907503 -0.45304966 2.4400539 2.4310353 
		-2.3449955 4.3319759 2.2907503 1.8813686 0.10561228 2.2907503 -2.3449955 4.3319759 
		2.4310353 1.8813686 0.10561228 2.4310353 -1.9173651 4.7596064 2.4310353 2.3089991 
		0.53324175 2.4310353 -1.9173651 4.7596064 2.2907503 2.3089991 0.53324175 2.2907503 
		-2.4575791 -0.011000554 -2.3808124 2.05862 4.5051985 -2.3908629 -2.0698867 4.5051985 
		-2.3908629 2.05862 0.37669086 -2.3908629 -2.0698867 0.37669086 -2.3908629 2.05862 
		4.5051985 -2.1523862 -2.0698867 4.5051985 -2.1523862 2.05862 0.37669086 -2.1523862 
		-2.0698867 0.37669086 -2.1523862 2.3197711 4.3198104 -2.148484 -1.9065926 0.093446255 
		-2.148484 2.3197711 4.3198104 -2.288769 -1.9065926 0.093446255 -2.288769 1.8756182 
		4.7639632 -2.288769 -2.3507454 0.53759909 -2.288769 1.8756182 4.7639632 -2.148484 
		-2.3507454 0.53759909 -2.148484 -0.023045778 2.8652363 -2.288769 -0.023045778 2.8652363 
		-2.148484 0.42106843 2.4211221 -2.148484 0.42106843 2.4211221 -2.288769 -0.45063901 
		2.4376431 -2.288769 -0.45063901 2.4376431 -2.148484 -0.0065248013 1.9935288 -2.148484 
		-0.0065248013 1.9935288 -2.288769 1.8853972 0.101583 -2.148484 -2.3409665 4.3279471 
		-2.148484 1.8853972 0.101583 -2.288769 -2.3409665 4.3279471 -2.288769 2.3130276 0.52921343 
		-2.288769 -1.913337 4.7555776 -2.288769 2.3130276 0.52921343 -2.148484 -1.913337 
		4.7555776 -2.148484 -2.4676297 4.5051985 -1.9931206 -2.4676297 4.5051985 2.1353862 
		-2.4676297 0.37669086 -1.9931206 -2.4676297 0.37669086 2.1353862 -2.2291529 4.5051985 
		-1.9931206 -2.2291529 4.5051985 2.1353862 -2.2291529 0.37669086 -1.9931206 -2.2291529 
		0.37669086 2.1353862 -2.2252507 4.3198104 -2.2542715 -2.2252507 0.093446255 1.9720922 
		-2.3655357 4.3198104 -2.2542715 -2.3655357 0.093446255 1.9720922 -2.3655357 4.7639632 
		-1.8101187 -2.2252507 4.7639632 -1.8101187 -2.2252507 0.53759909 2.416245 -2.3655357 
		2.8652363 0.088545322 -2.2252507 2.8652363 0.088545322 -2.2252507 2.4211221 -0.35556889 
		-2.3655357 2.4211221 -0.35556889 -2.3655357 2.4376431 0.51613855 -2.2252507 2.4376431 
		0.51613855 -2.2252507 1.9935288 0.072024345 -2.3655357 1.9935288 0.072024345 -2.2252507 
		0.101583 -1.8198977 -2.2252507 4.3279471 2.406466 -2.3655357 0.101583 -1.8198977 
		-2.3655357 4.3279471 2.406466 -2.3655357 0.52921343 -2.2475281 -2.3655357 4.7555776 
		1.9788365 -2.2252507 0.52921343 -2.2475281;
	setAttr ".vt[166:198]" -2.2252507 4.7555776 1.9788365 -2.0698869 -0.02105093 
		-1.9931206 -2.0698869 -0.02105093 2.1353862 2.0586207 -0.02105093 -1.9931206 2.0586207 
		-0.02105093 2.1353862 -2.0698869 0.21742582 -1.9931206 -2.0698869 0.21742582 2.1353862 
		2.0586207 0.21742582 -1.9931206 2.0586207 0.21742582 2.1353862 -1.8844986 0.22132802 
		-2.2542715 2.3418653 0.22132802 1.9720922 -1.8844986 0.081043005 -2.2542715 2.3418653 
		0.081043005 1.9720922 -2.3286517 0.081043005 -1.8101187 1.8977125 0.081043005 2.416245 
		-2.3286517 0.22132802 -1.8101187 1.8977125 0.22132802 2.416245 -0.42992473 0.081043005 
		0.088545322 -0.42992473 0.22132802 0.088545322 0.014189482 0.22132802 -0.35556889 
		0.014189482 0.081043005 -0.35556889 -0.0023314953 0.081043005 0.51613855 -0.0023314953 
		0.22132802 0.51613855 0.44178271 0.22132802 0.072024345 0.44178271 0.081043005 0.072024345 
		2.3337286 0.22132802 -1.8198977 -1.8926356 0.22132802 2.406466 2.3337286 0.081043005 
		-1.8198977 -1.8926356 0.081043005 2.406466 1.9060981 0.081043005 -2.2475281 -2.320266 
		0.081043005 1.9788365 1.9060981 0.22132802 -2.2475281 -2.320266 0.22132802 1.9788365;
	setAttr -s 324 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 
		0 3 0 0 3 4 0 0 5 0 4 5 
		0 2 6 0 6 4 0 1 7 0 7 6 
		0 5 7 0 4 8 0 5 9 0 8 9 
		0 6 10 0 10 8 0 7 11 0 11 10 
		0 9 11 0 12 22 0 14 23 0 16 20 
		0 18 21 0 12 14 0 13 15 0 14 16 
		0 15 17 0 16 18 0 17 19 0 20 21 
		0 22 23 0 23 20 0 24 17 0 25 19 
		0 24 25 0 26 13 0 27 15 0 26 27 
		0 27 24 0 28 26 0 30 27 0 32 23 
		0 34 22 0 28 30 0 29 31 0 30 32 
		0 31 33 0 32 34 0 33 35 0 27 23 
		0 20 33 0 21 35 0 25 29 0 24 31 
		0 24 20 0 1 36 0 36 37 0 37 2 
		0 2 38 0 1 39 0 38 39 0 37 40 
		0 40 38 0 36 41 0 41 40 0 39 41 
		0 38 42 0 39 43 0 42 43 0 40 44 
		0 44 42 0 41 45 0 45 44 0 43 45 
		0 46 56 0 48 57 0 50 54 0 52 55 
		0 46 48 0 47 49 0 48 50 0 49 51 
		0 50 52 0 51 53 0 54 55 0 56 57 
		0 57 54 0 58 51 0 59 53 0 58 59 
		0 60 47 0 61 49 0 60 61 0 61 58 
		0 62 60 0 64 61 0 66 57 0 68 56 
		0 62 64 0 63 65 0 64 66 0 65 67 
		0 66 68 0 67 69 0 61 57 0 54 67 
		0 55 69 0 59 63 0 58 65 0 58 54 
		0 0 70 0 70 36 0 1 71 0 0 72 
		0 71 72 0 36 73 0 73 71 0 70 74 
		0 74 73 0 72 74 0 71 75 0 72 76 
		0 75 76 0 73 77 0 77 75 0 74 78 
		0 78 77 0 76 78 0 79 89 0 81 90 
		0 83 87 0 85 88 0 79 81 0 80 82 
		0 81 83 0 82 84 0 83 85 0 84 86 
		0 87 88 0 89 90 0 90 87 0 91 84 
		0 92 86 0 91 92 0 93 80 0 94 82 
		0 93 94 0 94 91 0 95 93 0 97 94 
		0 99 90 0 101 89 0 95 97 0 96 98 
		0 97 99 0 98 100 0 99 101 0 100 102 
		0 94 90 0 87 100 0 88 102 0 92 96 
		0 91 98 0 91 87 0 37 103 0;
	setAttr ".ed[166:323]" 103 3 0 2 104 0 37 105 
		0 104 105 0 3 106 0 106 104 0 103 107 
		0 107 106 0 105 107 0 104 108 0 105 109 
		0 108 109 0 106 110 0 110 108 0 107 111 
		0 111 110 0 109 111 0 112 122 0 114 123 
		0 116 120 0 118 121 0 112 114 0 113 115 
		0 114 116 0 115 117 0 116 118 0 117 119 
		0 120 121 0 122 123 0 123 120 0 124 117 
		0 125 119 0 124 125 0 126 113 0 127 115 
		0 126 127 0 127 124 0 128 126 0 130 127 
		0 132 123 0 134 122 0 128 130 0 129 131 
		0 130 132 0 131 133 0 132 134 0 133 135 
		0 127 123 0 120 133 0 121 135 0 125 129 
		0 124 131 0 124 120 0 70 103 0 37 136 
		0 36 137 0 136 137 0 103 138 0 138 136 
		0 70 139 0 139 138 0 137 139 0 136 140 
		0 137 141 0 140 141 0 138 142 0 142 140 
		0 139 143 0 143 142 0 141 143 0 144 153 
		0 146 154 0 148 151 0 149 152 0 144 146 
		0 145 147 0 146 148 0 147 82 0 148 149 
		0 82 150 0 151 152 0 153 154 0 154 151 
		0 155 82 0 156 150 0 155 156 0 157 145 
		0 158 147 0 157 158 0 158 155 0 159 157 
		0 161 158 0 163 154 0 165 153 0 159 161 
		0 160 162 0 161 163 0 162 164 0 163 165 
		0 164 166 0 158 154 0 151 164 0 152 166 
		0 156 160 0 155 162 0 155 151 0 103 167 
		0 70 168 0 167 168 0 3 169 0 169 167 
		0 0 170 0 170 169 0 168 170 0 167 171 
		0 168 172 0 171 172 0 169 173 0 173 171 
		0 170 174 0 174 173 0 172 174 0 175 185 
		0 177 186 0 179 183 0 181 184 0 175 177 
		0 176 178 0 177 179 0 178 180 0 179 181 
		0 180 182 0 183 184 0 185 186 0 186 183 
		0 187 180 0 188 182 0 187 188 0 189 176 
		0 190 178 0 189 190 0 190 187 0 191 189 
		0 193 190 0 195 186 0 197 185 0 191 193 
		0 192 194 0 193 195 0 194 196 0 195 197 
		0 196 198 0 190 186 0 183 196 0 184 198 
		0 188 192 0 187 194 0 187 183 0;
	setAttr -s 132 ".fc[0:131]" -type "polyFaces" 
		f 4 -15 -17 -19 -20 
		mu 0 4 0 1 2 3 
		f 4 -4 4 6 -6 
		mu 0 4 4 5 6 7 
		f 4 -3 7 8 -5 
		mu 0 4 5 8 9 6 
		f 4 -2 9 10 -8 
		mu 0 4 8 10 11 9 
		f 4 -1 5 11 -10 
		mu 0 4 10 4 7 11 
		f 4 -7 12 14 -14 
		mu 0 4 7 6 1 0 
		f 4 -9 15 16 -13 
		mu 0 4 6 9 2 1 
		f 4 -11 17 18 -16 
		mu 0 4 9 11 3 2 
		f 4 -12 13 19 -18 
		mu 0 4 11 7 0 3 
		f 4 20 31 -22 -25 
		mu 0 4 28 29 30 31 
		f 4 21 32 -23 -27 
		mu 0 4 31 30 34 35 
		f 4 22 30 -24 -29 
		mu 0 4 35 34 38 39 
		f 4 33 29 -35 -36 
		mu 0 4 40 41 42 43 
		f 4 -39 36 25 -38 
		mu 0 4 25 24 21 20 
		f 4 -40 37 27 -34 
		mu 0 4 40 25 20 41 
		f 4 40 38 -42 -45 
		mu 0 4 27 26 23 22 
		f 4 41 50 -43 -47 
		mu 0 4 22 23 15 14 
		f 4 42 -32 -44 -49 
		mu 0 4 14 15 33 32 
		f 4 -51 39 55 -33 
		mu 0 4 15 23 12 13 
		f 4 51 49 -53 -31 
		mu 0 4 13 17 36 37 
		f 4 35 53 45 -55 
		mu 0 4 12 18 19 16 
		f 4 -56 54 47 -52 
		mu 0 4 13 12 16 17 
		f 4 -70 -72 -74 -75 
		mu 0 4 44 45 46 47 
		f 4 1 59 61 -61 
		mu 0 4 48 49 50 51 
		f 4 -59 62 63 -60 
		mu 0 4 49 52 53 50 
		f 4 -58 64 65 -63 
		mu 0 4 52 54 55 53 
		f 4 -57 60 66 -65 
		mu 0 4 54 48 51 55 
		f 4 -62 67 69 -69 
		mu 0 4 51 50 45 44 
		f 4 -64 70 71 -68 
		mu 0 4 50 53 46 45 
		f 4 -66 72 73 -71 
		mu 0 4 53 55 47 46 
		f 4 -67 68 74 -73 
		mu 0 4 55 51 44 47 
		f 4 75 86 -77 -80 
		mu 0 4 56 57 58 59 
		f 4 76 87 -78 -82 
		mu 0 4 59 58 60 61 
		f 4 77 85 -79 -84 
		mu 0 4 61 60 62 63 
		f 4 88 84 -90 -91 
		mu 0 4 64 65 66 67 
		f 4 -94 91 80 -93 
		mu 0 4 68 69 70 71 
		f 4 -95 92 82 -89 
		mu 0 4 64 68 71 65 
		f 4 95 93 -97 -100 
		mu 0 4 72 73 74 75 
		f 4 96 105 -98 -102 
		mu 0 4 75 74 76 77 
		f 4 97 -87 -99 -104 
		mu 0 4 77 76 78 79 
		f 4 -106 94 110 -88 
		mu 0 4 76 74 80 81 
		f 4 106 104 -108 -86 
		mu 0 4 81 82 83 84 
		f 4 90 108 100 -110 
		mu 0 4 80 85 86 87 
		f 4 -111 109 102 -107 
		mu 0 4 81 80 87 82 
		f 4 -124 -126 -128 -129 
		mu 0 4 88 89 90 91 
		f 4 0 113 115 -115 
		mu 0 4 92 93 94 95 
		f 4 56 116 117 -114 
		mu 0 4 93 96 97 94 
		f 4 -113 118 119 -117 
		mu 0 4 96 98 99 97 
		f 4 -112 114 120 -119 
		mu 0 4 98 92 95 99 
		f 4 -116 121 123 -123 
		mu 0 4 95 94 89 88 
		f 4 -118 124 125 -122 
		mu 0 4 94 97 90 89 
		f 4 -120 126 127 -125 
		mu 0 4 97 99 91 90 
		f 4 -121 122 128 -127 
		mu 0 4 99 95 88 91 
		f 4 129 140 -131 -134 
		mu 0 4 100 101 102 103 
		f 4 130 141 -132 -136 
		mu 0 4 103 102 104 105 
		f 4 131 139 -133 -138 
		mu 0 4 105 104 106 107 
		f 4 142 138 -144 -145 
		mu 0 4 108 109 110 111 
		f 4 -148 145 134 -147 
		mu 0 4 112 113 114 115 
		f 4 -149 146 136 -143 
		mu 0 4 108 112 115 109 
		f 4 149 147 -151 -154 
		mu 0 4 116 117 118 119 
		f 4 150 159 -152 -156 
		mu 0 4 119 118 120 121 
		f 4 151 -141 -153 -158 
		mu 0 4 121 120 122 123 
		f 4 -160 148 164 -142 
		mu 0 4 120 118 124 125 
		f 4 160 158 -162 -140 
		mu 0 4 125 126 127 128 
		f 4 144 162 154 -164 
		mu 0 4 124 129 130 131 
		f 4 -165 163 156 -161 
		mu 0 4 125 124 131 126 
		f 4 -178 -180 -182 -183 
		mu 0 4 132 133 134 135 
		f 4 58 167 169 -169 
		mu 0 4 136 137 138 139 
		f 4 2 170 171 -168 
		mu 0 4 137 140 141 138 
		f 4 -167 172 173 -171 
		mu 0 4 140 142 143 141 
		f 4 -166 168 174 -173 
		mu 0 4 142 136 139 143 
		f 4 -170 175 177 -177 
		mu 0 4 139 138 133 132 
		f 4 -172 178 179 -176 
		mu 0 4 138 141 134 133 
		f 4 -174 180 181 -179 
		mu 0 4 141 143 135 134 
		f 4 -175 176 182 -181 
		mu 0 4 143 139 132 135 
		f 4 183 194 -185 -188 
		mu 0 4 144 145 146 147 
		f 4 184 195 -186 -190 
		mu 0 4 147 146 148 149 
		f 4 185 193 -187 -192 
		mu 0 4 149 148 150 151 
		f 4 196 192 -198 -199 
		mu 0 4 152 153 154 155 
		f 4 -202 199 188 -201 
		mu 0 4 156 157 158 159 
		f 4 -203 200 190 -197 
		mu 0 4 152 156 159 153 
		f 4 203 201 -205 -208 
		mu 0 4 160 161 162 163 
		f 4 204 213 -206 -210 
		mu 0 4 163 162 164 165 
		f 4 205 -195 -207 -212 
		mu 0 4 165 164 166 167 
		f 4 -214 202 218 -196 
		mu 0 4 164 162 168 169 
		f 4 214 212 -216 -194 
		mu 0 4 169 170 171 172 
		f 4 198 216 208 -218 
		mu 0 4 168 173 174 175 
		f 4 -219 217 210 -215 
		mu 0 4 169 168 175 170 
		f 4 -231 -233 -235 -236 
		mu 0 4 176 177 178 179 
		f 4 57 220 222 -222 
		mu 0 4 180 181 182 183 
		f 4 165 223 224 -221 
		mu 0 4 181 184 185 182 
		f 4 -220 225 226 -224 
		mu 0 4 184 186 187 185 
		f 4 112 221 227 -226 
		mu 0 4 186 180 183 187 
		f 4 -223 228 230 -230 
		mu 0 4 183 182 177 176 
		f 4 -225 231 232 -229 
		mu 0 4 182 185 178 177 
		f 4 -227 233 234 -232 
		mu 0 4 185 187 179 178 
		f 4 -228 229 235 -234 
		mu 0 4 187 183 176 179 
		f 4 236 247 -238 -241 
		mu 0 4 188 189 190 191 
		f 4 237 248 -239 -243 
		mu 0 4 191 190 192 193 
		f 4 238 246 -240 -245 
		mu 0 4 193 192 194 195 
		f 4 249 245 -251 -252 
		mu 0 4 196 197 198 199 
		f 4 -255 252 241 -254 
		mu 0 4 200 201 202 203 
		f 4 -256 253 243 -250 
		mu 0 4 196 200 203 197 
		f 4 256 254 -258 -261 
		mu 0 4 204 205 206 207 
		f 4 257 266 -259 -263 
		mu 0 4 207 206 208 209 
		f 4 258 -248 -260 -265 
		mu 0 4 209 208 210 211 
		f 4 -267 255 271 -249 
		mu 0 4 208 206 212 213 
		f 4 267 265 -269 -247 
		mu 0 4 213 214 215 216 
		f 4 251 269 261 -271 
		mu 0 4 212 217 218 219 
		f 4 -272 270 263 -268 
		mu 0 4 213 212 219 214 
		f 4 -283 -285 -287 -288 
		mu 0 4 220 221 222 223 
		f 4 219 272 274 -274 
		mu 0 4 224 225 226 227 
		f 4 166 275 276 -273 
		mu 0 4 225 228 229 226 
		f 4 3 277 278 -276 
		mu 0 4 228 230 231 229 
		f 4 111 273 279 -278 
		mu 0 4 230 224 227 231 
		f 4 -275 280 282 -282 
		mu 0 4 227 226 221 220 
		f 4 -277 283 284 -281 
		mu 0 4 226 229 222 221 
		f 4 -279 285 286 -284 
		mu 0 4 229 231 223 222 
		f 4 -280 281 287 -286 
		mu 0 4 231 227 220 223 
		f 4 288 299 -290 -293 
		mu 0 4 232 233 234 235 
		f 4 289 300 -291 -295 
		mu 0 4 235 234 236 237 
		f 4 290 298 -292 -297 
		mu 0 4 237 236 238 239 
		f 4 301 297 -303 -304 
		mu 0 4 240 241 242 243 
		f 4 -307 304 293 -306 
		mu 0 4 244 245 246 247 
		f 4 -308 305 295 -302 
		mu 0 4 240 244 247 241 
		f 4 308 306 -310 -313 
		mu 0 4 248 249 250 251 
		f 4 309 318 -311 -315 
		mu 0 4 251 250 252 253 
		f 4 310 -300 -312 -317 
		mu 0 4 253 252 254 255 
		f 4 -319 307 323 -301 
		mu 0 4 252 250 256 257 
		f 4 319 317 -321 -299 
		mu 0 4 257 258 259 260 
		f 4 303 321 313 -323 
		mu 0 4 256 261 262 263 
		f 4 -324 322 315 -320 
		mu 0 4 257 256 263 258 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
createNode lightLinker -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
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
		+ "                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"hwRender_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"hwRender_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 1\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
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
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels yes -displayOrthographicLabels yes -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode textureBakeSet -n "initialTextureBakeSet";
createNode partition -n "textureBakePartition";
createNode vertexBakeSet -n "initialVertexBakeSet";
	addAttr -ci true -sn "fs" -ln "filterSize" -min -1 -at "double";
	addAttr -ci true -sn "fns" -ln "filterNormalTolerance" -min 0 -max 180 -at "double";
	setAttr ".fs" 0.001;
	setAttr ".fns" 5;
createNode partition -n "vertexBakePartition";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr -s 27 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "raster use opacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode shadingEngine -n "bobraa_initialShadingGroup_polySurface2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "bobraa_initialShadingGroup_polySurface2_fnbake1";
	setAttr ".ftn" -type "string" "C:/DUMP//renderData/mentalray/lightMap/bobraa-initialShadingGroup-polySurface2.bmp";
createNode place2dTexture -n "place2dTexture1";
createNode file -n "crate_1";
	setAttr ".ftn" -type "string" "F:/DUMP/crate/crate.psd";
createNode place2dTexture -n "place2dTexture2";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode file -n "crate_2";
	setAttr ".ftn" -type "string" "F:/DUMP/crate/crate.tga";
createNode place2dTexture -n "place2dTexture3";
createNode file -n "CrateNoParachute_1";
	setAttr ".ftn" -type "string" "C:/DUMP/Crate/CrateNoParachute.tga";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "CrateNoParachute_Specular_1";
	setAttr ".ftn" -type "string" "C:/DUMP/Crate/CrateNoParachute_Specular.tga";
createNode place2dTexture -n "place2dTexture5";
createNode blinn -n "CreateMap";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "bobraa_initialShadingGroup_polySurface2SG.msg" "lightLinker1.lnk[2].olnk"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "lambert3SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "blinn1SG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "bobraa_initialShadingGroup_polySurface2SG.msg" "lightLinker1.slnk[2].solk"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "lambert3SG.msg" "lightLinker1.slnk[3].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr "blinn1SG.msg" "lightLinker1.slnk[4].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "initialTextureBakeSet.pa" "textureBakePartition.st" -na;
connectAttr "initialVertexBakeSet.pa" "vertexBakePartition.st" -na;
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "bobraa_initialShadingGroup_polySurface2SG.msg" "materialInfo1.sg";
connectAttr "place2dTexture1.o" "bobraa_initialShadingGroup_polySurface2_fnbake1.uv"
		;
connectAttr "place2dTexture1.ofs" "bobraa_initialShadingGroup_polySurface2_fnbake1.fs"
		;
connectAttr "place2dTexture1.c" "bobraa_initialShadingGroup_polySurface2_fnbake1.c"
		;
connectAttr "place2dTexture1.tf" "bobraa_initialShadingGroup_polySurface2_fnbake1.tf"
		;
connectAttr "place2dTexture1.rf" "bobraa_initialShadingGroup_polySurface2_fnbake1.rf"
		;
connectAttr "place2dTexture1.mu" "bobraa_initialShadingGroup_polySurface2_fnbake1.mu"
		;
connectAttr "place2dTexture1.mv" "bobraa_initialShadingGroup_polySurface2_fnbake1.mv"
		;
connectAttr "place2dTexture1.s" "bobraa_initialShadingGroup_polySurface2_fnbake1.s"
		;
connectAttr "place2dTexture1.wu" "bobraa_initialShadingGroup_polySurface2_fnbake1.wu"
		;
connectAttr "place2dTexture1.wv" "bobraa_initialShadingGroup_polySurface2_fnbake1.wv"
		;
connectAttr "place2dTexture1.re" "bobraa_initialShadingGroup_polySurface2_fnbake1.re"
		;
connectAttr "place2dTexture1.vt1" "bobraa_initialShadingGroup_polySurface2_fnbake1.vt1"
		;
connectAttr "place2dTexture1.vt2" "bobraa_initialShadingGroup_polySurface2_fnbake1.vt2"
		;
connectAttr "place2dTexture1.vt3" "bobraa_initialShadingGroup_polySurface2_fnbake1.vt3"
		;
connectAttr "place2dTexture1.vc1" "bobraa_initialShadingGroup_polySurface2_fnbake1.vc1"
		;
connectAttr "place2dTexture1.n" "bobraa_initialShadingGroup_polySurface2_fnbake1.n"
		;
connectAttr "place2dTexture1.of" "bobraa_initialShadingGroup_polySurface2_fnbake1.of"
		;
connectAttr "place2dTexture1.r" "bobraa_initialShadingGroup_polySurface2_fnbake1.ro"
		;
connectAttr "place2dTexture2.c" "crate_1.c";
connectAttr "place2dTexture2.tf" "crate_1.tf";
connectAttr "place2dTexture2.rf" "crate_1.rf";
connectAttr "place2dTexture2.mu" "crate_1.mu";
connectAttr "place2dTexture2.mv" "crate_1.mv";
connectAttr "place2dTexture2.s" "crate_1.s";
connectAttr "place2dTexture2.wu" "crate_1.wu";
connectAttr "place2dTexture2.wv" "crate_1.wv";
connectAttr "place2dTexture2.re" "crate_1.re";
connectAttr "place2dTexture2.of" "crate_1.of";
connectAttr "place2dTexture2.r" "crate_1.ro";
connectAttr "place2dTexture2.n" "crate_1.n";
connectAttr "place2dTexture2.vt1" "crate_1.vt1";
connectAttr "place2dTexture2.vt2" "crate_1.vt2";
connectAttr "place2dTexture2.vt3" "crate_1.vt3";
connectAttr "place2dTexture2.vc1" "crate_1.vc1";
connectAttr "place2dTexture2.o" "crate_1.uv";
connectAttr "place2dTexture2.ofs" "crate_1.fs";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "place2dTexture3.c" "crate_2.c";
connectAttr "place2dTexture3.tf" "crate_2.tf";
connectAttr "place2dTexture3.rf" "crate_2.rf";
connectAttr "place2dTexture3.mu" "crate_2.mu";
connectAttr "place2dTexture3.mv" "crate_2.mv";
connectAttr "place2dTexture3.s" "crate_2.s";
connectAttr "place2dTexture3.wu" "crate_2.wu";
connectAttr "place2dTexture3.wv" "crate_2.wv";
connectAttr "place2dTexture3.re" "crate_2.re";
connectAttr "place2dTexture3.of" "crate_2.of";
connectAttr "place2dTexture3.r" "crate_2.ro";
connectAttr "place2dTexture3.n" "crate_2.n";
connectAttr "place2dTexture3.vt1" "crate_2.vt1";
connectAttr "place2dTexture3.vt2" "crate_2.vt2";
connectAttr "place2dTexture3.vt3" "crate_2.vt3";
connectAttr "place2dTexture3.vc1" "crate_2.vc1";
connectAttr "place2dTexture3.o" "crate_2.uv";
connectAttr "place2dTexture3.ofs" "crate_2.fs";
connectAttr "place2dTexture4.c" "CrateNoParachute_1.c";
connectAttr "place2dTexture4.tf" "CrateNoParachute_1.tf";
connectAttr "place2dTexture4.rf" "CrateNoParachute_1.rf";
connectAttr "place2dTexture4.mu" "CrateNoParachute_1.mu";
connectAttr "place2dTexture4.mv" "CrateNoParachute_1.mv";
connectAttr "place2dTexture4.s" "CrateNoParachute_1.s";
connectAttr "place2dTexture4.wu" "CrateNoParachute_1.wu";
connectAttr "place2dTexture4.wv" "CrateNoParachute_1.wv";
connectAttr "place2dTexture4.re" "CrateNoParachute_1.re";
connectAttr "place2dTexture4.of" "CrateNoParachute_1.of";
connectAttr "place2dTexture4.r" "CrateNoParachute_1.ro";
connectAttr "place2dTexture4.n" "CrateNoParachute_1.n";
connectAttr "place2dTexture4.vt1" "CrateNoParachute_1.vt1";
connectAttr "place2dTexture4.vt2" "CrateNoParachute_1.vt2";
connectAttr "place2dTexture4.vt3" "CrateNoParachute_1.vt3";
connectAttr "place2dTexture4.vc1" "CrateNoParachute_1.vc1";
connectAttr "place2dTexture4.o" "CrateNoParachute_1.uv";
connectAttr "place2dTexture4.ofs" "CrateNoParachute_1.fs";
connectAttr "place2dTexture5.c" "CrateNoParachute_Specular_1.c";
connectAttr "place2dTexture5.tf" "CrateNoParachute_Specular_1.tf";
connectAttr "place2dTexture5.rf" "CrateNoParachute_Specular_1.rf";
connectAttr "place2dTexture5.mu" "CrateNoParachute_Specular_1.mu";
connectAttr "place2dTexture5.mv" "CrateNoParachute_Specular_1.mv";
connectAttr "place2dTexture5.s" "CrateNoParachute_Specular_1.s";
connectAttr "place2dTexture5.wu" "CrateNoParachute_Specular_1.wu";
connectAttr "place2dTexture5.wv" "CrateNoParachute_Specular_1.wv";
connectAttr "place2dTexture5.re" "CrateNoParachute_Specular_1.re";
connectAttr "place2dTexture5.of" "CrateNoParachute_Specular_1.of";
connectAttr "place2dTexture5.r" "CrateNoParachute_Specular_1.ro";
connectAttr "place2dTexture5.n" "CrateNoParachute_Specular_1.n";
connectAttr "place2dTexture5.vt1" "CrateNoParachute_Specular_1.vt1";
connectAttr "place2dTexture5.vt2" "CrateNoParachute_Specular_1.vt2";
connectAttr "place2dTexture5.vt3" "CrateNoParachute_Specular_1.vt3";
connectAttr "place2dTexture5.vc1" "CrateNoParachute_Specular_1.vc1";
connectAttr "place2dTexture5.o" "CrateNoParachute_Specular_1.uv";
connectAttr "place2dTexture5.ofs" "CrateNoParachute_Specular_1.fs";
connectAttr "CrateNoParachute_Specular_1.oc" "CreateMap.sc";
connectAttr "CrateNoParachute_1.oc" "CreateMap.c";
connectAttr "CreateMap.oc" "blinn1SG.ss";
connectAttr "CrateNoParachuteShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "CreateMap.msg" "materialInfo3.m";
connectAttr "CrateNoParachute_1.msg" "materialInfo3.t" -na;
connectAttr "bobraa_initialShadingGroup_polySurface2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "CreateMap.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "bobraa_initialShadingGroup_polySurface2_fnbake1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "crate_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "crate_2.msg" ":defaultTextureList1.tx" -na;
connectAttr "CrateNoParachute_1.msg" ":defaultTextureList1.tx" -na;
connectAttr "CrateNoParachute_Specular_1.msg" ":defaultTextureList1.tx" -na;
// End of CrateNoParachute.ma
