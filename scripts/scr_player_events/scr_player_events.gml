// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// one argument, new health value
global.on_player_change_health_event = new CustomEvent();

// one argument, element changed to
global.on_player_change_element_event = new CustomEvent();

// no argument
global.on_player_death_event = new CustomEvent();
global.on_player_obtain_key_event = new CustomEvent();

// one argument, notification text for now
global.on_player_pick_up_item_event = new CustomEvent();