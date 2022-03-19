/*
*	Select and give the Weapons & Ammo for unit. (Primary only).
*
*	This is done in a few steps.
*	1: Weapon selection based on Unit
*	2: Attachement selection based on Weapon
*	3: Ammo selection based on Weapon
*	
*	Requires: SFP, RHS-USAF
*
*	Parameters: 
*	Player, 
*	_role (See ReadMe)
*
*	By Trox
*/

_unit = _this select 0;

//1: Weapon
//_unit addWeapon "srifle_GM6_F";
_unit addWeapon "rhs_weap_M107";


//2: Attachements
//_unit addPrimaryWeaponItem "optic_LRPS";
_unit addPrimaryWeaponItem "rhsusf_acc_premier";
_unit addItemToBackpack "rhsusf_acc_premier_anpvs27"; // NV Sikte


//3: Ammo
_unit addPrimaryWeaponItem "ACE_10Rnd_127x99_AMAX_Mag";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_10Rnd_127x99_AMAX_Mag";};


//Put the given gun in the gunbag instantly.
[_unit, _unit] call ace_gunbag_fnc_toGunbagCallback;