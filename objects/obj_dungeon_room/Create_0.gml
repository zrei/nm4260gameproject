/// @description Initialise state
// You can write your code in this editor


curr_state = ROOM_STATE.IDLE;
num_doors = array_length(doors);
num_spawners = array_length(spawners);
num_active_enemies = 0;
is_arena = false;

dungeon_dimensions = new DungeonRoomDimensions(x, y, length, width);

update_active_enemy_count = function(_update_amount)
{
	num_active_enemies += _update_amount;
	if (curr_state == ROOM_STATE.ACTIVE && num_active_enemies <= 0)
		end_room();
}

start_room = function()
{
	if (curr_state != ROOM_STATE.IDLE)
		return;
	
	if (is_arena)
		for (var _i = 0; _i < num_doors; _i++)
			doors[_i].lock();
	
	for (var _i = 0; _i < num_spawners; _i++)
		spawners[_i].start_spawning();
	
	curr_state = ROOM_STATE.ACTIVE;
	with (obj_enemy_parent)
	{
		can_act = true;
	}
}

end_room = function()
{
	if (curr_state != ROOM_STATE.ACTIVE)
		return;
		
	with (obj_enemy_parent)
	{
		despawn();	
	}
	
	if (is_arena)
		for (var _i = 0; _i < num_doors; _i++)
			doors[_i].unlock();
	
	if (is_arena)
		curr_state = ROOM_STATE.COMPLETED;
	else
		curr_state = ROOM_STATE.IDLE;
		
	num_active_enemies = 0;
}

get_starting_position = function(_entrance_direction)
{
	return dungeon_dimensions.get_starting_position(_entrance_direction);
}

get_top_left_corner_of_room = function()
{
	return dungeon_dimensions.top_left_corner;	
}

check_is_active = function() 
{
	return curr_state == ROOM_STATE.ACTIVE;
}




