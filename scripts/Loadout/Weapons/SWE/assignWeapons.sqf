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
	case ("PLTC");
	case ("GRPC");
	case ("GRT"): {
		_unit addWeapon "sfp_ak5c_m203";
	};
	case ("KSP90"): {
		_unit addWeapon "LMG_03_F";
	};
	case ("KSP58"): {
		_unit addWeapon "sfp_ksp58f";
	};
	case ("SJV3");
	case ("SKRP"): {
		_unit addWeapon "sfp_ak4d";
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3");
	case ("PRSK");
	case ("HPIL"): {
		_unit addWeapon "sfp_ak5dmk2";
	};
	default {
		_unit addWeapon selectRandom ["sfp_ak5c","sfp_ak5c_alt"];
	};
};


//2: Attachements
_primWeapon = primaryWeapon _unit;

//Optic
switch (_primWeapon) do {
	case ("sfp_ak5dmk2"): {
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
	};
	case ("sfp_ak4d"): {
		if (_role == "SJV3") then {
			_unit addPrimaryWeaponItem "sfp_optic_kikarsikte09_4x";
		} else {
			_unit addPrimaryWeaponItem "optic_AMS";
		};
		_unit addItemToBackpack "optic_NVS";
	};
	case ("sfp_ksp58f"): {
		_unit addPrimaryWeaponItem "rhsusf_acc_elcan_ard";
	};
	default {
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
	};
};

//Muzzle
switch (_primWeapon) do {
	case ("sfp_ksp58f");
	case ("sfp_ak5dmk2"): {
	};
	case ("sfp_ak4d"): {
		_unit addItemToBackpack "muzzle_snds_B";
	};
	default {
		_unit addItem "muzzle_snds_M";
	};
};

//Underbarrel
switch (_primWeapon) do {
	case ("sfp_ak4d"): {
		_unit addPrimaryWeaponItem "bipod_02_F_blk";
	};
	default {		
	};
};

//Side
switch (_primWeapon) do {
	case ("sfp_ksp58f"): {};
	default {		
		_unit addPrimaryWeaponItem "acc_pointer_ir";
	};
};

//3: Ammo
//Primary Ammo
switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2"): {
		for "_i" from 1 to 8 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_tracer_plastic";};
	};
	case ("KSP90"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_556x45_Box_Tracer_Red_F";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "200Rnd_556x45_Box_Tracer_Red_F";};
	};	
	case ("KSP58"): {
		for "_i" from 1 to 3 do {_unit addItemToVest "sfp_100Rnd_762x51_ksp58";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "sfp_100Rnd_762x51_ksp58";};
	};
	case ("SJV3");
	case ("SKRP"): {
		for "_i" from 1 to 6 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4_ap";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4_tracer";};
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3");
	case ("PRSK");
	case ("HPIL"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
	default {
		for "_i" from 1 to 8 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_plastic";};
	};
};

//UBGL Ammo
switch (_role) do {
	case ("GRPC"); 
	case ("GRT"): {
		for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
		//Add smoke rounds??
	};
};