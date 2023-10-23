/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

curr_state = undefined;

lock_gate = function()
{
	curr_state = DOOR_STATE.LOCKED;
	solid = true;
	visible = true;
	mask_index = sprite_index;
}

unlock_gate = function()
{
	curr_state = DOOR_STATE.UNLOCKED;
	mask_index = -1;
	solid = false;
	visible = false;
}