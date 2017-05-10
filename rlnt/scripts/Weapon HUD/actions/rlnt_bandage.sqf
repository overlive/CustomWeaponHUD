/*
Filename:				bandage.sqf
Author:					Dayz Epoch Mod - Team
Modifications:	Relentless
Description:		Custom bandage script to avoid Client errors
*/
private ["_unit","_item","_hasItem","_animState","_started","_finished","_isMedic","_id"];

/* Variables */
_unit 		= player;
_item 		= "ItemBandage";
_hasItem	= _item in magazines player;

/* Avoid animation if player doesn't have the item */
if !(_hasItem) exitWith {};

/* Take item from player */
player removeMagazine _item;
closedialog 0;

/* Reset self_action */
call fnc_usec_medic_removeActions;
r_action = false;

/* Perform animation */
if (vehicle player == player) then {
	player playActionNow "Medic";
};

/* Reset variables */
r_interrupt = false;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;
[player,"bandage",0,false] call dayz_zombieSpeak;

/* Error Loop */
while {r_doLoop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
		_started = true;
	};
	if (_started and !_isMedic) then {
		r_doLoop = false;
		_finished = true;
	};
	if (r_interrupt) then {
		r_doLoop = false;
	};
	if (vehicle player != player) then {
		uiSleep 3;
		r_doLoop = false;
		_finished = true;
	};
	uiSleep 0.1;
};
r_doLoop = false;

/* Humanity reward when healing another player */
if (_finished) then {
	if ((_unit == player) or (vehicle player != player)) then {
		_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medBandaged.sqf";
		if (_item=="ItemSepsisBandage") then {
			r_player_Sepsis = [false, 0];
			player setVariable ["USEC_Sepsis", false, true];
			player setVariable ["sepsisStarted", nil];
		};
	} else {
		PVDZ_send = [_unit,"Bandage",[_unit,player]];
		publicVariableServer "PVDZ_send";
		[20,0] call player_humanityChange;
	};
} else {
	r_interrupt = false;
	[objNull, player, rSwitchMove,""] call RE;
	player playActionNow "stop";
	player addMagazine _item;
};
