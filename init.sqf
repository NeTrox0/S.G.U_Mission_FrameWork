//init.sqf
//Executed when mission is started (before briefing screen)

//SGU Framework A3 init.sqf / 2018 04 17

//----Disable Saving and Auto Saving----
enableSaving [false, false];

if (!isdedicated) then
{
	//Player is player... Japp player is player..
	waitUntil {!isNull player};
	waitUntil {player == player};	
	//Script f�r Spelaren endast!
	
		//L�gg till Brief.
		if (side player == west) then {[] call compile preProcessFileLineNumbers "briefing.sqf";};
		if (side player == east) then {[] call compile preProcessFileLineNumbers "briefing_east.sqf";};
		
		//s�tt marker h�jden f�r att kunna tpa / spawna p� carrier.
		//"USS-FREEDOM" setMarkerPosLocal [markerPos "USS-FREEDOM" select 0, markerPos "USS-FREEDOM" select 1, 24];
};