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