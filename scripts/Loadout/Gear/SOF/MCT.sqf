/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: SAM 3, SGU
*	
*	Parameters: _unit, _role
*
*	By Trox
*/

//HELMET
_Helmet = "";
_HelmetArr = ["VSM_MulticamTropic_OPS","VSM_MulticamTropic_OPS_2"];
_HelmetJPilot = "H_PilotHelmetFighter_B";
_HelmetHPilot = "H_PilotHelmetHeli_B";
_HelmetCrewArr = ["rhsusf_cvc_green_alt_helmet","rhsusf_cvc_green_ess"];

//UNIFORM
_Uniform = "VSM_MulticamTropic_Crye_Camo";
_UniformJPilot = "U_B_PilotCoveralls";

//VEST
_Vest = "VSM_LBT6094_operator_MulticamTropic";
_VestKSP = "VSM_LBT6094_MG_MulticamTropic";
_VestHPilot = "V_TacVest_blk";
_VestCrew = "V_TacVest_blk";

//BACKPACK
_Backpack = "VSM_MulticamTropic_Backpack_Compact";
_BackpackSjv = "VSM_MulticamTropic_Backpack_Kitbag";
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpC = "tfw_ilbe_whip_mct";

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
		_Helmet = selectRandom _HelmetArr;
	};
};


//Uniform
switch (_role) do {
	case ("JPIL"): {
		_Uniform = _UniformJPilot;
	};
	default {};
};


//Vest
switch (_role) do {
	case ("JPIL"): {
		_Vest = "";
	};
	case ("HPIL"): {
		_Vest = _VestHPilot;
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_Vest = _VestCrew;
	};
	case ("KSP90");
	case ("KSP58"): {
		_Vest = _VestKSP;
	};
	default {};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and ((_role == "GRPC") or (_role == "GRPC2") or (_role == "PLTC") or (_role == "SIGN"))): {
		_Backpack = _BackpackGrpC;
	};
	case (_role == "FARB");
	case (_role == "GRGA");
	case (_role == "SJV");
	case (_role == "CREW2"): {
		_Backpack = _BackpackSjv;
	};
	case (_role == "UAV"): {
		_Backpack = _BackpackUAV;
	};
	case (_role == "PRSK");
	case (_role == "SOLD");
	case (_role == "SOLD2");
	case (_role == "SOLD3");
	case (_role == "KSP90");
	case (_role == "KSP58");
	case (_role == "VC");
	case (_role == "CREW");
	case (_role == "HPIL");
	case (_role == "JPIL"): {
		_backpack = "";
	};	
	default {};
};

//Add the gear to the unit.
_unit addHeadgear _Helmet;
_unit forceAddUniform _Uniform;
_unit addVest _Vest;
_unit addBackpack _Backpack;