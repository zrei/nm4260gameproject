// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.tileset_dimensions = 48;

global.horizontal_door_offset = 8 * global.tileset_dimensions + global.tileset_dimensions / 2;//7 * global.tileset_dimensions;
global.vertical_door_offset = 6 * global.tileset_dimensions + global.tileset_dimensions / 2;//5 * global.tileset_dimensions;
global.right_side_offset = 16 * global.tileset_dimensions + global.tileset_dimensions / 2; //16 * global.tileset_dimensions;
global.bottom_side_offset = 12 * global.tileset_dimensions + global.tileset_dimensions / 2;//12 * global.tileset_dimensions;
global.top_side_offset = global.tileset_dimensions / 2;
global.left_side_offset = global.tileset_dimensions / 2;
global.door_dimensions = 3 * global.tileset_dimensions;

global.north_wall_offset = 1 * global.tileset_dimensions;
global.west_wall_offset = 1 * global.tileset_dimensions;

global.closed_horizontal_door_sprite = spr_dungeon_door_horizontal;
global.closed_vertical_door_sprite = spr_dungeon_door_vertical;
global.open_horizontal_door_sprite = spr_dirt_horizontal;
global.open_vertical_door_sprite = spr_dirt_vertical;

global.full_horizontal_wall_dimensions = 15 * global.tileset_dimensions;
global.half_horizontal_wall_dimensions = 6 * global.tileset_dimensions;

global.full_vertical_wall_dimensions = 11 * global.tileset_dimensions;
global.half_vertical_wall_dimensions = 4 * global.tileset_dimensions;

enum DOOR_TYPE 
{
	ARENA_DOOR,
	TO_NEXT_LEVEL
}

function NextLevelDoorCreationStruct(_entrance_direction) constructor
{
	open_sprite = get_open_door_sprite(_entrance_direction);
	flip_sprite_on_unlock = _entrance_direction == CARDINAL_DIRECTIONS.NORTH;
}

function DungeonDoorCreationStruct(_entrance_direction, _connecting_room) constructor
{
	entrance_direction = _entrance_direction;
	closed_sprite = get_closed_door_sprite(entrance_direction);
	open_sprite = get_open_door_sprite(entrance_direction);
	connected_dungeon_room = _connecting_room;
	image_xscale = _entrance_direction == CARDINAL_DIRECTIONS.EAST ? -1 : 1;
	image_yscale = _entrance_direction == CARDINAL_DIRECTIONS.NORTH ? -1 : 1;
}

function DungeonRoomSideStruct(_has_door, _door_type = DOOR_TYPE.ARENA_DOOR, _connecting_room = undefined) constructor
{
	has_door = _has_door;
	door_type = _door_type;
	connecting_room = _connecting_room;
}

function DungeonRoomStruct(_position, _layer, _north_side, _south_side, _east_side, _west_side) constructor
{
	position = _position;
	layer = _layer;
	has_north_door = _north_side.has_door;
	north_side = _north_side;
	has_south_door = _south_side.has_door;
	south_side = _south_side;
	has_east_door = _east_side.has_door;
	east_side = _east_side;
	has_west_door = _west_side.has_door;
	west_side = _west_side;
}

function get_closed_door_sprite(_entrance_direction)
{
	if (_entrance_direction == CARDINAL_DIRECTIONS.NORTH || _entrance_direction == CARDINAL_DIRECTIONS.SOUTH)
		return global.closed_horizontal_door_sprite;
	else
		return global.closed_vertical_door_sprite;
}

function get_open_door_sprite(_entrance_direction)
{
	if (_entrance_direction == CARDINAL_DIRECTIONS.NORTH || _entrance_direction == CARDINAL_DIRECTIONS.SOUTH)
		return get_horizontal_dirt_sprite(room);
	else
		return get_vertical_dirt_sprite(room);
}

function get_vertical_dirt_sprite(_room_idx)
{
	switch (_room_idx)
	{
		case FIRST_LEVEL:
			return spr_level_1_dirt_vertical;
		case SECOND_LEVEL:
			return spr_level_2_dirt_vertical;
		case THIRD_LEVEL:
		case BOSS_LEVEL:
			return spr_level_3_dirt_vertical;
	}
}

function get_horizontal_dirt_sprite(_room_idx)
{
	switch (_room_idx)
	{
		case FIRST_LEVEL:
			return spr_level_1_dirt_horizontal;
		case SECOND_LEVEL:
			return spr_level_2_dirt_horizontal;
		case THIRD_LEVEL:
		case BOSS_LEVEL:
			return spr_level_3_dirt_horizontal;
	}
}

