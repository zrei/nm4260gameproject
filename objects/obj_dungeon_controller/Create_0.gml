/// @description Insert description here
// You can write your code in this editor

current_dungeon_room = undefined;

set_current_room = function(_dungeon_room, _direction_of_entrance, _instantaneous = false)
{
	obj_player.disable_player_controls();
	with (obj_enemy_parent)
	{
		can_act = false;
	}
	
	if (current_dungeon_room != undefined)
		current_dungeon_room.end_room();
	
	current_dungeon_room = _dungeon_room;
	
	_end_callback = function()
	{
		show_debug_message("End callback called");
		start_current_room();
		show_debug_message("Re-enable player controls");
		obj_player.enable_player_controls();
		with (obj_dungeon_door)
		{
			can_transition = true;
		}
	}
	
	// create paused black screen with appropriate start callback function
	obj_transition_controller.create_transition(global.fade_out_transition, current_dungeon_room.get_top_left_corner_of_room(), true, _end_callback);
	
	obj_player.move_instanteneously(_dungeon_room.get_starting_position(_direction_of_entrance), _direction_of_entrance);
	obj_camera_controller.move_camera_to_position(_dungeon_room.get_top_left_corner_of_room(), _instantaneous);

	// start black screen transition with appropriate end callback function
	obj_transition_controller.play_current_transition();
	
}

start_current_room = function()
{
	if (current_dungeon_room == undefined)
		return;
	
	current_dungeon_room.start_room()
}

update_current_room_active_enemy_count = function(_active_number)
{
	if (current_dungeon_room == undefined)
		return;

	current_dungeon_room.update_active_enemy_count(_active_number);
}

check_current_room_is_active = function()
{
	return current_dungeon_room.check_is_active();
}

check_is_current_room = function(_dungeon_room_instance)
{
	return current_dungeon_room == _dungeon_room_instance;
}

get_current_room_top_left_corner = function()
{
	if (current_dungeon_room == undefined)
		return;

	return current_dungeon_room.get_top_left_corner_of_room();
}

debug_kill_all_enemies = function()
{
	with (obj_enemy_parent)
		die();
}