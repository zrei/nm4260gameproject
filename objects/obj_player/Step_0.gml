/// @description Update state
// You can write your code in this editor

if (distance_to_point(target_pos_x, target_pos_y) > global.point_reached_threshold)
{
	show_debug_message(distance_to_point(target_pos_x, target_pos_y));
	move_towards_point(target_pos_x, target_pos_y, movement_speed);
} else
{
	speed = 0;	
}

if (curr_mouse_cooldown > 0)
{
	curr_mouse_cooldown -= 1;	
}


