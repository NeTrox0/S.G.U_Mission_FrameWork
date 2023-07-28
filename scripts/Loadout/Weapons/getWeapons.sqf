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

//Special For ??? AceGunbag
//if (_role == "????") then {
//	[_unit] execVM "scripts\Loadout\weapons\Common\assignAceGunbag.sqf";
//	sleep 0.1;
//};


switch (_camo) do {
	
	case (6): {
		//6:PMC
		[_unit, _role] execVM "scripts\Loadout\weapons\PMC\assignWeaponsPMC.sqf";
	}; 
	case (3);
	case (4);
	case (5): {
		// 3:MC, 4:MCT, 5:MCS
		[_unit, _role] execVM "scripts\Loadout\weapons\SOF\assignWeaponsSOF.sqf";
	};
	default {
		//0:M90, 1:M90K, 2:M90S
		[_unit, _role] execVM "scripts\Loadout\weapons\SWE\assignWeapons.sqf";
	};
};

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignLauncher.sqf";

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignSidearm.sqf";

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignGrenades.sqf";