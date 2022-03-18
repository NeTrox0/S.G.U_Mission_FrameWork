/*
*	Select Items, 
*	Requires: ACRE2 or TFAR
*	
*	Parameters:
*	Player,
*
*	By Trox
*/

_unit = _this select 0;
_role = _this select 1;


switch (true) do {
	//Check if ACRE2 is loaded.
/*
	case (isClass(configfile >> "CfgPatches" >> "ACRE_main")): {
		//Add Radio(ACRE) for all units;
		switch (_role) do {
			case ("JPIL"): {
				_unit addItemToUniform "ACRE_PRC152";
			};
			case ("HPIL"): {
				_unit addItemToVest "ACRE_PRC152";
			};
			case ("VC");
			case ("GRPC");
			case ("GRPC2"): {
				_unit addItemToUniform "ACRE_PRC343";
				_unit addItemToVest "ACRE_PRC152";
			};
			case ("PLTC"): {
				_unit addItemToUniform "ACRE_PRC343";
				_unit addItemToVest "ACRE_PRC152";
				_unit addItemToBackpack "ACRE_PRC117F";
			};
			default {
				_unit addItemToUniform "ACRE_PRC343";	
			};
		};
	};
*/
	//Check if TFAR is loaded.
	case (isClass(configfile >> "CfgPatches" >> "tfar_core")): {
		//Add Radio (TFAR) fall all units.
		switch (_role) do {
			case ("SIGN");
			case ("JPIL");
			case ("HPIL"): {
				_unit linkItem "TFAR_anprc152";
			};
			case ("VC");
			case ("GRPC");
			case ("GRPC2");
			case ("PLTC"): {
				_unit linkItem "TFAR_microdagr";
				_unit linkItem "TFAR_anprc152";
			};
			default {
				_unit linkItem "TFAR_rf7800str";
			};
		};
	};
	default {
		//Add the default arma radio
		_unit linkItem "ItemRadio";
	};
};