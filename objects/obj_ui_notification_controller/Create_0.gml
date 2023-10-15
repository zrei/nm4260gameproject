/// @description Insert description here
// You can write your code in this editor

notification_objects = ds_list_create();

for (var _i = 0; _i < num_notifications; _i++)
{
	var _notif_object = instance_create_layer(0, 0, "UI", obj_notification);
	ds_list_add(notification_objects, _notif_object);
}

send_notification = function(_text)
{
	find_free_notification().set_to_move(CARDINAL_DIRECTIONS.EAST, 64 + 10, 2, convert_seconds_to_frames(0.5), _text);
}

find_free_notification = function()
{
	for (var _i = 0; _i < num_notifications; _i++)
		if (!notification_objects[| _i].check_is_active())
			return notification_objects[| _i];
}