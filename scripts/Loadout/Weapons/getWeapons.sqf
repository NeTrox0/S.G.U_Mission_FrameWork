/*
*	Select the weapons for unit.
*	Requires: ACE, SFP and RHS
*	
*	Parameters:
*	Player
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;
_camo = _this select 2;

removeAllWeapons _unit;

//Special For PRSK AceGunbag
if (_role == "PRSK") then {
	[_unit] execVM "scripts\gear\weapons\assignAceGunbag.sqf";
	sleep 0.1;
};


switch (_camo) do {
	case (4);
	case (5): {
		//PMC or PMCD
		[_unit, _role] execVM "scripts\gear\weapons\assignWeaponsPMC.sqf";
	}; 
	default {
		//M90, M90K, MC or MCD
		[_unit, _role] execVM "scripts\gear\weapons\assignWeapons.sqf";
		
		[_unit, _role] execVM "scripts\gear\weapons\assignLauncher.sqf";
	};
};

[_unit, _role] execVM "scripts\gear\weapons\assignSidearm.sqf";

[_unit, _role] execVM "scripts\gear\weapons\assignGrenades.sqf";