/// @description Insert description here
// You can write your code in this editor

counter = (counter + delta_time) % movement_cycle_time;

if (has_motion)
	x = origin.x + animcurve_channel_evaluate(x_curve, counter / movement_cycle_time) * x_movement_scale;
	y = origin.y + animcurve_channel_evaluate(y_curve, counter / movement_cycle_time) * y_movement_scale;