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
	case ("PLTC"): {		
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>PLTC</t>", {[player,"PLTC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("GRPC");
	case ("GRPC2"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC</t>", {[player,"GRPC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRPC Utan GRT</t>", {[player,"GRPC2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("HPIL"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Helikopter Pilot</t>", {[player,"HPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("JPIL"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Jet Pilot</t>", {[player,"JPIL"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	case ("VC");
	case ("CREW");
	case ("CREW2");
	case ("CREW3"): {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>VagnChef</t>", {[player,"VC"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning</t>", {[player,"CREW"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning SJV</t>", {[player,"CREW2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Besättning ING</t>", {[player,"CREW3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
	default {
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat</t>", {[player,"SOLD"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat RB57</t>", {[player,"SOLD2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skyttesoldat AT4</t>", {[player,"SOLD3"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRT</t>", {[player,"GRT"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV</t>", {[player,"SJV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>SJV Skarpskytt</t>", {[player,"SJV2"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Signalist</t>", {[player,"SIGN"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP90</t>", {[player,"KSP90"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>KSP58</t>", {[player,"KSP58"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Ingengör</t>", {[player,"ING"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Fältarbetare</t>", {[player,"FARB"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG</t>", {[player,"GRG"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>GRG Ass</t>", {[player,"GRGA"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>UAV</t>", {[player,"UAV"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Skarpskytt</t>", {[player,"SKRP"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];	
		_object addAction ["<t size='1' shadow='1' color='#00ff00'>Prickskytt</t>", {[player,"PRSK"] execVM "scripts\gear\getLoadout.sqf"},[],1,false,true,"","_this distance _target < 15"];
	};
};

true;