/// @description Update state
// You can write your code in this editor

// update movement
if (knockback_cooldown > 0)
{
	// do nothing
}
else if (can_move)
{
	var _horizontal = keyboard_check(MOVE_RIGHT_KEY) - keyboard_check(MOVE_LEFT_KEY);
	var _vertical = keyboard_check(MOVE_DOWN_KEY) - keyboard_check(MOVE_UP_KEY);
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
	
	if (keyboard_check_pressed(MOVE_LEFT_KEY))
		update_input_order(CARDINAL_DIRECTIONS.WEST);
	else if (keyboard_check_pressed(MOVE_RIGHT_KEY))
		update_input_order(CARDINAL_DIRECTIONS.EAST);
	else if (keyboard_check_pressed(MOVE_UP_KEY))
		update_input_order(CARDINAL_DIRECTIONS.NORTH);
	else if (keyboard_check_pressed(MOVE_DOWN_KEY))
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

if CHECK_SHOOT_KEY && !(shooting_cooldown > 0 || (!global.allow_shooting_while_moving && moving) || !can_shoot)
{
	instance_create_layer(x, y, "Player", obj_projectile, get_projectile_variable(curr_facing_position, curr_element));
	obj_sfx_controller.play_sound(global.player_gun_fire_sound);
	shooting_cooldown = global.player_shooting_cooldown;
}

// update all cooldowns
if (!pause_cooldowns)
{
	if (shooting_cooldown > 0)
		shooting_cooldown -= 1;	

	if (invul_cooldown > 0)
		invul_cooldown -= 1;
		
	if (knockback_cooldown > 0)
	{
		knockback_cooldown -= 1;
		if (knockback_cooldown <= 0)
			can_move = true;
	}
}