/*
*	Set the choises the unit has at the arsenal box, depending on its role. 
*	
*	Parameters:
*	_unit
*	Camo fetched from Params. Defaults if none is set.
*	Role fetched from the unit by a variable. Defaults to 0("SOLD") if none is set.
*	
*	By Trox
*/	


_unit = _this select 0;

_role = [_unit getVariable "Role"] param [0,"SOLD"];
_camo = ["Gear_camo", 0] call BIS_fnc_getParamValue;


_object = SGU_Arsenal;
_Ars = false;


//systemchat format ["ARS.Roll: %1", _role];
//systemchat format ["ARS.Cammo: %1", _camo];

_object allowDamage false;
_object enableSimulation false;

switch (_camo) do {
	case (6): {
		//PMC
		_Ars = [_role, _object] call compile preprocessfile "scripts\Arsenal\ArsenalPMC.sqf";
	}; 
	default {
		//M90, M90K, M90S, MC, MCD or MCS
		_Ars = [_role, _object] call compile preprocessfile "scripts\Arsenal\Arsenal.sqf";
	};
};
waitUntil {_Ars};


//Add full arsenal at the bottom.
_object addAction ["<t size='1.2' shadow='1' color='#ff0000'>----------------</t>", "",[],1,false,true,"","_this distance _target < 15"];
_object addAction[("<t size='1.3' shadow='2' color='#33cc33'>") + "ACE Arsenal" + "</t>",{[SGU_Arsenal, player, true] call ace_arsenal_fnc_openBox;},[],1,false,true,"","_this distance _target < 15"];
