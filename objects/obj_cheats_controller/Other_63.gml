/// @description Insert description here
// You can write your code in this editor

if (async_id != ds_map_find_value(async_load, "id"))
	return;

if (!ds_map_find_value(async_load, "status"))
	return;

parse_cheats_and_execute(ds_map_find_value(async_load, "result"));