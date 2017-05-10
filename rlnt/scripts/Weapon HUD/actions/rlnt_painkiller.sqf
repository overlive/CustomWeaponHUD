/*
Filename:				bandage.sqf
Author:					Dayz Epoch Mod - Team
Modifications:	Relentless
Description:		Custom painkiller script to avoid Client errors
*/
private ["_unit","_item","_hasItem","_id"];

/* Variables */
_unit 		= player;
_item 		= "ItemPainkiller";
_hasItem	= _item in magazines player;

/* Avoid animation if player doesn't have the item */
if !(_hasItem) exitWith {};

/* Perform animation and take item from player */
player playActionNow "Gear";
player removeMagazine _item;

/* Reset self_action */
call fnc_usec_medic_removeActions;
r_action = false;

/* Perform animation */
if (vehicle player == player) then {
	player playActionNow "Gear";
};

/* Humanity reward if giving other player painkillers */
if ((_unit == player) or (vehicle player != player)) then {
	_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";
} else {
	PVDZ_send = [_unit,_item,[_unit,player]];
	publicVariableServer "PVDZ_send";

	[20,0] call player_humanityChange;
};
