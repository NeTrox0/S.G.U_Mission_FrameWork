/*
*	Select Items, 
*	Requires: RHS
*	
*	Parameters:
*	Player,
*	role
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


//Link some items to correct slots.
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

//IF TFAR is loaded and unit is a TL or SL do not give them any Watch. TFAR_MICRODAGR will take its place!

if ((isClass(configfile >> "CfgPatches" >> "tfar_core")) and _role in ["GRPC","GRPC2","PLTC"]) then {
} else {
	_unit linkItem "ItemWatch";
};


//Add a UAV terminal to Squad leaders. Normal GPS for the other units
if ((_role == "PLTC") or (_role == "UAV")) then {
	_unit linkItem "B_UavTerminal";
} else {
	_unit linkItem "ItemGPS";
};


//Add NVG
switch (_role) do {
	case ("JPIL"): {};
	case ("HPIL"): {
		_unit addItemToVest "rhsusf_ANPVS_15";
	};
	case ("SJV3");
	case ("SKRP"): {
		_unit addItemToBackpack "rhsusf_ANPVS_15";
	};	
	default {
		_unit addItemToVest "rhsusf_ANPVS_15";
	};
};


//Add Binos. "AddWeapon" Because Binos can hurt you.. :)
switch (_role) do {
	case ("GRPC"); 
	case ("GRPC2"); 
	case ("PLTC"); 
	case ("SIGN"); 
	case ("VC"): {
		_unit addMagazine "Laserbatteries";
		_unit addWeapon "Laserdesignator_03";
	};
	case ("PRSK");
	case ("SKRP");
	case ("SJV3"): {
		_unit addWeapon "Rangefinder";
	};
	default {
		_unit addWeapon "Binocular"; 
	};
};


//Engineer items like EOD and explosives
switch (_role) do { 
	case ("ING");
	case ("CREW3"): {
		_unit addItemToBackpack "ToolKit";
	};
	case ("FARB"): { 
//		_unit addItemToBackpack "MineDetector";	//Mine detector is given in "assignACE"	
		for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
	
		if (isClass(configfile >> "CfgPatches" >> "AMP_Breaching_Charge")) then {
			for "_i" from 1 to 2 do {_unit addItemToBackpack "AMP_Breaching_Charge_Mag";};
		};
	};
	default {};
};