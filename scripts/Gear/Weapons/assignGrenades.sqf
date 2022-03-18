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
	case ("PRSK");
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
	};
	case ("HPIL"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
	};
	case ("JPIL"): {
		for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShellGreen";};
	};
	default {
		for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellGreen";};
	};
};

switch (_role) do {
	case ("VC");
	case ("GRPC");
	case ("GRPC2");
	case ("SIGN");
	case ("PLTC"): {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellYellow";};
	};
	case ("HPIL"): {
		_unit addItemToVest "SmokeShellYellow";
	};
	case ("JPIL"): {
		_unit addItemToUniform "SmokeShellYellow";
	};
	default {};
};


//Utility
switch (_role) do {
	case ("PRSK");
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
	case ("VC");
	case ("GRPC");
	case ("GRPC2");
	case ("SIGN");
	case ("PLTC"): {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "B_IR_Grenade";};
	};
	default {};
};
	
	
//Frags
switch (_role) do {
	case ("HPIL");
	case ("JPIL"): {};
	case ("PRSK");
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_unit addItemToVest _Frag;
	};
	default {
		for "_i" from 1 to 2 do {_unit addItemToVest _Frag;};
	};
};