/// @description Initialise state
// You can write your code in this editor
#macro START_ROOM_EVENT 0
#macro UPDATE_ROOM_EVENT 1
#macro END_ROOM_EVENT 2

curr_state = ROOM_STATE.IDLE;
num_doors = array_length(doors);
num_spawners = array_length(spawners);
num_active_enemies = 0;

curr_update_amount = 0;
dungeon_dimensions = new DungeonRoomDimensions(x, y, global.width, global.height);

update_active_enemy_count = function(_update_amount)
{
	curr_update_amount = _update_amount;
	event_user(UPDATE_ROOM_EVENT);
}

start_room = function()
{
	event_user(START_ROOM_EVENT);
}

end_room = function()
{
	event_user(END_ROOM_EVENT);
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

start_spawners = function()
{
	for (var _i = 0; _i < num_spawners; _i++)
		spawners[_i].start_spawning();
}

enable_enemies = function()
{
	with (obj_enemy_parent)
		can_act = true;
}

instantiate_walls(new Vector2(x, y), layer, north_door, south_door, east_door, west_door);