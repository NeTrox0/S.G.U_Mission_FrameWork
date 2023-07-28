/*
*	Set the "traits" of the unit. Medic, Engineer and EOD.
*	Requires: ACE(Not really its just a variable on the unit)
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;

//Set the unit to have no traits.
_unit setUnitTrait ["Medic", false];
_unit setUnitTrait ["explosiveSpecialist", false];
_unit setUnitTrait ["engineer", false];
_unit setVariable ["Ace_medical_medicClass", 0];
_unit setVariable ["ACE_isEOD", false];
_unit setVariable ["ACE_isEngineer", 0];

//disallow to unit to use T1 Artillery mod.
_unit setVariable ["T1AM_UnitAllow", false, true];


switch (_role) do {
	case ("SJV");
	case ("SJV2");
	case ("CREW2"): {
		//Set the unit as medic
		_unit setUnitTrait ["Medic", true];
		_unit setVariable ["Ace_medical_medicClass", 1];
	};
	case ("ING");
	case ("CREW3"): {
		//Set the unit as an engineer
		_unit setUnitTrait ["engineer", true];
		_unit setVariable ["ACE_isEngineer", 1];
	};
	case ("FARB"): {
		//Set the unit as an EOD.
		_unit setUnitTrait ["explosiveSpecialist", true];
		_unit setVariable ["ACE_isEOD", true];
	};
	case ("PLTC");
	case ("STFC");
	case ("STFC2");
	case ("STFC3"): {
		//allow to unit to use T1 Artillery mod.
		_unit setVariable ["T1AM_UnitAllow", true, true];
	};	
	default {};
};