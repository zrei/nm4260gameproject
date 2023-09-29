/// @description Update state
// You can write your code in this editor

// update movement
if (distance_to_point(target_pos_x, target_pos_y) > global.point_reached_threshold)
{
	if (global.show_debug_messages)
		show_debug_message(distance_to_point(target_pos_x, target_pos_y));
	move_towards_point(target_pos_x, target_pos_y, movement_speed);
	moving = true;
} else
{
	speed = 0;	
	moving = false;
}

// update all cooldowns
if (curr_mouse_cooldown > 0)
{
	curr_mouse_cooldown -= 1;	
}
if (shooting_cooldown > 0)
{
	shooting_cooldown -= 1;	
}


// update facing position if not moving
if (!moving)
{
	curr_facing_position = calculate_new_player_face_angle(x, y, mouse_x, mouse_y);
	// update sprite
}
