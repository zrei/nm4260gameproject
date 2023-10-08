/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();
curr_wave = 1;

start_wave_spawners = function(_wave)
{
	for (var _i = 0; _i < num_spawners; _i++)
		if (spawners[_i].get_wave() == _wave)
			spawners[_i].start_spawning();
	if (num_active_enemies == 0)
		end_room();
}

lock_doors = function()
{
	for (var _i = 0; _i < num_doors; _i++)
		doors[_i].lock();
}

unlock_doors = function()
{
	for (var _i = 0; _i < num_doors; _i++)
		doors[_i].unlock();
}