/*
Filename:     hud_items.sqf
Author:       Relentless
Description:  Only gets executed when DZE_TwoPrimaries = 2
*/
private ["_layer"];
disableSerialization;

/* Variables */
_layer = 1301;

/* Create Dialog / Weapon HUD */
_layer cutRsc ["rlnt_weaponhud_2_items","PLAIN",1];
sleep 2;
[] spawn fnc_hud_getImages;
