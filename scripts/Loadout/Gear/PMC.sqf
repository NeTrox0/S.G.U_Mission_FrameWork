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
_HelmetArr = ["H_Cap_headphones","lxWS_H_CapB_rvs_blk_ION","VSM_Bowman_cap_Black","VSM_Black_OPS","VSM_Black_OPS_2","VSM_Bowman_cap_Green","VSM_OGA_OD_OPS","VSM_OGA_OD_OPS_2","VSM_OD_Spray_OPS","VSM_OD_Spray_OPS_2","rhsusf_opscore_paint_pelt","rhsusf_opscore_paint_pelt_nsw_cam","rhsusf_opscore_ut_pelt","rhsusf_opscore_ut_pelt_nsw_cam","sfp_m90d_cap_peltor","VSM_Bowman_cap_Tan","VSM_oga_OPS","VSM_oga_OPS_2","VSM_Tan_spray_OPS","VSM_Tan_spray_OPS_2"];
_HelmetHPilot = "H_PilotHelmetHeli_B";

//UNIFORM
_Uniform = "";
_UniformArr = ["U_lxWS_ION_Casual2","U_lxWS_ION_Casual4","LOP_U_PMC_tac_prp_palm","LOP_U_PMC_tac_grn_palm","LOP_U_PMC_tac_red_hi","LOP_U_PMC_tac_blue_hi","LOP_U_PMC_tac_tacky"];
 //Nice but too small inventory "U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3"
_UniformHPilot = "U_I_G_Story_Protagonist_F";

//VEST
_Vest = "";
_VestArr = ["SGU_Carrier_Rig", "SGU_Carrier_Rig_Lite", "SGU_Carrier_Rig_Name", "SGU_Carrier_Rig_Tan", "SGU_Carrier_Rig_Lite_Tan", "SGU_Carrier_Rig_Name_Tan"];
_VestHPilot = "V_TacVest_blk";

//BACKPACK
_Backpack = "";
_BackpackArr = ["SGU_Assault_Pack", "SGU_Assault_Pack_Tan"];
_BackpackSjvArr = ["SGU_Assault_Pack_Medic", "SGU_Assault_Pack_Medic_Tan"];
_BackpackKitArr = ["SGU_Kitbag", "SGU_Kitbag_Tan"];
_BackpackKitSjvArr = ["SGU_Kitbag_Medic", "SGU_Kitbag_Medic_Tan"];
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpc = ["tfw_ilbe_DD_gr","tfw_ilbe_DD_coy"];
_BackpackStfc = ["tfw_ilbe_whip_gr", "tfw_ilbe_whip_coy"];

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
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["GRPC","GRPC2"]): {
		_Backpack = selectRandom _BackpackGrpC;
	};
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["STFC","STFC2","STFC3","PLTC"]): {
		_Backpack = selectRandom _BackpackStfc;
	};	
	case (_role == "SJV"): {
		_Backpack = selectRandom _BackpackKitSjvArr;
	};
	case (_role == "SJV2");
	case (_role == "CREW2"): {
		_Backpack = selectRandom _BackpackSjvArr;
	};
	case (_role == "GRGA");
	case (_role == "FARB"): {
		_Backpack = selectRandom _BackpackKitArr;
	};	
	case (_role == "UAV"): {
		_Backpack = _BackpackUAV;
	};
	case (_role == "HPIL"): {
		_Backpack = "";
	};
	default {
		_Backpack = selectRandom _BackpackArr;
	};
};

//Add the gear to the unit.
_unit addHeadgear _Helmet;
_unit forceAddUniform _Uniform;
_unit addVest _Vest;
_unit addBackpack _Backpack;