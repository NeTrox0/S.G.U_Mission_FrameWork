/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP, RHS-USAF
*
*	Parameters: 
*	Player, 
*	_role (See ReadMe)
*
*	By Trox
*/


_unit = _this select 0;
_role = _this select 1;

//Jet Pilot exit.
if (_role == "JPIL") exitWith {};


//1: Weapon
switch (_role) do {
	case ("GRPC");
	case ("GRT"): {
		_unit addWeapon "rhs_weap_mk18_m320";
	};
	case ("KSP90"): {
		_unit addWeapon "LMG_03_F";
	};
	case ("KSP58"): {
		_unit addWeapon "rhs_weap_m240G";
	};	
	case ("SKRP"): {
		_unit addWeapon "rhs_weap_sr25_ec";
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_unit addWeapon "rhs_weap_m4_carryhandle";
	};
	case ("PRSK");
	case ("HPIL"): {
		_unit addWeapon "SMG_05_F";
	};
	default {
		_unit addWeapon selectRandom ["rhs_weap_mk18_bk","rhs_weap_mk18_KAC_bk"];
	};
};


//2: Attachements
_weapon = primaryWeapon _unit;

//Optic
switch (_weapon) do {
	case ("SMG_05_F"): {};
	case ("rhs_weap_sr25_ec"): {
		if (_role == "SJV3") then {
			_unit addPrimaryWeaponItem "rhsusf_acc_su230a";
		} else {
			_unit addPrimaryWeaponItem "optic_AMS";
			_unit addItemToBackpack "optic_NVS";
		};
	};
	case ("rhs_weap_m4_carryhandle"): {
		_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	};
	case ("LMG_03_F"): {
		_unit addPrimaryWeaponItem "optic_Hamr";
	};
	case ("rhs_weap_m240G"): {	
		_unit addPrimaryWeaponItem "rhsusf_acc_elcan_ard";
	};	
	default {
		_unit addPrimaryWeaponItem "optic_arco_blk_f";
	};
};

//Muzzle
switch (_weapon) do {
	case ("rhs_weap_m240G"): {};
	case ("SMG_05_F"): {
		_unit addItem "muzzle_snds_l";
	};
	case ("rhs_weap_sr25_ec"): {
		_unit addItemToBackpack "rhsusf_acc_aac_762sdn6_silencer";
	};
	default {
		_unit addItem "rhsusf_acc_nt4_black";
	};
};

//Underbarrel
switch (_weapon) do {
	case ("rhs_weap_m240G");
	case ("rhs_weap_mk18_m320");
	case ("SMG_05_F"): {
	};
	case ("rhs_weap_sr25_ec"): {
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
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2"): {
		for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red";};
	};
	case ("KSP90"): {
		for "_i" from 1 to 5 do {_unit addItemToVest "200Rnd_556x45_Box_Tracer_Red_F";};
	};	
	case ("KSP58"): {
//		for "_i" from 1 to 7 do {_unit addItemToVest "rhsusf_100Rnd_762x51_m80a1epr";};
		for "_i" from 1 to 8 do {_unit addItemToVest "sfp_100Rnd_762x51_ksp58";};
	};
	case ("SKRP"): {
		for "_i" from 1 to 6 do {_unit addItemToVest "rhsusf_20Rnd_762x51_SR25_m118_Special_Mag";};
		for "_i" from 1 to 2 do {_unit addItem "rhsusf_20Rnd_762x51_SR25_m993_Mag";};
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";};
	};
	case ("HPIL");
	case ("PRSK"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_9x21_Mag_SMG_02_Tracer_Red";};
	};
	default {
		for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_PMAG";};
	};
};

//UBGL Ammo
switch (_role) do {
	case ("GRPC"); 
	case ("GRT"): {
		for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
	};
	default {};
};