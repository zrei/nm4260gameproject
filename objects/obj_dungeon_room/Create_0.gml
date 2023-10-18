/// @description Initialise state
// You can write your code in this editor
#macro START_ROOM_EVENT 0
#macro UPDATE_ROOM_EVENT 1
#macro END_ROOM_EVENT 2

curr_state = ROOM_STATE.IDLE;
num_spawners = array_length(spawners);
num_active_enemies = 0;

doors = undefined;

curr_update_amount = 0;
dungeon_dimensions = new DungeonRoomDimensions(x, y, global.width, global.height);
dungeon_room = new DungeonRoomStruct(new Vector2(x, y), layer, 
	new DungeonRoomSideStruct(has_north_door, north_door_type, north_door_connecting_room),
	new DungeonRoomSideStruct(has_south_door, south_door_type, south_door_connecting_room),
	new DungeonRoomSideStruct(has_east_door, east_door_type, east_door_connecting_room),
	new DungeonRoomSideStruct(has_west_door, west_door_type, west_door_connecting_room));

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

doors = instantiate_room(dungeon_room);
num_doors = array_length(doors);
//instantiate_walls(new Vector2(x, y), layer, has_north_door, south_door, east_door, west_door);