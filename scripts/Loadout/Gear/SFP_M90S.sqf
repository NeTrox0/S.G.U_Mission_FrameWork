/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: SFP, SGU, ACE, ILBE and VSM.
*	
*	Parameters: _role
*
*	By Trox
*/


//HELMET
_Helmet = "";
_HelmetArr = ["Alpine_opscore","Alpine_opscore_2","White_opscore","white_opscore_2"];
_HelmetJPilot = "H_PilotHelmetFighter_B";
_HelmetHPilot = "H_PilotHelmetHeli_B";
_HelmetCrewArr = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];

//UNIFORM
_Uniform = ""; // Alpine_Massif_Camo
_UniformArr = ["Alpine_Crye_Camo","Alpine_Crye_SS_camo","Alpine_white_Crye_camo","Alpine_white_Crye_SS_camo"];
_UniformJPilot = "U_B_PilotCoveralls";

//VEST
_Vest = "";
_VestArr = ["SGU_Carrier_Rig", "SGU_Carrier_Rig_Lite", "SGU_Carrier_Rig_Name"];
_VestHPilot = "sfp_kroppsskydd12_crew";
_VestCrew = "sfp_kroppsskydd12_crew";

//BACKPACK
_Backpack = "SGU_Assault_Pack";
_BackpackSjv = "SGU_Assault_Pack_Medic";
_BackpackKit = "SGU_Kitbag";
_BackpackKitSjv = "SGU_Kitbag_Medic";
_BackpackGRGA = "sfp_backpack_grg_loader";
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpC = "tfw_ilbe_DD_alpine";
_BackpackStfc = "tfw_ilbe_whip_alpine";

//***************************************************************//

_unit = _this select 0;
_role = _this select 1;


//Helmet
switch (_role) do {
	case ("JPIL"): {
		_Helmet = _HelmetJPilot;
	};
	case ("HPIL"): {
		_Helmet = _HelmetHPilot;
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_Helmet = selectRandom _HelmetCrewArr;
	};
	default {
		_Helmet = selectRandom _HelmetArr
	};
};


//Uniform
switch (_role) do {
	case ("JPIL"): {
		_Uniform = _UniformJPilot;
	};
	default {
		_Uniform = selectRandom _UniformArr;
	};
};


//Vest
switch (_role) do {
	case ("JPIL"): {};
	case ("HPIL"): {
		_Vest = _VestHPilot;
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_Vest = _VestCrew;
	};
	default {
		_Vest = selectRandom _VestArr;
	};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["GRPC","GRPC2"]): {
		_Backpack = _BackpackGrpC;
	};
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["STFC","STFC2","STFC3","PLTC"]): {
		_Backpack = _BackpackStfc;
	};
	case (_role == "SJV"): {
		_Backpack = _BackpackKitSjv;
	};
	case (_role == "SJV2");
	case (_role == "CREW2"): {
		_Backpack = _BackpackSjv;
	};
	case (_role == "GRGA"): {
		_Backpack = _BackpackGRGA;
	};
	case (_role == "FARB"): {
		_Backpack = _BackpackKit;
	};	
	case (_role == "UAV"): {
		_Backpack = _BackpackUAV;
	};
	case (_role == "SOLD");
	case (_role == "SOLD2");
	case (_role == "SOLD3");
	case (_role == "VC");
	case (_role == "CREW");
	case (_role == "HPIL");
	case (_role == "JPIL"): {
		_Backpack = "";
	};
	default {};
};

//Add the gear to the unit.
_unit addHeadgear _Helmet;
_unit forceAddUniform _Uniform;
_unit addVest _Vest;
_unit addBackpack _Backpack;