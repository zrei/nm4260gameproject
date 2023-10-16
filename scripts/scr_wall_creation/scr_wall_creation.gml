// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.tileset_dimensions = 48;

function instantiate_walls(_position, _layer, _north_door, _south_door, _east_door, _west_door)
{
	// do north
	if (_north_door)
	{
		var _north_offset_x_1 = 1 * global.tileset_dimensions;
		var _north_offset_y_1 = 1 * global.tileset_dimensions;
		var _north_wall_1 = instance_create_layer(_position.x + _north_offset_x_1, _position.y + _north_offset_y_1, _layer, obj_dungeon_wall);
		_north_wall_1.image_xscale = 7 * global.tileset_dimensions / 2;
		
		var _north_offset_x_2 = 9 * global.tileset_dimensions;
		var _north_offset_y_2 = 1 * global.tileset_dimensions;
		var _north_wall_2 = instance_create_layer(_position.x + _north_offset_x_2, _position.y + _north_offset_y_2, _layer, obj_dungeon_wall);
		_north_wall_2.image_xscale = 7 * global.tileset_dimensions / 2;
	}
	else 
	{
		var _north_offset_x = 1 * global.tileset_dimensions;
		var _north_offset_y = 1 * global.tileset_dimensions;
		var _north_wall = instance_create_layer(_position.x + _north_offset_x, _position.y + _north_offset_y, _layer, obj_dungeon_wall);
		_north_wall.image_xscale = 15 * global.tileset_dimensions / 2;
	}
	
	// do south
	if (_south_door)
	{
		var _south_offset_x_1 = 1 * global.tileset_dimensions;
		var _south_offset_y_1 = 12 * global.tileset_dimensions;
		var _south_wall_1 = instance_create_layer(_position.x + _south_offset_x_1, _position.y + _south_offset_y_1, _layer, obj_dungeon_wall);
		_south_wall_1.image_xscale = 7 * global.tileset_dimensions / 2;
		
		var _south_offset_x_2 = 9 * global.tileset_dimensions;
		var _south_offset_y_2 = 12 * global.tileset_dimensions;
		var _south_wall_2 = instance_create_layer(_position.x + _south_offset_x_2, _position.y + _south_offset_y_2, _layer, obj_dungeon_wall);
		_south_wall_2.image_xscale = 7 * global.tileset_dimensions;
	}
	else
	{
		var _south_offset_x = 1 * global.tileset_dimensions;
		var _south_offset_y = 12 * global.tileset_dimensions;
		var _south_wall = instance_create_layer(_position.x + _south_offset_x, _position.y + _south_offset_y, _layer, obj_dungeon_wall);
		_south_wall.image_xscale = 15 * global.tileset_dimensions / 2;
	}
	
	// do east
	if (_east_door)
	{
		var _east_offset_x_1 = 16 * global.tileset_dimensions;
		var _east_offset_y_1 = 1 * global.tileset_dimensions;
		var _east_wall_1 = instance_create_layer(_position.x + _east_offset_x_1, _position.y + _east_offset_y_1, _layer, obj_dungeon_wall);
		_east_wall_1.image_yscale = 5 * global.tileset_dimensions / 2;
		
		var _east_offset_x_2 = 16 * global.tileset_dimensions;
		var _east_offset_y_2 = 7 * global.tileset_dimensions;
		var _east_wall_2 = instance_create_layer(_position.x + _east_offset_x_2, _position.y + _east_offset_y_2, _layer, obj_dungeon_wall);
		_east_wall_2.image_yscale = 5 * global.tileset_dimensions / 2;
	}
	else
	{
		var _east_offset_x = 16 * global.tileset_dimensions;
		var _east_offset_y = 1 * global.tileset_dimensions;
		var _east_wall = instance_create_layer(_position.x + _east_offset_x, _position.y + _east_offset_y, _layer, obj_dungeon_wall);
		_east_wall.image_yscale = 11 * global.tileset_dimensions / 2;
	}
	
	// do west
	if (_west_door)
	{
		var _west_offset_x_1 = 1 * global.tileset_dimensions;
		var _west_offset_y_1 = 1 * global.tileset_dimensions;
		var _west_wall_1 = instance_create_layer(_position.x + _west_offset_x_1, _position.y + _west_offset_y_1, _layer, obj_dungeon_wall);
		_west_wall_1.image_yscale = 5 * global.tileset_dimensions / 2;
	
		var _west_offset_x_2 = 1 * global.tileset_dimensions;
		var _west_offset_y_2 = 7 * global.tileset_dimensions;
		var _west_wall_2 = instance_create_layer(_position.x + _west_offset_x_2, _position.y + _west_offset_y_2, _layer, obj_dungeon_wall);
		_west_wall_2.image_yscale = 5 * global.tileset_dimensions / 2;
	}
	else
	{
		var _west_offset_x = 1 * global.tileset_dimensions;
		var _west_offset_y = 1 * global.tileset_dimensions;
		var _west_wall = instance_create_layer(_position.x + _west_offset_x, _position.y + _west_offset_y, _layer, obj_dungeon_wall);
		_west_wall.image_yscale = 11 * global.tileset_dimensions / 2;
	}
}