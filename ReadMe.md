# SGU Framework

Each playable unit needs to have a role set in their INIT field as shown below. Change "PLTC" to the respective role.
If no "Role" is assigned to a unit a regular Rifleman(SOLD) is defaulted to.

EX: **this setVariable ["Role","PLTC"];**

To use the Halojump feature place a object and name it "SGU_Flag" using the "variable name" input.

To use the Arsenal feature place a object and name it "SGU_Arsenal" using the variable name" input.

Do note if none of these are placed the mission upon startup will give error as it can't find these objects.

## Change default camo

To switch cammo use the parameters, they can be set before mission start.
If you want to permanently change the cammo chosen by the script change the default value in the Param.hpp file.

By Trox

---

## Roles

### Command Roles

- PLTC
- GRPC (GRT)
- GRPC2
- STFC (GRT) - (samma som GRPC)
- STFC2 - (samma som GRPC2)
- STFC3 - (Skarpskytte vapen)

### Group Roles

- SOLD (Sk.sold)
- SOLD2 (sk.sold AT4)
- SOLD3 (sk.sold RB57)
- GRT (sk.sold GRT)
- SJV
- SJV2 (SJV Lätt)
- KSP90
- KSP58
- GRG
- GRGA (GRG Ass)
- SKRP (Skarpskytt)
- FARB (Fältarbetare)
- ING (Ingenjör)
- UAV

### Pilots

- HPIL (HkpPilot)
- JPIL (JetPilot)

### Vehicle Crew

- VC (Vagn.C)
- CREW (Besättning)
- CREW2 (Besättning SJV)
- CREW3 (Besättning ING)
