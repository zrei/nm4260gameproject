/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(notification_objects);
ds_list_destroy(queued_notifications);

global.on_player_pick_up_item_event.unsubscribe(on_pick_up_item);
global.on_player_change_element_event.unsubscribe(on_change_element);
global.on_player_obtain_key_event.unsubscribe(on_obtain_key);
global.on_debug_send_notif_event.unsubscribe(debug_send_notif);
global.on_decoy_crystal_activated_event.unsubscribe(on_decoy_crystal_activated);