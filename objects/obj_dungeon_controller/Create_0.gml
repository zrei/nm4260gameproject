/// @description Insert description here
// You can write your code in this editor

current_dungeon_room = undefined;
next_dungeon_room = undefined;
direction_of_entrance = undefined;

set_current_room = function(_dungeon_room, _direction_of_entrance, _instantaneous = false)
{	
	if (current_dungeon_room != undefined)
		current_dungeon_room.end_room();
	
	current_dungeon_room = _dungeon_room;
	
	obj_player.move_instanteneously(_dungeon_room.get_starting_position(_direction_of_entrance), _direction_of_entrance);
	obj_camera_controller.move_camera_to_position(_dungeon_room.get_top_left_corner_of_room(), _instantaneous);

	obj_transition_controller.play_current_transition();
}

start_current_room = function()
{
	if (current_dungeon_room == undefined)
		return;
	
	current_dungeon_room.start_room();
}

on_enemy_spawn = function()
{
	if (current_dungeon_room == undefined)
		return;
	
	current_dungeon_room.update_active_enemy_count(1);
}

on_enemy_die = function()
{
	if (current_dungeon_room == undefined)
		return;
		
	current_dungeon_room.update_active_enemy_count(-1);
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

on_transition_to_next_room = function(_dungeon_room_instance, _direction_of_entrance)
{
	next_dungeon_room = _dungeon_room_instance;
	direction_of_entrance = _direction_of_entrance;
}

on_full_black_screen = function()
{
	if (next_dungeon_room == undefined)
	{
		if (global.player_is_dead)
		{
			global.player_is_dead = false;
			room_restart();
		}
		else
		{
			global.on_complete_level_event.invoke();
			room_goto_next();
		}
		return;
	}
	set_current_room(next_dungeon_room, direction_of_entrance, true);
	next_dungeon_room = undefined;
	direction_of_entrance = undefined;
}

on_transition_end = function()
{
	start_current_room();	
}

global.on_enemy_spawn_event.subscribe(on_enemy_spawn);
global.on_enemy_death_event.subscribe(on_enemy_die);
global.on_transition_to_next_room_event.subscribe(on_transition_to_next_room);

global.on_full_black_screen_event.subscribe(on_full_black_screen);
global.on_end_transition_event.subscribe(on_transition_end);