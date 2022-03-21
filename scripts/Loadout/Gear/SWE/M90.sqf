/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: SFP, SGU, ACE, ILBE.
*	
*	Parameters: _role
*
*	By Trox
*/

//HELMET
_Helmet = "sfp_m90w_helmet_peltor_nvg";
_HelmetJPilot = "H_PilotHelmetFighter_B";
_HelmetHPilot = "H_PilotHelmetHeli_B";
_HelmetCrewArr = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];

//UNIFORM
_Uniform = "";
_UniformArr = ["sfp_m90w_uniform_fs18", "sfp_m90w_uniform_long_m08", "sfp_m90w_uniform_folded", "sfp_m90w_uniform_m08"];
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
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpC = "tfw_ilbe_whip_gr";
_BackpackPrsk = "ace_gunbag";

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
	default {};
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
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC") or (_role == "SIGN"))): {
		_Backpack = _BackpackGrpC;
	};
	case (_role == "SJV"): {
		_Backpack = _BackpackKitSjv;
	};
	case (_role == "SJV2");
	case (_role == "SJV3");
	case (_role == "CREW2"): {
		_Backpack = _BackpackSjv;
	};
	case (_role == "GRGA");
	case (_role == "FARB"): {
		_Backpack = _BackpackKit;
	};	
	case (_role == "UAV"): {
		_Backpack = _BackpackUAV;
	};
	case (_role == "PRSK"): {
		_Backpack = _BackpackPrsk;
	};
	case (_role == "SOLD");
	case (_role == "SOLD2");
	case (_role == "SOLD3");
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