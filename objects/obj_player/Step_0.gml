/// @description Update state
// You can write your code in this editor

// update movement
if (can_move && distance_to_point(target_pos_x, target_pos_y) > global.point_reached_threshold)
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
if (!pause_cooldowns)
{
	if (curr_mouse_cooldown > 0)
		curr_mouse_cooldown -= 1;	
	
	if (shooting_cooldown > 0)
		shooting_cooldown -= 1;	

	if (invul_cooldown > 0)
		invul_cooldown -= 1;
}

// update facing position if not moving
if (!moving && can_shoot)
{
	curr_facing_position = calculate_face_angle(x, y, mouse_x, mouse_y);
	sprite_index = global.player_sprites.get_sprite(map_angles_to_cardinal_directions(curr_facing_position));
	
	// update sprite
}