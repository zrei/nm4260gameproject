/// @description Insert description here
// You can write your code in this editor

curr_time += delta_time * global.time_scale;

if (curr_time >= move_up_time)
	instance_destroy(self);