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
_wpn = param [2, 0];

//_wpn = ["Gear_Wpn", 0] call BIS_fnc_getParamValue;
//systemchat format ["LOG.2.Wpn: %1", _wpn];

removeAllWeapons _unit;

//Special For ??? AceGunbag
//if (_role == "????") then {
//	[_unit] execVM "scripts\Loadout\weapons\Common\assignAceGunbag.sqf";
//	sleep 0.1;
//};


switch (_wpn) do {
	case (1): {
		// 1:ak5
		[_unit, _role] execVM "scripts\Loadout\weapons\assignWeaponsSFP.sqf";
	};
	case (2): {
		//2:MK18
		[_unit, _role] execVM "scripts\Loadout\weapons\assignWeaponsSOF.sqf";
	};
	case (3): {
		//3:PMC
		[_unit, _role] execVM "scripts\Loadout\weapons\assignWeaponsPMC.sqf";
	};
	default {
		//0:MX
		[_unit, _role] execVM "scripts\Loadout\weapons\assignWeaponsMX.sqf";
	};
};

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignLauncher.sqf";

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignSidearm.sqf";

[_unit, _role] execVM "scripts\Loadout\weapons\Common\assignGrenades.sqf";