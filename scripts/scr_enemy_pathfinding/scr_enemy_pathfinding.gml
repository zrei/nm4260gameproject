// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.grid = undefined;
global.grid_freed = false;

function create_grid(_dungeon_room)
{
	global.grid = mp_grid_create(_dungeon_room.top_left_corner.x, _dungeon_room.top_left_corner.y, global.width / global.tileset_dimensions, global.height / global.tileset_dimensions, global.tileset_dimensions, global.tileset_dimensions);
	global.grid_freed = false;
	num_tiles_on_long_side = global.width / global.tileset_dimensions;
	num_tiles_on_short_side = global.height / global.tileset_dimensions;
	for (var _i = 0; _i < num_tiles_on_long_side; _i++)
	{
		mp_grid_add_cell(global.grid, _i, 0);
		mp_grid_add_cell(global.grid, _i, num_tiles_on_short_side - 1);
	}
	
	for (var _i = 0; _i < num_tiles_on_short_side; _i++)
	{
		mp_grid_add_cell(global.grid, 0, _i);
		mp_grid_add_cell(global.grid, num_tiles_on_long_side - 1, _i);
	}
	scan_for_obstacles(_dungeon_room);
}

function free_grid()
{
	if (global.grid_freed)
		return;

	mp_grid_destroy(global.grid);
	global.grid_freed = true;
}

// this must rely on the x and y being centered? I think?
// so if everything is 48 * 48 then the center of a tile should be 24 * 24 i.e. tile_num (starting from 0) * 
// take x - 24 and y - 24 and minus the room's x and y and divide by tileset dimensions to get tile
// CENTER THE ORIGIN FOR EVERYTHING

// to skirt around: obstacles, elementals....

function modify_grid(_instance, _dungeon_room, _callback)
{
	var _vert_tile_num = (y - global.tileset_dimensions / 2 - _dungeon_room.upper_bound) / global.tileset_dimensions;
	var _horiz_tile_num = (x - global.tileset_dimensions / 2 - _dungeon_room.left_bound) / global.tileset_dimensions;
	var _num_vert_tiles = _instance.num_tiles_in_height;
	var _num_horiz_tiles = _instance.num_tiles_in_width;
	show_debug_message("Position of center. Horizontal: " + string(_horiz_tile_num) + ", Vertical: " + string(_vert_tile_num));
	show_debug_message("Number of tiles (dimensions). Horizontal: " + string(_num_horiz_tiles) + ", Vertical: " + string(_num_vert_tiles));
	for (var _h = _vert_tile_num - floor(_num_vert_tiles / 2); _h <= _vert_tile_num; _h++)
	{
		for (var _w = _horiz_tile_num - floor(_num_horiz_tiles / 2); _w <= _horiz_tile_num; _w++)
		{
			_callback(global.grid, _w, _h);
			show_debug_message("Tiles: " + string(_w) + ", " + string(_h));
		}
		for (var _w = _horiz_tile_num + 1; _w < _horiz_tile_num + floor(_num_horiz_tiles / 2) + 1; _w++)
		{
			_callback(global.grid, _w, _h);
			show_debug_message("Tiles: " + string(_w) + ", " + string(_h));
		}
	}
	for (var _h = _vert_tile_num + 1; _h < _vert_tile_num + 1 + floor(_num_vert_tiles / 2); _h++)
	{
		for (var _w = _horiz_tile_num - floor(_num_horiz_tiles / 2); _w <= _horiz_tile_num; _w++)
		{
			_callback(global.grid, _w, _h);
			show_debug_message("Tiles: " + string(_w) + ", " + string(_h));
		}
		for (var _w = _horiz_tile_num + 1; _w < _horiz_tile_num + floor(_num_horiz_tiles / 2) + 1; _w++)
		{
			_callback(global.grid, _w, _h);
			show_debug_message("Tiles: " + string(_w) + ", " + string(_h));
		}
	}
}

function add_tiles(_instance, _dungeon_room)
{
	modify_grid(_instance, _dungeon_room, mp_grid_add_cell);
}

function remove_tiles(_instance, _dungeon_room)
{
	modify_grid(_instance, _dungeon_room, mp_grid_clear_cell);	
	global.on_grid_updated_event.invoke();
}

function scan_for_obstacles(_dungeon_room)
{
	with (obj_pathfindable)
	{	
		if (point_in_rectangle(x, y, _dungeon_room.left_bound, _dungeon_room.upper_bound, _dungeon_room.right_bound, _dungeon_room.lower_bound) && contribute_to_pathfinding && solid)
			add_tiles(self, _dungeon_room);
	}
}