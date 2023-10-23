/// @description Insert description here
// You can write your code in this editor

notification_objects = ds_list_create();

for (var _i = 0; _i < num_notifications; _i++)
{
	var _notif_object = instance_create_layer(0, 0, "HUD", obj_ui_notification);
	ds_list_add(notification_objects, _notif_object);
}

send_notification = function(_text)
{
	find_free_notification().set_to_move(CARDINAL_DIRECTIONS.EAST, 64 + 10, 2, convert_seconds_to_frames(0.5), _text);
}

find_free_notification = function()
{
	for (var _i = 0; _i < num_notifications; _i++)
		//if (!notification_objects[| _i].check_is_active())
			return notification_objects[| _i];
}

on_obtain_key = function()
{
	send_notification("Obtained key!");	
}

on_pick_up_item = function(_item_name)
{
	send_notification("Picked up " + _item_name);
}

on_change_element = function(_element)
{
	send_notification("Element changed to " + get_element_string_representation(_element));
}

global.on_player_pick_up_item_event.subscribe(on_pick_up_item);
global.on_player_change_element_event.subscribe(on_change_element);
global.on_player_obtain_key_event.subscribe(on_obtain_key);