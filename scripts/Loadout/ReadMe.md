******************************************************************
A ReadME. Most people will never see this. But you did! Well done!

This is what you need to read to use this script.

By Trox
******************************************************************

Each playable unit should have a role set in their INIT field as shown below. Change "PC" to the respective role.
If no "Role" is assigned to a unit a regular Rifleman(SOLD) is defaulted to.
this setVariable ["Role","PC"];

//Group Roles
PLTC
GRPC
GRPC2 	NO GRT
SJV
SJV2	SJV & SKARPSKYTT
KSP90
KSP58
GRG
GRT		AT4
SOLD	RB57
ING 	INGENJÖR
FARB	FÄLTARBETARE
SKRP 	SKARPSKYTT
UAV
PRSK	Prickskytt (Ej aktuell för nu)

//Assist Roles
GRGA	GRG ASS

//Pilots
HPIL 	HeloPilot
JPIL 	JetPilot

//Vehicle Crew
VC		VagnsChef
CREW 	Besättning
CREW2	Besättning SJV
CREW3	Besättning ING


Switch cammo by using the parameters, they can be set before mission start.
If you want to permanently change the cammo chosen by the script change the default value in the Param.hpp file.
