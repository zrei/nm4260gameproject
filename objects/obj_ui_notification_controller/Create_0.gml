/// @description Insert description here
// You can write your code in this editor

notification_objects = ds_list_create();

for (var _i = 0; _i < num_notifications; _i++)
{
	var _notif_object = instance_create_layer(0, 0, "HUD", obj_ui_notification);
	ds_list_add(notification_objects, _notif_object);
}

send_notification = function(_text, _spr, _spr_xscale = 1, _spr_yscale = 1)
{
	find_free_notification().set_to_move(CARDINAL_DIRECTIONS.EAST, 64 + 10, 2, convert_seconds_to_frames(0.5), _text, _spr, _spr_xscale, _spr_yscale);
}

find_free_notification = function()
{
	for (var _i = 0; _i < num_notifications; _i++)
		//if (!notification_objects[| _i].check_is_active())
			return notification_objects[| _i];
}

on_obtain_key = function()
{
	send_notification("Obtained key!", spr_key_no_shadow, 0.5, 0.5);	
}

on_pick_up_item = function(_heal_amount)
{
	send_notification("Healed " + string(_heal_amount) + " HP", spr_egg, 0.5, 0.5);
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

global.on_player_pick_up_item_event.subscribe(on_pick_up_item);
global.on_player_change_element_event.subscribe(on_change_element);
global.on_player_obtain_key_event.subscribe(on_obtain_key);