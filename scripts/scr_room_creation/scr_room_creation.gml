// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.tileset_dimensions = 48;

global.horizontal_door_offset = 7 * global.tileset_dimensions;
global.vertical_door_offset = 5 * global.tileset_dimensions;
global.right_side_offset = 16 * global.tileset_dimensions;
global.bottom_side_offset = 12 * global.tileset_dimensions;
global.door_dimensions = 3 * global.tileset_dimensions;

global.north_wall_offset = 1 * global.tileset_dimensions;
global.west_wall_offset = 1 * global.tileset_dimensions;

global.horizontal_door_sprite = spr_dungeon_door_horizontal;
global.vertical_door_sprite = spr_dungeon_door_vertical;

global.full_horizontal_wall_dimensions = 15 * global.tileset_dimensions;
global.half_horizontal_wall_dimensions = 6 * global.tileset_dimensions;

global.full_vertical_wall_dimensions = 11 * global.tileset_dimensions;
global.half_vertical_wall_dimensions = 4 * global.tileset_dimensions;

enum DOOR_TYPE 
{
	ARENA_DOOR,
	TO_NEXT_LEVEL
}

function DungeonDoorStruct(_entrance_direction, _connecting_room) constructor
{
	entrance_direction = _entrance_direction;
	sprite_index = get_door_sprite(entrance_direction);
	connected_dungeon_room = _connecting_room;
}

function get_door_sprite(_entrance_direction)
{
	if (_entrance_direction == CARDINAL_DIRECTIONS.NORTH || _entrance_direction == CARDINAL_DIRECTIONS.SOUTH)
		return global.horizontal_door_sprite;
	else
		return global.vertical_door_sprite;
}

