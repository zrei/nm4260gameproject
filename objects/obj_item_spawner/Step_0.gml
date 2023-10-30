/// @description Insert description here
// You can write your code in this editor

if (!to_spawn)
	return;

if (curr_spawn_countdown <= 0)
{
	curr_spawn_countdown = spawn_time;
	
	if (item_has_been_picked_up)
	{
		spawn_item(x + spawn_offset_x, y - spawn_offset_y, global.enemy_layer);
		item_has_been_picked_up = false;
	}
}
else
	curr_spawn_countdown -= delta_time * global.time_scale;