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
_camo = _this select 2;


//Add misc items from ACE;
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_CableTie";
_unit addItemToUniform "ACE_Flashlight_XL50";
_unit addItemToUniform "ACE_IR_Strobe_Item";


//Engineer items like Trench tool.
if (_role in ["ING","CREW3"]) then {
	_unit addItemToBackpack "ACE_EntrenchingTool";
};

//FARB items like EOD and explosives
if (_role == "FARB") then {
	_unit addItemToBackpack "ACE_DefusalKit";
	_unit addItemToBackpack "ACE_EntrenchingTool";
	_unit addItemToBackpack "ACE_M26_Clacker";
	_unit addItemToBackpack "ACE_wirecutter";
	_unit addItemToBackpack "ACE_VMH3";
};

//PRSK gets kestrel and a RangeCard
if (_role == "PRSK") then {
	_unit addItemToUniform "ACE_RangeCard";
	_unit addItemToUniform "ACE_Kestrel4500";
};

switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2"): {
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
		_unit addItemToBackpack "ACE_MX2A";
	};
	case ("VC"): {
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Chemlight_HiYellow";};
	};
	case ("SIGN"): {
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_Chemlight_HiYellow";};
	};
	default {};
};



//ACE SURVIVAL

//FOOD
switch (_camo) do {
	case (6): {
		//6:PMC - Certain PMC uniforms does not have enough space for food and other misc items. food is instead directed to the backpack for these.
		_unit addItemToBackpack selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
		_unit addItemToBackpack selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
		_unit addItemToBackpack "ACE_Can_RedGull";
		_unit addItemToBackpack "ACE_Canteen";
	}; 
/*	case (3);
	case (4);
	case (5): {
		// 3:MC, 4:MCT, 5:MCS
	}; */
	default {
		//0:M90, 1:M90K, 2:M90S
		_unit addItem selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
		_unit addItem selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
		_unit addItem "ACE_Can_RedGull";
		_unit addItem "ACE_Canteen";
	};
};