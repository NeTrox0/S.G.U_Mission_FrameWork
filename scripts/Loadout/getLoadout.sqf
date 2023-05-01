/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: ACE, ACEX, RHS, SAM3, SFP, ACRE2 or TFAR
*	
*	Parameters: 
*	_unit, 
*	_camo, from caller or fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT, 4:PMC, 5:PMCD
*	_role(Optional) Script will fetch role unless it is given. See ReadME
*
*	By Trox
*/

_gear = false;


_unit =  _this select 0;
_role = param [1, "0"];
_camo = param [2, 9];
//systemchat format ["Cammo: %1", _camo];
//systemchat format ["Roll: %1", _role];


if (side player == sideLogic) exitWith {systemchat "No Gear for Virtual Zeus";};


if (_camo == 9) then {
	_camo = ["Gear_Camo", 0] call BIS_fnc_getParamValue;
	//systemchat format ["LOG.2.Cammo: %1", _camo];
};

//if no role is set try to get a role from the unit variable
if (_role == "0") then {
	//Get the set role for the unit. if no role variable is set default to role SOLD
	_role = [_unit getVariable "Role"] param [0, "SOLD"];
	//systemchat format ["LOG.2.Roll: %1", _role];
};


//Give unit new uniform vest and backpack.
_gear = [_unit,_camo,_role] call compile preprocessfile "scripts\Loadout\gear\getGear.sqf";
waitUntil {_gear};

//assign the items that the gear should include
[_unit,_role] execVM "scripts\Loadout\items\getItems.sqf";

//assign the weapons.
[_unit,_role,_camo] execVM "scripts\Loadout\weapons\getWeapons.sqf";


//assign insignia 
[_unit,"SGU_Insignia"] call BIS_fnc_setUnitInsignia;

Systemchat "Utrustad å klar. Lycka till!";