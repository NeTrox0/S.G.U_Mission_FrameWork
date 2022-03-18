/*
*	Select Items, 
*	Requires: ACE, ACEX, ACRE2 or TFAR
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;

removeAllItems _unit;
removeAllAssignedItems _unit;
//removeGoggles _unit;

//assign the Radio.
[_unit, _role] execVM "scripts\gear\items\assignRadio.sqf";

//assign the base arma items.
[_unit, _role] execVM "scripts\gear\items\assignItems.sqf";

//assign ACE items.
[_unit, _role] execVM "scripts\gear\items\assignAce.sqf";

//assign ACE medical items.
[_unit, _role] execVM "scripts\gear\items\assignMedical.sqf";

//assign Traits to the unit.
[_unit, _role] execVM "scripts\gear\items\setAceTraits.sqf";