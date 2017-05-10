/*
Filename:     hud_getImages.sqf
Author:       Relentless
Description:  Function to get images for Weapon HUD
*/
private ["_hasPainkiller","_hasBandage","_display"];
disableSerialization;

/* Variables */
_hasPainkiller  = 'ItemPainkiller' in magazines player;
_hasBandage     = 'ItemBandage' in magazines player;
_display        = uiNamespace getVariable["rlnt_rlnt_weaponhud_2_items", displayNull];

/* Delay so the display spawns first */
sleep 1;

/* Set Images */
  //Primary Weapon
    (_display displayCtrl 1200) ctrlSetText(gettext(configFile >> 'cfgWeapons' >> (primaryWeapon player) >> 'picture'));

  //Seccond Primary Weapon
    (_display displayCtrl 1201) ctrlSetText(gettext(configFile >> 'cfgWeapons' >> dayz_onBack >> 'picture'));

  //Handgun Weapon
    {
      if ((getNumber (configFile >> 'cfgWeapons' >> _x >> 'Type')) == 2) exitWith {
        (_display displayCtrl 1202) ctrlSetText(getText(configFile >> 'cfgWeapons' >> _x >> 'picture'));
      };
    } forEach weapons player;

  //Painkiller
    if (_hasPainkiller) then {
      (_display displayCtrl 1203) ctrlSetText(gettext(configFile >> 'cfgMagazines' >> 'itempainkiller' >> 'picture'));
    };

  //Bandage
    if (_hasBandage) then {
      (_display displayCtrl 1204) ctrlSetText(gettext(configFile >> 'cfgMagazines' >> 'itembandage' >> 'picture'));
    };
