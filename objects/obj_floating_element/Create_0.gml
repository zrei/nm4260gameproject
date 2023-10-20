/// @description Insert description here
// You can write your code in this editor

x = origin.x;
y = origin.y;

counter = 0;

if (has_motion)
{
	x_curve = animcurve_get_channel(movement_curve, "x");
	y_curve = animcurve_get_channel(movement_curve, "y");
}