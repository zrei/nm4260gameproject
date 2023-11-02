// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.grid = undefined;
global.enemy_obstacles = [obj_obstacle_parent]

function create_grid(_dungeon_room)
{
	global.grid = mp_grid_create(_dungeon_room.top_left_corner.x, _dungeon_room.top_right_corner.y, global.width / global.tileset_dimensions, global.height / global.tileset_dimensions, global.tileset_dimensions, global.tileset_dimensions);
}

function free_grid()
{
	mp_grid_destroy(global.grid);
}