//initServer.sqf
//Executed only on server when mission is started. 

//Group Management system. Initialize the framework and register any groups that exists at mission start.
["Initialize", [true]] call BIS_fnc_dynamicGroups;