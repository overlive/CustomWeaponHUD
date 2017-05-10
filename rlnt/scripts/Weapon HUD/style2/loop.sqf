/*
Filename:     loop.sqf
Author:       Relentless
Description:  Only gets executed when DZE_TwoPrimaries = 2
*/
private ["_i"];
sleep 5;

/* Perform loop while weaponHUD is activated */
while {DZE_weaponHUD} do {
  [] spawn fnc_hud_updateImages;
  for "_i" from 1 to 6 step 1 do {
    if (DZE_weaponHUD) then {
      sleep 0.5;
    };
  };
};
