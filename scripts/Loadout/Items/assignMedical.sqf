/*
*	Select medical items for the unit. 
*	Requires: ACE
*	
*	Parameters:
*	Player
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//IF ACE medical is loaded add ACE items.
if (isClass(configfile >> "CfgPatches" >> "ace_medical")) then {

	//Ace medical
	switch (_role) do {
		case ("SJV"): {
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
//			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_splint";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_adenosine";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_salineIV_250";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
			_unit addItemToBackpack "ACE_surgicalKit";
//			_unit addItemToBackpack "ACE_personalAidKit";
		};
		case ("SJV2"); //SJV Lätt
		case ("SJV3"); //SJV Skarpskytt
		case ("CREW2"): {
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_fieldDressing";};
			for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_elasticBandage";};
			for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
//			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_quikclot";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_tourniquet";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_splint";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_morphine";};
			for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_epinephrine";};
			for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_bodyBag";};
			_unit addItemToBackpack "ACE_adenosine";
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
			for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
			_unit addItemToBackpack "ACE_salineIV";
			_unit addItemToBackpack "ACE_surgicalKit";
//			_unit addItemToBackpack "ACE_personalAidKit";
		};
		default {
			for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
			for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
			for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_splint";};
			_unit addItemToUniform "ACE_epinephrine";
			_unit addItemToUniform "ACE_morphine";
			_unit addItemToUniform "ACE_salineIV_500";
		};
	};
} else {
	//ARMA medical.
	for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
	
	if (_unit isKindOf "B_medic_F") then {
		for "_i" from 1 to 10 do {_unit addItemToBackpack "FirstAidKit";};
		_unit addItemToBackpack "Medikit";
	};
};