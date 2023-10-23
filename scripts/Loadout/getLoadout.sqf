/*
*	Select the gear for unit, using some parameters for Cammo
*	Requires: 
*	
*	Parameters: 
*	_unit, 
*	_camo, from caller or fetched from Params. 0:M90, 1:M90K, 2:MC, 3:MCT, 4:PMC, 5:PMCD
*	_role(Optional) Script will fetch role unless it is given. See ReadME
*
*	By Trox
*/

_gear = false;


_unit =  _this select 0;
_role = param [1, "0"];
//_camo = param [2, 0];
//systemchat format ["Roll: %1", _role];
//systemchat format ["Cammo: %1", _camo];


if (side player == sideLogic) exitWith {systemchat "No Gear for Virtual Zeus";};


_camo = ["Gear_Camo", 0] call BIS_fnc_getParamValue;
//systemchat format ["LOG.2.Cammo: %1", _camo];

_wpn = ["Gear_Wpn", 0] call BIS_fnc_getParamValue;
//systemchat format ["LOG.2.Wpn: %1", _wpn];


//if no role is set try to get a role from the unit variable
if (_role == "0") then {
	_role = [_unit getVariable "Role"] param [0, "SOLD"];
	//systemchat format ["LOG.2.Roll: %1", _role];
};





//Give unit new uniform vest and backpack.
_gear = [_unit,_camo,_role] call compile preprocessfile "scripts\Loadout\gear\getGear.sqf";
waitUntil {_gear};

//assign the items that the gear should include
[_unit,_role] execVM "scripts\Loadout\items\getItems.sqf";

//assign the weapons.
[_unit,_role,_wpn] execVM "scripts\Loadout\weapons\getWeapons.sqf";


//assign insignia 
[_unit,"SGU_Insignia"] call BIS_fnc_setUnitInsignia;

//Systemchat "Utrustad å klar. Lycka till!";

Systemchat selectRandom [
	"Utrustad å klar. Lycka till!"
	,"Water shapes it's course according to the ground over witch it flows. A soldier works out his victory in relation to the foe the is facing. Therefore, just as water retains no constant shape. In warfare, there are no constant conditions. - The Art of War. Sabaton"
	,"Vilja och självdisciplin är att i alla lägen och utan hänsyn till dig själv göra ditt bästa. Hur svåra och farliga omständigheterna än blir så måste dina kamrater lita på att du gör ditt jobb. - SOLDF"
	,"Självförtroende byggs på kunskap, färdighet, förståelse och erfarenhet. För att uppnå detta krävs målmedveten och många gånger hård träning. - SOLDF"
];

