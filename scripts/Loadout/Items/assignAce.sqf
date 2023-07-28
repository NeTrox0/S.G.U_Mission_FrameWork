/*
*	Select Items, 
*	Requires: ACE
*	
*	Parameters:
*	Player,
*	Role,
*	Camo
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//Add misc items from ACE;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";


//Give Everyone Entrenching tool
switch (_role) do {
	case ("HPIL");
	case ("JPIL"): {
	};
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2");
	case ("STFC");
	case ("STFC2");
	case ("STFC3");
	case ("GRT");
	case ("ING");
	case ("CREW3");
	case ("FARB"): {
		_unit addItemToBackpack "ACE_EntrenchingTool";
	};
	default {
		_unit addItemToUniform "ACE_EntrenchingTool";
	};
};	


//FARB items like EOD and explosives
if (_role == "FARB") then {
	_unit addItemToBackpack "ACE_DefusalKit";
	_unit addItemToBackpack "ACE_M26_Clacker";
	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";
	//for "_i" from 1 to 5 do {_unit addItemToBackpack "ace_marker_flags_green";};
};

//??? gets kestrel and a RangeCard
/*
if (_role == "????") then {
	_unit addItemToUniform "ACE_RangeCard";
	_unit addItemToUniform "ACE_Kestrel4500";
};
*/

switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2");
	case ("STFC");
	case ("STFC2");
	case ("STFC3"): {
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
	};
	case ("VC"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
	};
	default {};
};