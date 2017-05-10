/*
Filename:       hud_updateImages.sqf
Author:         Relentless
Description:    Function to refresh images for Weapon HUD
*/
private ["_display","_rifle1Update","_rifle2Update","_secondaryUpdate","_painkillerUpdate","_bandageUpdate","_hasPainkiller","_hasBandage","_handgun"];
disableSerialization;

/* Variables */
_display          = uiNamespace getVariable["rlnt_weaponhud_2_items", displayNull];
_rifle1Update     = _display displayCtrl 1200;
_rifle2Update     = _display displayCtrl 1201;
_secondaryUpdate  = _display displayCtrl 1202;
_painkillerUpdate = _display displayCtrl 1203;
_bandageUpdate    = _display displayCtrl 1204;
_hasPainkiller    = 'ItemPainkiller' in magazines player;
_hasBandage       = 'ItemBandage' in magazines player;
_handgun          = "";

/* Refresh images */
//Primary Weapon
_rifle1Update ctrlSetText(gettext(configFile >> 'cfgWeapons' >> (primaryWeapon player) >> 'picture'));

//Seccond Primary Weapon
_rifle2Update ctrlSetText(gettext(configFile >> 'cfgWeapons' >> dayz_onBack >> 'picture'));

//Handgun Weapon
{
  if ((getNumber(configFile >> 'cfgWeapons' >> _x >> 'Type')) == 2) then {
    _handgun = _x;
  };
} forEach weapons player;
if (_handgun == "") then {
  _secondaryUpdate ctrlSetText("");
} else {
  _secondaryUpdate ctrlSetText(getText(configFile >> 'cfgWeapons' >> _handgun >> 'picture'));
};

//Painkiller
if (_hasPainkiller) then {
  _painkillerUpdate ctrlSetText(gettext(configFile >> 'cfgMagazines' >> 'itempainkiller' >> 'picture'));
} else {
  _painkillerUpdate ctrlSetText("");
};

//Bandage
if (_hasBandage) then {
  _bandageUpdate ctrlSetText(gettext(configFile >> 'cfgMagazines' >> 'itembandage' >> 'picture'));
} else {
  _bandageUpdate ctrlSetText("");
};
