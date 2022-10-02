/*
*	Set the choises the unit has at the arsenal box, depending on its role. 
*	
*	Parameters:
*	_role	Unit role.
*	_object	Target object to add Arsenal to.
*	
*	By Trox
*/	

_role = _this select 0;
_object = _this select 1;


switch (_role) do {
	case ("PLTC");
	case ("GRPC");
	case ("GRPC2"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Grp.C GRT</t>", {[player,"GRPC"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Grp.C</t>", {[player,"GRPC2"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("HPIL");
	case ("JPIL"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Hkp Pilot</t>", {[player,"HPIL"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	default {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Sk.sold</t>", {[player,"SOLD"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Sk.sold AT4</t>", {[player,"SOLD3"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Sk.sold GRT</t>", {[player,"GRT"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,"SJV"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Lätt</t>", {[player,"SJV2"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Signalist</t>", {[player,"SIGN"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,"ING"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Fältarbetare</t>", {[player,"FARB"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];		
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,"SKRP"] execVM "scripts\Loadout\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
};

true;