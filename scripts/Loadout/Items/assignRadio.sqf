/*
*	Select Items, 
*	Requires: TFAR
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
		//Add Radio (TFAR) for all all units.
		_unit linkItem "TFAR_anprc152";

		if (_role in ["GRPC","GRPC2","PLTC","STFC","STFC2","STFC3","VC"]) then {
			_unit linkItem "TFAR_microdagr";
		};
	};
	default {
		//Add the default arma radio
		_unit linkItem "ItemRadio";
	};
};