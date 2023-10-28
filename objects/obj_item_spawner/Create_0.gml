/// @description Insert description here
// You can write your code in this editor

to_spawn = false;
curr_spawn_countdown = 0;

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
	instance_create_layer(_x, _y, _layer, item_to_spawn);	
}
global.on_arena_start_event.subscribe(on_arena_start);
global.on_arena_end_event.subscribe(on_arena_end);