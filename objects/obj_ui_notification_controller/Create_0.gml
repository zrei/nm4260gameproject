/// @description Insert description here
// You can write your code in this editor

notification_objects = ds_list_create();
queued_notifications = ds_list_create();

on_notification_finish = function()
{
	if (ds_list_size(queued_notifications) > 0)
	{
		var _notif_struct = queued_notifications[| 0];
		send_notification(_notif_struct.str, _notif_struct.spr, _notif_struct.img_xscale, _notif_struct.img_yscale);
		ds_list_delete(queued_notifications, 0);	
	}
}

send_notification = function(_text, _spr, _spr_xscale = 1, _spr_yscale = 1)
{
	var _free_notif = find_free_notification();
	if (_free_notif == undefined)
	{
		queue_notifications(new NotificationStruct(_spr, _text, _spr_xscale, _spr_yscale));
		return;
	}
	move_active_notifications_up();
	_free_notif.set_to_move(CARDINAL_DIRECTIONS.EAST, move_distance, move_speed, solid_time, fade_time, _text, _spr, _spr_xscale, _spr_yscale);
}

find_free_notification = function()
{
	for (var _i = 0; _i < num_notifications; _i++)
		if (!notification_objects[| _i].check_is_active())
			return notification_objects[| _i];
}

move_active_notifications_up = function()
{
	for (var _i = 0; _i < num_notifications; _i++)
		if (notification_objects[| _i].check_is_active())
			notification_objects[| _i].move_up(move_up_distance, move_up_speed);
}

queue_notifications = function(_notif_struct)
{
	ds_list_add(queued_notifications, _notif_struct);
}

on_obtain_key = function()
{
	send_notification("Obtained key!", spr_key_no_shadow, 0.5, 0.5);	
}

on_pick_up_item = function(_heal_amount)
{
	send_notification("Healed " + string(_heal_amount) + " HP", spr_egg, 0.5, 0.5);
}

on_decoy_crystal_activated = function()
{
	send_notification("Trap activated", spr_fake_element_swapper, 0.5, 0.5);	
}

on_change_element = function(_element)
{
	var _spr;
	switch (_element)
	{
		case SKILL_ELEMENTS.FIRE:
			_spr = spr_element_fire;
			break;
		case SKILL_ELEMENTS.WATER:
			_spr = spr_element_water;
			break;
		case SKILL_ELEMENTS.GRASS:
			_spr = spr_element_grass;
			break;
	}
	send_notification("Element changed to " + get_element_string_representation(_element), _spr);
}

for (var _i = 0; _i < num_notifications; _i++)
{
	var _notif_object = instance_create_layer(0, 0, "HUD", obj_ui_notification);
	_notif_object.on_reset_event.subscribe(on_notification_finish);
	ds_list_add(notification_objects, _notif_object);
}

debug_send_notif = function()
{
	send_notification("test", spr_player_front_facing, 0.2, 0.2);
}

global.on_player_pick_up_item_event.subscribe(on_pick_up_item);
global.on_player_change_element_event.subscribe(on_change_element);
global.on_player_obtain_key_event.subscribe(on_obtain_key);
global.on_debug_send_notif_event.subscribe(debug_send_notif);
global.on_decoy_crystal_activated_event.subscribe(on_decoy_crystal_activated);