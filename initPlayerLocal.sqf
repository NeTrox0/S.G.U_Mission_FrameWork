//initPlayerLocal.sqf
//Executed locally when player joins mission (includes both mission start and JIP). 
	

[] spawn {
	waitUntil {!isNull player && player == player};

	// Base Flag Pole
	SGU_Flag allowDamage false;
	SGU_Flag enableSimulation false;
	
		// Halo Jump
	SGU_Flag addAction["<t size='1.2' shadow='2' color='#ff9900'>HALO jump</t>", "scripts\halojump.sqf",[],1,false,true,"","_this distance _target < 10"];
	
		// Teleport..
	SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Move To Outpost Mufflon</t>", "scripts\teleport.sqf", "MUFFLON",1,false,true,"","_this distance _target < 10"];
	SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Move To USS-Freedom</t>", "scripts\teleport.sqf", "USS-FREEDOM",1,false,true,"","_this distance _target < 10"];

	//Arsenal
	[player,SGU_Arsenal] execVM "scripts\Arsenal\selectArsenal.sqf";
	
	//Give unit its gear at start of mission.
	[player] execVM "scripts\Loadout\getLoadout.sqf";


	//Group Management system. initialize the player side of the framework.
	["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;
};