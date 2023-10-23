/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP
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
	case ("STFC");
	case ("GRPC");
	case ("GRT"): {
		_unit addWeapon "arifle_MX_GL_F";
	};
	case ("KSP90"): {
		_unit addWeapon "arifle_MX_SW_F";
	};
	case ("KSP58"): {
		_unit addWeapon "arifle_MX_SW_F";
	};
	case ("STFC3");
	case ("SKRP"): {
		_unit addWeapon "arifle_MXM_F";
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3");
	case ("HPIL"): {
		_unit addWeapon "arfile_MXC_F";
	};
	default {
		_unit addWeapon "arifle_MX_F";
	};
};


//2: Attachements
_primWeapon = primaryWeapon _unit;

//Optic
switch (_primWeapon) do {
	case ("arifle_MXM_F"): {
		_unit addPrimaryWeaponItem "optic_Hamr";
	};	
	default {
		_unit addPrimaryWeaponItem "optic_aco";
	};
};

//Muzzle
switch (_primWeapon) do {
	case ("arfile_MXC_F"): {};
	default {
		_unit addItem "muzzle_snds_65_TI_blk_F";
	};
};

//Underbarrel
switch (_primWeapon) do {
	case ("arifle_MX_SW_F"): {
		_unit addPrimaryWeaponItem "bipod_01_F_blk";
	};
	default {		
	};
};

//Side
_unit addPrimaryWeaponItem "acc_pointer_IR";


//3: Ammo
//Primary Ammo
switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2");
	case ("STFC");
	case ("STFC2"): {
		for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "30Rnd_65x39_caseless_mag_Tracer";};
	};
	case ("KSP58");
	case ("KSP90"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "100Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "100Rnd_65x39_caseless_mag";};
	};
	case ("STFC3");
	case ("SKRP"): {
		for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
		for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3");
	case ("HPIL"): {
		for "_i" from 1 to 4 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	};
	default {
		for "_i" from 1 to 8 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	};
};

//UBGL Ammo
switch (_role) do {
	case ("GRPC"); 
	case ("STFC");
	case ("GRT"): {
		for "_i" from 1 to 12 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "UGL_FlareCIR_F";};
		//Add smoke rounds??
	};
};



