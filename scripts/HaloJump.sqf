_unit = _this select 1;

clicked = false;
_x = 0;
_y = 0;
_z = 0;
_Altitude = 1000;


_halopos = [];


hint "Click on map to perform a Halo Insertion";
openMap true;

["PlayerHalo_mapclick","onMapSingleClick", {
	Jump_pos = _pos;
	clicked = true;
}] call BIS_fnc_addStackedEventHandler;//add a event handler

waitUntil {clicked or !(visiblemap)};
["PlayerHalo_mapclick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;//remove the eventhandler

if (!visibleMap && !clicked) exitwith 
{
	systemchat "Jump Aborted";
	breakOut "main";
};

_pos = Jump_pos;
//HINT FORMAT ["POS: %1", _pos];
//sleep 3;

_x = _pos select 0;
_y = _pos select 1;
_z = _pos select 2;
//hint format ["X:%1 Y:%2 Z:%3", _x, _y, _z];
//sleep 3;

openMap false;
player setpos [_x, _y, _z + _Altitude];

_backpackItems = backpackItems _unit;
{_unit removeItemFromBackpack _x} forEach _backpackItems;
_currentBackpack = backpack _unit;
removeBackpack _unit;
_unit addBackpack "B_Parachute";
waitUntil {(isTouchingGround _unit)};
if (isNil _currentBackpack) then {		// These three lines check to see if the unit had a backpack or not at the beginning of the jump
	removeBackpack _unit;   		// If they had a backpack it is restored in the code below these 3 lines
};					// If they had no backpack then these 3 lines remove the parachute so you are back to no backpack
removeBackpack _unit;
_unit addBackpack _currentBackpack;
_newBackpackItems = backpackItems _unit;
{_unit removeItemFromBackpack _x} forEach _newBackpackItems;
{_unit addItemToBackpack _x} forEach _backpackItems;
sleep 2;

{
	if (!isPlayer _x) then {
		_x setPos (getPos _unit);
	};
} forEach units group _unit;