function instantiate_walls(_room_position, _layer, _north_door, _south_door, _east_door, _west_door)
{
	// do north
	if (_north_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		instantiate_wall(_room_position.translate(global.horizontal_door_offset + global.door_dimensions, global.north_wall_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		/*
		var _north_offset_x_1 = 1 * global.tileset_dimensions;
		var _north_offset_y_1 = 1 * global.tileset_dimensions;
		var _north_wall_1 = instance_create_layer(_position.x + _north_offset_x_1, _position.y + _north_offset_y_1, _layer, obj_dungeon_wall);
		_north_wall_1.image_xscale = 7 * global.tileset_dimensions / 2;
		
		var _north_offset_x_2 = 9 * global.tileset_dimensions;
		var _north_offset_y_2 = 1 * global.tileset_dimensions;
		var _north_wall_2 = instance_create_layer(_position.x + _north_offset_x_2, _position.y + _north_offset_y_2, _layer, obj_dungeon_wall);
		_north_wall_2.image_xscale = 7 * global.tileset_dimensions / 2;*/
	}
	else 
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), global.full_horizontal_wall_dimensions / 2, 1, _layer);
		/*
		var _north_offset_x = 1 * global.tileset_dimensions;
		var _north_offset_y = 1 * global.tileset_dimensions;
		var _north_wall = instance_create_layer(_position.x + _north_offset_x, _position.y + _north_offset_y, _layer, obj_dungeon_wall);
		_north_wall.image_xscale = 15 * global.tileset_dimensions / 2;*/
	}
	
	// do south
	if (_south_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.bottom_side_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		instantiate_wall(_room_position.translate(global.horizontal_door_offset + global.door_dimensions, global.bottom_side_offset), global.half_horizontal_wall_dimensions / 2, 1, _layer);
		
		/*var _south_offset_x_1 = 1 * global.tileset_dimensions;
		var _south_offset_y_1 = 12 * global.tileset_dimensions;
		var _south_wall_1 = instance_create_layer(_position.x + _south_offset_x_1, _position.y + _south_offset_y_1, _layer, obj_dungeon_wall);
		_south_wall_1.image_xscale = 7 * global.tileset_dimensions / 2;
		
		var _south_offset_x_2 = 9 * global.tileset_dimensions;
		var _south_offset_y_2 = 12 * global.tileset_dimensions;
		var _south_wall_2 = instance_create_layer(_position.x + _south_offset_x_2, _position.y + _south_offset_y_2, _layer, obj_dungeon_wall);
		_south_wall_2.image_xscale = 7 * global.tileset_dimensions;*/
	}
	else
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.bottom_side_offset), global.full_horizontal_wall_dimensions / 2, 1, _layer);
		/*var _south_offset_x = 1 * global.tileset_dimensions;
		var _south_offset_y = 12 * global.tileset_dimensions;
		var _south_wall = instance_create_layer(_position.x + _south_offset_x, _position.y + _south_offset_y, _layer, obj_dungeon_wall);
		_south_wall.image_xscale = 15 * global.tileset_dimensions / 2;*/
	}
	
	// do east
	if (_east_door)
	{
		instantiate_wall(_room_position.translate(global.right_side_offset, global.north_wall_offset), 1, global.half_vertical_wall_dimensions / 2, _layer);
		instantiate_wall(_room_position.translate(global.right_side_offset, global.vertical_door_offset + global.door_dimensions), 1, global.half_vertical_wall_dimensions / 2, _layer);
		/*
		var _east_offset_x_1 = 16 * global.tileset_dimensions;
		var _east_offset_y_1 = 1 * global.tileset_dimensions;
		var _east_wall_1 = instance_create_layer(_position.x + _east_offset_x_1, _position.y + _east_offset_y_1, _layer, obj_dungeon_wall);
		_east_wall_1.image_yscale = 5 * global.tileset_dimensions / 2;
		
		var _east_offset_x_2 = 16 * global.tileset_dimensions;
		var _east_offset_y_2 = 7 * global.tileset_dimensions;
		var _east_wall_2 = instance_create_layer(_position.x + _east_offset_x_2, _position.y + _east_offset_y_2, _layer, obj_dungeon_wall);
		_east_wall_2.image_yscale = 5 * global.tileset_dimensions / 2;
		*/
	}
	else
	{
		instantiate_wall(_room_position.translate(global.right_side_offset, global.north_wall_offset), 1, global.full_vertical_wall_dimensions / 2, _layer);
		/*var _east_offset_x = 16 * global.tileset_dimensions;
		var _east_offset_y = 1 * global.tileset_dimensions;
		var _east_wall = instance_create_layer(_position.x + _east_offset_x, _position.y + _east_offset_y, _layer, obj_dungeon_wall);
		_east_wall.image_yscale = 11 * global.tileset_dimensions / 2;*/
	}
	
	// do west
	if (_west_door)
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), 1, global.half_vertical_wall_dimensions / 2, _layer);
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.vertical_door_offset + global.door_dimensions), 1, global.half_vertical_wall_dimensions / 2, _layer);
		/*
		var _west_offset_x_1 = 1 * global.tileset_dimensions;
		var _west_offset_y_1 = 1 * global.tileset_dimensions;
		var _west_wall_1 = instance_create_layer(_position.x + _west_offset_x_1, _position.y + _west_offset_y_1, _layer, obj_dungeon_wall);
		_west_wall_1.image_yscale = 5 * global.tileset_dimensions / 2;
	
		var _west_offset_x_2 = 1 * global.tileset_dimensions;
		var _west_offset_y_2 = 7 * global.tileset_dimensions;
		var _west_wall_2 = instance_create_layer(_position.x + _west_offset_x_2, _position.y + _west_offset_y_2, _layer, obj_dungeon_wall);
		_west_wall_2.image_yscale = 5 * global.tileset_dimensions / 2;*/
	}
	else
	{
		instantiate_wall(_room_position.translate(global.west_wall_offset, global.north_wall_offset), 1, global.full_vertical_wall_dimensions / 2, _layer);
		/*
		var _west_offset_x = 1 * global.tileset_dimensions;
		var _west_offset_y = 1 * global.tileset_dimensions;
		var _west_wall = instance_create_layer(_position.x + _west_offset_x, _position.y + _west_offset_y, _layer, obj_dungeon_wall);
		_west_wall.image_yscale = 11 * global.tileset_dimensions / 2;*/
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
	
	if (door_type == DOOR_TYPE.TO_NEXT_LEVEL)
	{
		_door_instance = instance_create_layer(_position.x, _position.y, _layer, obj_next_level_door);
	}
	else 
	{
		_door_instance = instance_create_layer(_position.x, _position.y, _layer, obj_dungeon_door, new DungeonDoorStruct(_entrance_direction, _connecting_dungeon_room));
	}
	
	return _door_instance;
}