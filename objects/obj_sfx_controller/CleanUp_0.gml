/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(currently_playing_sounds);
global.on_pause_menu_opened_event.unsubscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.unsubscribe(on_pause_menu_closed);