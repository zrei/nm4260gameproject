/// @description Insert description here
// You can write your code in this editor

on_pause_menu_opened = function()
{
	instance_deactivate_layer(global.hud_layer);
}

on_pause_menu_closed = function()
{
	instance_activate_layer(global.hud_layer);
}

global.on_pause_menu_opened_event.subscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.subscribe(on_pause_menu_closed);