/// @description Insert description here
// You can write your code in this editor

on_hit_by_projectile_event = new IntEvent();

// Inherit the parent event
event_inherited();

clear_obstacle = function()
{
	solid = false;
	visible = false;
	mask_index = -1;
}

reset_obstacle = function()
{
	solid = true;
	visible = true;
	mask_index = sprite_index;
}

reset_obstacle();