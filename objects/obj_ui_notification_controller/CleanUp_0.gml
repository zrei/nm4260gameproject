/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(notification_objects);


global.on_player_pick_up_item_event.unsubscribe(on_pick_up_item);
global.on_player_change_element_event.unsubscribe(on_change_element);
global.on_player_obtain_key_event.unsubscribe(on_obtain_key);