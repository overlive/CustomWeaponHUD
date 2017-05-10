/*
Filename:     hud_bg.sqf
Author:       Relentless
Description:  Only gets executed when DZE_TwoPrimaries = 2
*/
private ["_layer"];
disableSerialization;

/* Variables */
_layer = 1300;

/* Create Dialog / Weapon HUD */
_layer cutRsc ["rlnt_weaponhud_2_bg","PLAIN",1];
