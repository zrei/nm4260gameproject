/// @description Insert description here
// You can write your code in this editor

global.on_pause_menu_opened_event.unsubscribe(hide_hud);
global.on_pause_menu_closed_event.unsubscribe(show_hud);
global.on_player_death_event.unsubscribe(hide_hud);