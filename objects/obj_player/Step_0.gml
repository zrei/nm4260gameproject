/// @description Update state
// You can write your code in this editor

// update movement
if (can_move)
{
	var _horizontal = keyboard_check(right_key) - keyboard_check(left_key);
	var _vertical = keyboard_check(down_key) - keyboard_check(up_key);
	if (_horizontal != 0 || _vertical != 0)
	{
		speed = movement_speed;
		direction = point_direction(0, 0, _horizontal, _vertical);
		moving = true;
	}
	else
	{
		speed = 0;
		moving = false;
	}	
	
	if (keyboard_check_pressed(left_key))
		update_input_order(CARDINAL_DIRECTIONS.WEST);
	else if (keyboard_check_pressed(right_key))
		update_input_order(CARDINAL_DIRECTIONS.EAST);
	else if (keyboard_check_pressed(up_key))
		update_input_order(CARDINAL_DIRECTIONS.NORTH);
	else if (keyboard_check_pressed(down_key))
		update_input_order(CARDINAL_DIRECTIONS.SOUTH);
	
	if (_horizontal != 0 && _vertical == 0)
	{
		if (_horizontal == 1)
			set_facing_position(CARDINAL_DIRECTIONS.EAST);
		else
			set_facing_position(CARDINAL_DIRECTIONS.WEST);
	}
	else if (_horizontal == 0 && _vertical != 0)
	{
		if (_vertical == 1)
			set_facing_position(CARDINAL_DIRECTIONS.SOUTH);
		else
			set_facing_position(CARDINAL_DIRECTIONS.NORTH);
	}
	else if (_horizontal == 1 && _vertical == -1)
	{
		set_facing_position(get_earlier_input(CARDINAL_DIRECTIONS.NORTH, CARDINAL_DIRECTIONS.EAST));
	}
	else if (_horizontal == 1 && _vertical == 1)
	{
		set_facing_position(get_earlier_input(CARDINAL_DIRECTIONS.SOUTH, CARDINAL_DIRECTIONS.EAST));
	}
	else if (_horizontal == -1 && _vertical == -1)
	{
		set_facing_position(get_earlier_input(CARDINAL_DIRECTIONS.NORTH, CARDINAL_DIRECTIONS.WEST));
	}
	else if (_horizontal == -1 && _vertical == 1)
	{
		set_facing_position(get_earlier_input(CARDINAL_DIRECTIONS.SOUTH, CARDINAL_DIRECTIONS.WEST));
	}
}
else {
	speed = 0;
	moving = false;
}

if mouse_check_button_pressed(mb_left) && !(shooting_cooldown > 0 || (!global.allow_shooting_while_moving && moving) || !can_shoot)
{
	instance_create_layer(x, y, "Player", obj_projectile, get_projectile_variable(curr_facing_position, curr_element));
	shooting_cooldown = global.player_shooting_cooldown;
}

/*&& distance_to_point(target_pos_x, target_pos_y) > global.point_reached_threshold)
{
	if (global.show_debug_messages)
		show_debug_message(distance_to_point(target_pos_x, target_pos_y));
	move_towards_point(target_pos_x, target_pos_y, movement_speed);
	moving = true;
} else
{
	speed = 0;	
	moving = false;
}*/

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

/*
// update facing position if not moving
if (!moving && can_shoot)
{
	curr_facing_position = calculate_face_angle(x, y, mouse_x, mouse_y);
	sprite_index = global.player_sprites.get_sprite(map_angles_to_cardinal_directions(curr_facing_position));
	
	// update sprite
}
*/