/// @description Update state
// You can write your code in this editor

var _movement_vector = undefined;
// update movement
if (knockback_cooldown > 0)
{
	_movement_vector = get_movement_vector(direction, global.player_knockback_speed * global.time_scale);
	show_debug_message("Position: " + string(x) + ", " + string(y));
}
else
{
	var _horizontal = check_key_held(MOVE_RIGHT_KEY) - check_key_held(MOVE_LEFT_KEY);
	var _vertical = check_key_held(MOVE_DOWN_KEY) - check_key_held(MOVE_UP_KEY);
	if (_horizontal != 0 || _vertical != 0)
	{
		direction = point_direction(0, 0, _horizontal, _vertical);
		_movement_vector = get_movement_vector(direction, movement_speed * global.time_scale);
		moving = true;
	}
	else
	{
		moving = false;
	}	
	
	if (check_key_pressed(MOVE_LEFT_KEY))
		update_input_order(CARDINAL_DIRECTIONS.WEST);
	else if (check_key_pressed(MOVE_RIGHT_KEY))
		update_input_order(CARDINAL_DIRECTIONS.EAST);
	else if (check_key_pressed(MOVE_UP_KEY))
		update_input_order(CARDINAL_DIRECTIONS.NORTH);
	else if (check_key_pressed(MOVE_DOWN_KEY))
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

if (_movement_vector != undefined)
{
	var _final_pos = get_final_pos(new Vector2(x, y), _movement_vector);
	if (!place_meeting(_final_pos.x, _final_pos.y, global.wall_layer))
	{
		x = _final_pos.x;
		y = _final_pos.y;
	}
}

if (curr_damage_flash_interval > 0 && curr_damage_flash_amount_remaining > 0)
{
	curr_damage_flash_interval -= global.time_scale;
	if (curr_damage_flash_interval <= 0)
	{
		use_damaged_sprite = !use_damaged_sprite;
		curr_damage_flash_amount_remaining -= 1;	
		curr_damage_flash_interval = global.player_damage_interval;
	}
}
else
	use_damaged_sprite = false;
	
set_sprite(map_angles_to_cardinal_directions(curr_facing_position));

if check_mouse_pressed(SHOOT_KEY) && !(shooting_cooldown > 0 || knockback_cooldown > 0 || (!global.allow_shooting_while_moving && moving))
{
	var _projectile_offset = get_projectile_offset(curr_facing_position);
	instance_create_layer(x + _projectile_offset.x, y - _projectile_offset.y, global.player_layer, obj_projectile, get_projectile_variable(curr_facing_position, curr_element, (curr_facing_position + 180) % 360));
	obj_sfx_controller.play_sound(global.player_gun_fire_sound);
	shooting_cooldown = global.player_shooting_cooldown;
}

// update all cooldowns
if (shooting_cooldown > 0)
	shooting_cooldown -= global.time_scale;	

if (invul_cooldown > 0)
	invul_cooldown -= global.time_scale;
		
if (knockback_cooldown > 0)
	knockback_cooldown -= global.time_scale;