/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(popups);
global.on_pause_menu_opened_event.unsubscribe(hide_popups);
global.on_pause_menu_closed_event.unsubscribe(show_all_popups);
global.on_player_death_event.unsubscribe(hide_popups);