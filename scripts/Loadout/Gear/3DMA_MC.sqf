/*
*	Select the correct items for Cammo and Role
*	See the ReadME for accepted roles and cammos
*	Requires: VSM, ILBE
*	
*	Parameters: _role
*
*	By Trox
*/

/*
Not used stuff.
3DMA_WD_AVS_PLRadio //Must have BP GMR
3DMA_WD_AVS_PLSGT
3DMA_WD_AVS_Rifleman_v2

3DMA_WD_AVSZipOn
3DMA_WD_BackPanelBanger
3DMA_WD_GMRMinimap
3DMA_WD_SatL //VERY LARGE BAG
3DMA_WD_SpiritusBackPanel
*/


//HELMET
_Helmet = SelectRandom ["3DMA_WD_Opscore_V2","3DMA_WD_Opscore_V1","3DMA_WD_Opscore_V4"];
_HelmetJPilot = "H_PilotHelmetFighter_B";
_HelmetHPilot = "H_PilotHelmetHeli_B";

//UNIFORM
_Uniform = selectRandom ["3DMA_WD_G3_Uniform_Pads","3DMA_WD_G3_Uniform_PadsGloves","3DMA_WD_G3_Uniform_PadsGlovesSleeves","3DMA_WD_G3_Uniform_PadsSleeves"];
_UniformJPilot = "U_B_PilotCoveralls";

//VEST
_Vest = selectRandom ["3DMA_WD_AVS_Rifleman_v1","3DMA_WD_AVS_Rifleman_v3","3DMA_WD_AVS_Rifleman_v4"];
_VestGrt = "3DMA_WD_AVS_Grenadier";
_VestMed = "3DMA_WD_AVS_Medic";
_VestKSP = "3DMA_WD_AVS_Saw";
_VestPltC = "3DMA_WD_AVS_PLLEAD";
_VestGrpC = "3DMA_WD_AVS_SL";
_VestSkrp = "3DMA_WD_AVS_SNOT";
_VestHPilot = "V_TacVest_blk";

//BACKPACK
_Backpack = "3DMA_WD_DeltaBag";
_BackpackUAV = "B_UAV_01_backpack_F";
_BackpackGrpC = "tfw_ilbe_DD_mc";
_BackpackStfc = "tfw_ilbe_whip_mc";

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
	default {};
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
	case ("KSP90");
	case ("KSP58"): {
		_Vest = _VestKSP;
	};
	case ("SJV2");
	case ("SJV"): {
		_Vest = _VestMed;
	};
	case ("GRT"): {
		_Vest = _VestGrt;
	};
	case ("SKRP"): {
		_Vest = _VestSkrp;
	};
	case ("GRPC"): {
		_Vest = _VestGrpC;
	};
	case ("PLTC"): {
		_Vest = _VestPltC;
	};
	default {};
};


//Backpack
switch (true) do {
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["GRPC","GRPC2"]): {
		_Backpack = _BackpackGrpC;
	};
	case ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["STFC","STFC2","STFC3","PLTC"]): {
		_Backpack = _BackpackStfc;
	};	
	case (_role == "FARB");
	case (_role == "GRGA");
	case (_role == "SJV"): {
		_Backpack = _Backpack;
	};
	case (_role == "UAV"): {
		_Backpack = _BackpackUAV;
	};
	case (_role == "SOLD");
	case (_role == "SOLD2");
	case (_role == "SOLD3");
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