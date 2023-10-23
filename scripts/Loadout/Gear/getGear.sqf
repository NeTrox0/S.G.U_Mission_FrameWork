/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: SFP, SGU and ILLBE rewrite if TFAR is loaded.
*	
*	Parameters: 
	_unit
*	_CammoInt fetched from Params. 0:M90, 1:M90K, 2:M90S, 3:MC, 4:MCT, 5:MCS, 6:PMC, 7:MC 3DMA
	_role
*
*	By Trox
*/

_unit = _this select 0;
_camo = _this select 1;
_role = _this select 2;

//Remove old Gear.
removeHeadgear _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;


//Get the items in the correct cammo
switch (_camo) do {
	case (1): { //1:SFP M90K
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SFP_M90K.sqf";
	};
	case (2): { //2:SFP M90S
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SFP_M90S.sqf";
	};
	case (3): { //3:VSM MC
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\VSM_MC.sqf";
	};
	case (4): { //4:VSM MCT
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\VSM_MCT.sqf";
	};
	case (5): { //5:VSM MCS
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\VSM_MCS.sqf";
	};	
	case (6): { //6:PMC
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\PMC.sqf";
	};
	case (7): { //6:3DMA MC
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\3DMA_MC.sqf";
	};	
	default { //0:SFP M90
		[_unit, _role] call compile preprocessfile "scripts\Loadout\Gear\SFP_M90.sqf";
	};
};

//set gear to true to allow continuation from caller.
true