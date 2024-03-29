/*
*	Select the weapons for unit.
*	Requires: RHS, SFP
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/


_unit = _this select 0;
_role = _this select 1;


//Add special weapon and attachments
switch (_role) do {
	case ("SOLD3"): {
		if (isClass(configfile >> "CfgPatches" >> "sfp_at_launchers")) then {
			_unit addWeapon "sfp_rb57";
		} else {
			_unit addWeapon "launch_NLAW_F";
		};
	};
	case ("ING");
	case ("GRPC2");
	case ("STFC2");
	case ("SOLD2"): {
		if (isClass(configfile >> "CfgPatches" >> "rhsusf_c_weapons")) then {
			_unit addWeapon "rhs_weap_M136";
		};
	};
	case ("GRGA"): {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F"};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HE_F"};
	};
	case ("GRG"): {
		//_unit addWeapon "launch_MRAWS_olive_F";
		_unit addWeapon "launch_MRAWS_olive_rail_F";
		
		for "_i" from 1 to 2 do {_unit addItemToBackpack "MRAWS_HEAT_F"};
		_unit addItemToBackpack "MRAWS_HE_F";
	};
	default {};
};