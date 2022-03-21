# This is what you need to know to use these scripts.

Each playable unit should have a role set in their INIT field as shown below. Change "PC" to the respective role.
If no "Role" is assigned to a unit a regular Rifleman(SOLD) is defaulted to.
EX: **this setVariable ["Role","PLTC"];**

To use the Halojump feature place a object and name it "SGU_Flag" using the "variable name" input.
To use the Arsenal feature place a object and name it "SGU_Arsenal" using the variable name" input.
Do note if none of these are placed the mission upon startup will give error as it can't find these objects.

Switch cammo by using the parameters, they can be set before mission start.
If you want to permanently change the cammo chosen by the script change the default value in the Param.hpp file.

By 
Trox
# Roles

**Command Roles**
- PLTC
- GRPC (GRT)
- GRPC2

**Group Roles**
- SIGN (Signalist)
- SJV
- SJV2 (SJV Lätt)
- SJV3 (SJV & Skarpskytt)
- KSP90
- KSP58
- GRG
- GRT
- SOLD (Sk.sold)
- SOLD2 (sk.sold AT4)
- SOLD3 (sk.sold RB57)
- ING (Ingenjör)
- FARB (Fältarbetare)
- SKRP (Skarpskytt)
- UAV
- PRSK (Prickskytt)

**Assist Roles**
- GRGA (GRG ASS)

**Pilots**
- HPIL (HkpPilot)
- JPIL (JetPilot)

**Vehicle Crew**
- VC (Vagn.C)
- CREW (Besättning)
- CREW2 (Besättning SJV)
- CREW3 (Besättning ING)