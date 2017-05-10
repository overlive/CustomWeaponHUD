# [EPOCH 1.0.6+] Custom Weapon HUD
A nice and clean script that creates a weapon HUD with hotkeys for DayZ!
There are multiple versions in case you activated two primary weapons on your server.

* Tested on Epoch 1.0.6+, OverWatch 0.25 and Overpoch with these two mod versions!
* Supports all maps!
* Install, start the server, done!
* Script automatically scans if you activated two primary weapons!


**[>> Download <<] (https://github.com/DAmNRelentless/CustomWeaponHUD/archive/master.zip)**
**[>> Forum-Post <<] (https://epochmod.com/forum/topic/43838-release-custom-weapon-hud-106/)**


Important information:
All files that were edited for that script are provided in the download. That means if you have a non edited 1.0.6.1 server you can replace all the files, but also read the instructions for the non-edited server and the installation is done.
If you have edited files already, make sure to read the corresponding install instruction. There is one for non-edited and edited server!


# Non-edited server:
Do not use this if you already edited files on your server!!!

1. Drop the folder "dayz_code" (from the download) in your mission root folder (the one with init.sqf and description.ext).

2. Drop the folder "rlnt" (from the download) in your mission root folder.

3. Drop the "init.sqf" and "description.ext" (from the download) in your mission root folder and replace them.

For people who are not using infiniteStore aka infiStar, go to step 5! If you use this tool, perform step 4.

4. In AHconfig.sqf, add: 7000,7001,7002,7003 to the "_ALLOWED_Dialogs". Make sure there is no "," behind the last number! If you play as infiStar admin as a normal player, you should probably change the key configuration of the admintool because the hotkeys forthe weapon HUD and the hotkeys for infistar will conflict. For this, open your AT.sqf and find these lines:
```sqf
if(_key == 0x05)then{call admin_fly_up;};
if(_key == 0x06)then{call admin_tpdirection;};
```
I chose the keys 8 and 9 for these functions so replace it with:
```sqf
if(_key == 0x09)then{call admin_fly_up;};
if(_key == 0x0A)then{call admin_tpdirection;};
```
Now, search these lines:
```sqf
adminadd = adminadd + ["  4 - Fly Up","","0","1","0","0",[]];
adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
```
And replace them with:
```sqf
adminadd = adminadd + ["  8 - Fly Up","","0","1","0","0",[]];
adminadd = adminadd + ["  9 - TP LookingDirection","","0","1","0","0",[]];
```
You have to perform this step for all admins you have. Just use the notepad search function for "Fly Up" and "TP LookingDirection".

5. That's all. You are done! Have fun with this script. :)


# Edited server:
Use this instruction when you edited your server already!!!

These steps are a little bit harder because I tried to keep it noob-friendly. If you have customized files, you can skip many steps but that's also written above each step so chill down and read everything carefully!


1. In "mission\init.sqf", find:
```sqf
DZE_selfTransfuse_Values = [12000,15,120];
```
Below this line, add:
```sqf
DZE_TwoPrimaries = 2;	//Copy this only if you don't have it yet
DZE_weaponHUD = true;	/*		RLNT - WeaponHUD		*/
```

2. In "mission\init.sqf", find:
```sqf
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
```
Below this line, add:
```sqf
call compile preprocessFileLineNumbers "dayz_code\init\compiles.sqf";
call compile preprocessFileLineNumbers "rlnt\client\init\compiles.sqf";		/*		RLNT - Relentless		*/
```
If you already have a custom compiles.sqf, only add the seccond line and merge the content of the first file into your custom compiles.sqf!

3. In "mission\init.sqf", find:
```sqf
if (isServer) then {
	if (dayz_POIs && (toLower worldName == "chernarus")) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";};
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
	execVM "\z\addons\dayz_server\traders\chernarus11.sqf"; //Add trader agents

	//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
	if (dayz_infectiousWaterholes && (toLower worldName == "chernarus")) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};

	// Lootable objects from CfgTownGeneratorDefault.hpp
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
};
```
Below this codeblock, add:
```sqf
if (!isServer) then {
//RLNT - Relentless
	execVM "rlnt\scripts\Weapon HUD\weaponhud_init.sqf";		/*		RLNT - WeaponHUD		*/
};
```

4. In "mission\description.ext", find:
```sqf
#include "\z\addons\dayz_code\gui\description.hpp"
```
Replace this line with:
```sqf
#include "dayz_code\gui\description.hpp"
#include "rlnt\dialogs\rlnt_defines.hpp"			/*		RLNT - WeaponHUD		*/
class RscTitles {
	#include "rlnt\dialogs\rlnt_weaponhud.hpp"		/*		RLNT - WeaponHUD		*/
	class wm_disp {
		idd = -1;
		onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class wm_text2 {
				idc = 1;
				x = safeZoneX+0.027;
				y = safeZoneY+safeZoneH-0.16;
				w = 0.151*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "#24FFFFFF";
					align = "left";
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
};

```
If you already have a custom description.hpp, make sure to remove the RscTitles-Class (the new Rsc-Titles is now in your description.ext) from it and merge it into this new custom description.hpp.

5. Drop the folder "rlnt" (from the download) in your mission root folder.

6. Drop the folder "dayz_code" (from the download) in your mission root folder (make sure that you don't replace any of your already existing custom files if you have any!).

7. If you already have a custom compiles.sqf or keyboard.sqf, go to the dayz_code folder (from the download) and look at the changes I made in those files and merge them into your own custom files.

8. If you use infiniteStore aka infiStar: In AHconfig.sqf, add: 7000,7001,7002,7003 to the "_ALLOWED_Dialogs". Make sure there is no "," behind the last number! If you play as infiStar admin as a normal player, you should probably change the key configuration of the admintool because the hotkeys forthe weapon HUD and the hotkeys for infistar will conflict. For this, open your AT.sqf and find these lines:
```sqf
if(_key == 0x05)then{call admin_fly_up;};
if(_key == 0x06)then{call admin_tpdirection;};
```
I chose the keys 8 and 9 for these functions so replace it with:
```sqf
if(_key == 0x09)then{call admin_fly_up;};
if(_key == 0x0A)then{call admin_tpdirection;};
```
Now, search these lines:
```sqf
adminadd = adminadd + ["  4 - Fly Up","","0","1","0","0",[]];
adminadd = adminadd + ["  5 - TP LookingDirection","","0","1","0","0",[]];
```
And replace them with:
```sqf
adminadd = adminadd + ["  8 - Fly Up","","0","1","0","0",[]];
adminadd = adminadd + ["  9 - TP LookingDirection","","0","1","0","0",[]];
```
You have to perform this step for all admins you have. Just use the notepad search function for "Fly Up" and "TP LookingDirection".

# You are done now! Make sure that all files provided in the download are located in your mission except those that you have custom already! Make sure to leave feedback on the forum link at the top and report bugs please! Have fun and thank you!
