/*
this addAction ["Teleport MHQ1", "teleport.sqf", MHQ1];
SGU_Flag addAction ["<t size='1.2' shadow='2' color='#0055FF'>Teleport MHQ1</t>", "scripts\teleport.sqf", MHQ1];
Remember to name the vehicles you want to telport to MHQ1, MHQ2 and MHQ3.
*/

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_teleporTo = _this select 3;

//hint format["%1",_teleporTo];


if (getMarkerColor _teleporTo == "") then
{
	systemchat format ["Unable to deploy to %1 at this time.", _teleporTo];
}
else
{
	if (_teleporTo == "USS-FREEDOM") then
	{
		player SetPos [ getMarkerPos _teleporTo select 0, getMarkerPos _teleporTo select 1, 23];
	}
	else
	{
		player SetPos (getMarkerPos _teleporTo);
	};
	systemchat format ["You have been deployed at %1", _teleporTo];
};
