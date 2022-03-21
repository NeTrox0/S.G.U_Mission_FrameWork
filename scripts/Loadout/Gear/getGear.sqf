/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: SFP, SGU and ILLBE rewrite if TFAR is loaded.
*	
*	Parameters: 
	_unit
*	_CammoInt fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT, 4:PMC, 5:PMCD
	_role
*
*	By Trox
*/

_unit =  _this select 0;
_camo = _this select 1;
_role = _this select 2;

//Remove old Gear.
removeHeadgear _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;


//Get the items in the correct cammo
switch (_camo) do {
	case (1): { //1:M90K
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SWE\M90K.sqf";
	};
	case (2): { //2:MC
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SOF\MC.sqf";
	};
	case (3): { //3:MCT
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SOF\MCT.sqf";
	};
	case (4): { //4:PMC
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\PMC\PMC.sqf";
	};	
	case (5): { //5:PMCD
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\PMC\PMCD.sqf";
	};		
	default { //0:M90
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SWE\M90.sqf";
	};
};

//set gear to true to allow continuation from caller.
true