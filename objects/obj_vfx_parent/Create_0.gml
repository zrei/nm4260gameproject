/// @description Insert description here
// You can write your code in this editor
on_parent_destroy = function()
{
	show_debug_message("On parent destroy");
	instance_destroy(self);
}

on_parent_change_face = function(_new_offset)
{
	offset_from_parent = _new_offset;	
}

if (destroy_with_parent)
	parent.on_destroy_event.subscribe(on_parent_destroy);
	
if (!stationary)
	parent.on_change_face_event.subscribe(on_parent_change_face);

pause_animation = function()
{
	image_speed = 0;
}

unpause_animation = function()
{
	image_speed = 1;
}

global.on_pause_menu_opened_event.subscribe(pause_animation);
global.on_pause_menu_closed_event.subscribe(unpause_animation);
global.on_end_transition_event.subscribe(unpause_animation);
global.on_player_death_event.subscribe(pause_animation);