function instantiate_walls(_room_position, _layer, _north_door, _south_door, _east_door, _west_door)
{
	// do north
	if (_north_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		instantiate_wall(_room_position.translate(global.horizontal_door_offset + global.door_dimensions, global.north_wall_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
	}
	else 
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), global.full_horizontal_wall_dimensions / 2, 1, _layer);
	}
	
	// do south
	if (_south_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.bottom_side_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		instantiate_wall(_room_position.translate(global.horizontal_door_offset + global.door_dimensions, global.bottom_side_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
	}
	else
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.bottom_side_offset), global.full_horizontal_wall_dimensions / 2, 1, _layer);
	}
	
	// do east
	if (_east_door)
	{
		instantiate_wall(_room_position.translate(global.right_side_offset, global.north_wall_offset), 1, global.half_vertical_wall_dimensions / 2, _layer);
		instantiate_wall(_room_position.translate(global.right_side_offset, global.vertical_door_offset + global.door_dimensions), 1, global.half_vertical_wall_dimensions / 2, _layer);
	}
	else
	{
		instantiate_wall(_room_position.translate(global.right_side_offset, global.north_wall_offset), 1, global.full_vertical_wall_dimensions / 2, _layer);
	}
	
	// do west
	if (_west_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), 1, global.half_vertical_wall_dimensions / 2, _layer);
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.vertical_door_offset + global.door_dimensions), 1, global.half_vertical_wall_dimensions / 2, _layer);
	}
	else
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), 1, global.full_vertical_wall_dimensions / 2, _layer);
	}
}

function instantiate_wall(_position, _xscale, _yscale, _layer)
{
	var _wall = instance_create_layer(_position.x, _position.y, _layer, obj_dungeon_wall);
	_wall.image_xscale = _xscale;
	_wall.image_yscale = _yscale;
	return _wall;
}

function instantiate_door(_position, _layer, _door_type, _entrance_direction = undefined, _connecting_dungeon_room = undefined)
{
	var _door_instance = undefined;
	
	if (_door_type == DOOR_TYPE.TO_NEXT_LEVEL)
	{
		_door_instance = instance_create_layer(_position.x, _position.y, _layer, obj_next_level_door, new NextLevelDoorCreationStruct(_entrance_direction));
	}
	else 
	{
		_door_instance = instance_create_layer(_position.x, _position.y, _layer, obj_dungeon_door, new DungeonDoorCreationStruct(_entrance_direction, _connecting_dungeon_room));
	}
	
	return _door_instance;
}

function instantiate_room(_dungeon_room_struct)
{
	//instantiate_walls(_dungeon_room_struct.position, _dungeon_room_struct.layer, _dungeon_room_struct.has_north_door, _dungeon_room_struct.has_south_door, _dungeon_room_struct.has_east_door, _dungeon_room_struct.has_west_door);
	
	var _doors = [];
	
	if (_dungeon_room_struct.has_north_door)
		array_push(_doors, instantiate_door(_dungeon_room_struct.position.translate(global.horizontal_door_offset, global.top_side_offset), _dungeon_room_struct.layer, _dungeon_room_struct.north_side.door_type, CARDINAL_DIRECTIONS.NORTH, _dungeon_room_struct.north_side.connecting_room));
		
	if (_dungeon_room_struct.has_south_door)
		array_push(_doors, instantiate_door(_dungeon_room_struct.position.translate(global.horizontal_door_offset, global.bottom_side_offset), _dungeon_room_struct.layer, _dungeon_room_struct.south_side.door_type, CARDINAL_DIRECTIONS.SOUTH, _dungeon_room_struct.south_side.connecting_room));
		
	if (_dungeon_room_struct.has_east_door)
		array_push(_doors, instantiate_door(_dungeon_room_struct.position.translate(global.right_side_offset, global.vertical_door_offset), _dungeon_room_struct.layer, _dungeon_room_struct.east_side.door_type, CARDINAL_DIRECTIONS.EAST, _dungeon_room_struct.east_side.connecting_room));
		
	if (_dungeon_room_struct.has_west_door)
		array_push(_doors, instantiate_door(_dungeon_room_struct.position.translate(global.left_side_offset, global.vertical_door_offset), _dungeon_room_struct.layer, _dungeon_room_struct.west_side.door_type, CARDINAL_DIRECTIONS.WEST, _dungeon_room_struct.west_side.connecting_room));
		
	return _doors;
}

function scan_for_spawners(_dungeon_dimensions)
{
	var _spawners = [];
	
	with (obj_enemy_spawner)
	{
		if (point_in_rectangle(x, y, _dungeon_dimensions.left_bound, _dungeon_dimensions.upper_bound, _dungeon_dimensions.right_bound, _dungeon_dimensions.lower_bound))
			array_push(_spawners, self);
	}
	
	return _spawners;
}