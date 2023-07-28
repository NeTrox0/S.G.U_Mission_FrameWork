/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP, RHS-USAF, RHS-AFRF
*
*	Parameters: 
*	Player, 
*	_role (See ReadMe)
*
*	By Trox
*/


_unit = _this select 0;
_role = _this select 1;

_type = "";
_type = selectRandom ["AR","AK"];


//1: Weapon
switch (_role) do {
	case ("GRPC");
	case ("STFC");
	case ("GRT"): {
		if (_type == "AR") then {
			_unit addWeapon "rhs_weap_mk18_m320";
		} else {
			_unit addWeapon "rhs_weap_ak74mr_gp25";
		};
	};
	case ("SKRP"): {
		_unit addWeapon selectRandom ["gm_g3a4_ebr_oli","gm_g3a4_ebr_blk"];
	};
	case ("HPIL"): {
		_unit addWeapon "SMG_05_F";
	};
	default {
		if (_type == "AR") then {
			_unit addWeapon selectRandom ["rhs_weap_mk18_bk","rhs_weap_mk18_KAC_bk"];
		} else {
			_unit addWeapon selectRandom ["rhs_weap_ak74mr","rhs_weap_ak74m_zenitco01_b33"];
		};
	};
};


//2: Attachements
_weapon = primaryWeapon _unit;

//Optic
switch (_weapon) do {
	case ("SMG_05_F"): {
	};
	case ("gm_g3a4_ebr_oli");
	case ("gm_g3a4_ebr_blk"): {
		_unit addPrimaryWeaponItem "optic_AMS";
		_unit addItemToBackpack "optic_NVS";
	};
	default {
		_unit addPrimaryWeaponItem "optic_arco_blk_f";
	};
};

//Muzzle
switch (_weapon) do {
	case ("SMG_05_F"): {
		_unit addItem "muzzle_snds_l";
	};
	case ("gm_g3a4_ebr_oli");
	case ("gm_g3a4_ebr_blk"): {
		_unit addItemToBackpack "muzzle_snds_B";
	};
	default {
		if (_type == "AR") then {
			_unit addItem "rhsusf_acc_nt4_black";
		} else {
			_unit addItem "rhs_acc_dtk4short";
		};
	};
};

//Underbarrel
switch (_weapon) do {
	case ("rhs_weap_mk18_m320");
	case ("rhs_weap_ak74mr_gp25");
	case ("SMG_05_F"): {
	};
	case ("gm_g3a4_ebr_oli");
	case ("gm_g3a4_ebr_blk"): {
		_unit addPrimaryWeaponItem "bipod_01_F_blk";
	};
	default {	
		_unit addPrimaryWeaponItem selectRandom ["rhsusf_acc_grip2","rhsusf_acc_tdstubby_blk"];
	};
};

//Side	
_unit addPrimaryWeaponItem "acc_pointer_ir";


//3: Ammo
//Primary Ammo
switch (_role) do {
	case ("GRPC");
	case ("STFC");
	case ("GRPC2"): {
		if (_type == "AR") then {
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";};
		} else {
			for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_545x39_Mag_Tracer_Green_F";};
		};
	};
	case ("SKRP"): {
		for "_i" from 1 to 6 do {_unit addItemToVest "gm_20Rnd_762x51mm_AP_DM151_g3_blk";};
		for "_i" from 1 to 2 do {_unit addItem "gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk";};
	};
	case ("HPIL"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_9x21_Mag_SMG_02_Tracer_Red";};
	};
	default {
		if (_type == "AR") then {
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";};
		} else {
			for "_i" from 1 to 8 do {_unit addItemToVest "rhs_30Rnd_545x39_7N22_AK";};
		};
	};
};

//UBGL Ammo
switch (_role) do {
	case ("GRPC"); 
	case ("STFC");
	case ("GRT"): {
		if (_type == "AR") then {
			for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
		} else {
			for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_VOG25";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VOG25P";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_VG40OP_white";};
		};
	};
	default {};
};