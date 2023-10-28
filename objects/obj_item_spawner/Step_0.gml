/// @description Insert description here
// You can write your code in this editor

if (!to_spawn)
	return;

if (curr_spawn_countdown <= 0)
{
	switch (spawn_side)
	{
		case CARDINAL_DIRECTIONS.NORTH:
			spawn_item(x, y - spawn_offset, global.enemy_layer);
			break;
		case CARDINAL_DIRECTIONS.SOUTH:
			spawn_item(x, y + spawn_offset, global.enemy_layer);
			break;
		case CARDINAL_DIRECTIONS.EAST:
			spawn_item(x + spawn_offset, y, global.enemy_layer);
			break;
		case CARDINAL_DIRECTIONS.WEST:
			spawn_item(x - spawn_offset, y, global.enemy_layer);
			break;
	}
	curr_spawn_countdown = spawn_time;
}
else
	curr_spawn_countdown -= delta_time * global.time_scale;