/*
Filename:     weaponhud_init.sqf
Author:       Relentless
Description:  Checks for style of the Weapon HUD
*/
if (DZE_weaponHUD) then {
  switch (DZE_TwoPrimaries) do {
    case 0: {
      //Style 0 == 1 Primary Weapon == 4 Boxes
      execVM "rlnt\scripts\Weapon HUD\style1\hud_bg.sqf";
      execVM "rlnt\scripts\Weapon HUD\style1\hud_items.sqf";
      execVM "rlnt\scripts\Weapon HUD\style1\loop.sqf";
    };
    case 1: {
      //Style 1 == 1 Primary Weapon == 4 Boxes
      execVM "rlnt\scripts\Weapon HUD\style1\hud_bg.sqf";
      execVM "rlnt\scripts\Weapon HUD\style1\hud_items.sqf";
      execVM "rlnt\scripts\Weapon HUD\style1\loop.sqf";
    };
    case 2: {
      //Style 2 == 2 Primary Weapon == 5 Boxes
      execVM "rlnt\scripts\Weapon HUD\style2\hud_bg.sqf";
      execVM "rlnt\scripts\Weapon HUD\style2\hud_items.sqf";
      execVM "rlnt\scripts\Weapon HUD\style2\loop.sqf";
    };
  };
};
