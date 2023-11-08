/// @description Insert description here
// You can write your code in this editor

to_spawn = false;
curr_spawn_countdown = 0;
item_has_been_picked_up = true;

on_arena_start = function()
{
	to_spawn = true;
	curr_spawn_countdown = spawn_time;
}

on_arena_end = function()
{
	to_spawn = false;	
}

spawn_item = function(_x, _y, _layer)
{
	if (spawn_item_vfx != noone)	
		spawn_vfx(spawn_item_vfx, new Vector2(0, 0), depth - 10);
	instance_create_layer(_x, _y, _layer, item_to_spawn);	
}

on_player_pick_up_item = function(_ignore)
{
	item_has_been_picked_up = true;	
}

global.on_arena_start_event.subscribe(on_arena_start);
global.on_arena_end_event.subscribe(on_arena_end);
global.on_player_pick_up_item_event.subscribe(on_player_pick_up_item);