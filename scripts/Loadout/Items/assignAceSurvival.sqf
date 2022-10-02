/*
*	Select Items, 
*	Requires: ACE
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;
_camo = _this select 1;


//FOOD
switch (_camo) do {
	case (6): {
		//6:PMC
		_unit addItemToBackpack selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
		_unit addItemToBackpack selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
		_unit addItemToBackpack "ACE_Can_RedGull";
		_unit addItemToBackpack "ACE_Canteen";
	}; 
//	case (3);
//	case (4);
//	case (5): {
		// 3:MC, 4:MCT, 5:MCS
//	};
	default {
		//0:M90, 1:M90K, 2:M90S
		_unit addItem selectRandom ["ACE_MRE_ChickenTikkaMasala","ACE_MRE_CreamChickenSoup","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_MRE_BeefStew"];
		_unit addItem selectRandom ["ACE_Can_Franta","ACE_Can_Spirit"];
		_unit addItem "ACE_Can_RedGull";
		_unit addItem "ACE_Canteen";
	};
};