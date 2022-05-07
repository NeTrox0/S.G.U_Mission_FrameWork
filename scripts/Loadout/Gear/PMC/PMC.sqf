/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: SGU, VSM, RHS, WS.
*	
*	Parameters: _unit, _role
*
*	By Trox
*/

//HELMET
_Helmet = "";
_HelmetArr = ["H_Cap_headphones","lxWS_H_CapB_rvs_blk_ION","VSM_Bowman_cap_Black","VSM_Black_OPS","VSM_Black_OPS_2","VSM_Bowman_cap_Green","VSM_OGA_OD_OPS","VSM_OGA_OD_OPS_2","VSM_OD_Spray_OPS","VSM_OD_Spray_OPS_2","rhsusf_opscore_paint_pelt","rhsusf_opscore_paint_pelt_nsw_cam","rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_nsw_cam"];
_HelmetHPilot = "H_PilotHelmetHeli_B";

//UNIFORM
_Uniform = "";
_UniformArr = ["U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_lxWS_ION_Casual2","U_lxWS_ION_Casual4","LOP_U_PMC_tac_prp_palm","LOP_U_PMC_tac_grn_palm","LOP_U_PMC_tac_red_hi","LOP_U_PMC_tac_blue_hi","LOP_U_PMC_tac_tacky"];
_UniformHPilot = "U_I_G_Story_Protagonist_F";

//VEST
_Vest = "";
_VestArr = ["SGU_Carrier_Rig", "SGU_Carrier_Rig_Lite", "SGU_Carrier_Rig_Name"];
_VestHPilot = "V_TacVest_blk";

//BACKPACK
_Backpack = "SGU_Assault_Pack";
_BackpackSjv = "SGU_Assault_Pack_Medic";
_BackpackKit = "SGU_Kitbag";
_BackpackKitSjv = "SGU_Kitbag_Medic";
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpc = "tfw_ilbe_whip_gr";
_BackpackPrsk =	"ace_gunbag";

//***************************************************************//

_unit = _this select 0;
_role = _this select 1;



//Helmet
switch (_role) do {
	case ("HPIL"): {
		_Helmet = _HelmetHPilot;
	};
	default {
		_Helmet = selectRandom _HelmetArr;
	};
};


//Uniform
switch (_role) do {
	case ("HPIL"): {
		_Uniform = _UniformHPilot;
	};
	default {
		_Uniform = selectRandom _UniformArr;
	};
};


//Vest
switch (_role) do {
	case ("HPIL"): {
		_Vest = _VestHPilot;
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
	case (_role == "HPIL"): {
		_Backpack = "";
	};
	default {};
};

//Add the gear to the unit.
_unit addHeadgear _Helmet;
_unit forceAddUniform _Uniform;
_unit addVest _Vest;
_unit addBackpack _Backpack;