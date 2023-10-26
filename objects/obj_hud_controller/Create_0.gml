/// @description Insert description here
// You can write your code in this editor

hide_hud = function()
{
	instance_deactivate_layer(global.hud_layer);
}

show_hud = function()
{
	instance_activate_layer(global.hud_layer);
}

global.on_pause_menu_opened_event.subscribe(hide_hud);
global.on_pause_menu_closed_event.subscribe(show_hud);
global.on_player_death_event.subscribe(hide_hud);