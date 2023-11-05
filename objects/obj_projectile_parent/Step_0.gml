/// @description Insert description here
// You can write your code in this editor

speed = projectile_movement_speed * global.time_scale;

if (place_meeting(x, y, global.wall_layer))
{
	disappear();
}