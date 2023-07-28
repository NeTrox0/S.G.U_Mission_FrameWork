/*
*	Select the weapons for unit.
*	Requires: ACE & SFP (Not really due to the checks)
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//Check if mods are loaded.
_ACE = false;
_SFP = false;
_Frag = "HandGrenade";

if (isClass(configfile >> "CfgPatches" >> "ace_grenades")) then { 
	_ACE = true;
};

if (isClass(configfile >> "CfgPatches" >> "sfp_weapons_grenades")) then { 
	_SFP = true;
	_Frag = "sfp_handgrenade_shgr56";
};


//Smoke
switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2");
	case ("STFC");
	case ("STFC2");
	case ("STFC3");
	case ("VC"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellYellow";};
	};
	case ("HPIL");
	case ("JPIL"): {
		for "_i" from 1 to 2 do {_unit addItem "SmokeShellYellow";};
	};
	case ("SJV");
	case ("SJV2"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
	};	
	default {
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	};
};


//Utility
switch (_role) do {
	case ("HPIL");
	case ("JPIL");
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {};
	default {
		if (_ACE) then { 
			_unit addItemToVest "ACE_M84";
		};
	};
};

switch (_role) do {
	case ("VC"): {
		_unit addItemToVest "B_IR_Grenade";
	};
	case ("GRPC");
	case ("GRPC2");
	case ("STFC");
	case ("STFC2");
	case ("STFC3");
	case ("PLTC"): {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
	};
	default {};
};
	
	
//Frags
switch (_role) do {
	case ("HPIL");
	case ("JPIL");
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
	};
	default {
		for "_i" from 1 to 2 do {_unit addItemToVest _Frag;};
	};
};