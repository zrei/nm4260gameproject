/// @description Initialise variables
// You can write your code in this editor

// stats
movement_speed = global.player_movement_speed;
player_health = global.player_health;

// movement variables
moving = false;
can_move = true;
input_order = [];

// cooldowns
invul_cooldown = 0;

// shooting
curr_facing_position = 90; // in angles, initially facing forward
shooting_cooldown = global.player_shooting_cooldown;
can_shoot = true;

// knockback
knockback_cooldown = 0;

pause_cooldowns = false;

is_key_obtained = false;

curr_element = SKILL_ELEMENTS.NONE;

disable_player_controls = function()
{
	self.can_move = false;
	self.can_shoot = false;
	self.pause_cooldowns = true;
	speed = 0;
	moving = false;
}

enable_player_controls = function()
{
	self.can_move = true;
	self.can_shoot = true;
	self.pause_cooldowns = false;
}

move_instanteneously = function(_position, _facing_direction)
{
	x = _position.x;
	y = _position.y;
	set_facing_position(_facing_direction);
}

take_damage = function(_damage_amount, _damage_direction)
{
	if (global.invincible_player)
		return;

	if (invul_cooldown > 0)
		return;

	if (global.enemy_one_hit_kill)
		player_health = 0;
	else 
		player_health -= _damage_amount;

	obj_healthbar_controller.update_healthbar(player_health);

	if (player_health <= 0)
	{
		die();
		return;
	}

	invul_cooldown = global.player_invul_cooldown;
	knockback(_damage_direction);
}

check_key_obtained = function() {
	return is_key_obtained;
}

obtain_key = function()
{
	is_key_obtained = true;
}

set_element = function(_element)
{
	curr_element = _element;
	obj_element_ui_controller.on_change_element(_element);
}

heal = function(_heal_amount)
{
	if (_heal_amount < 0)
	{
		show_debug_message("Cannot heal negative amount");
		return;
	}

	player_health = min(player_health + _heal_amount, global.player_health);
	obj_healthbar_controller.update_healthbar(player_health);
}

set_health = function(_health)
{
	player_health = min(_health, global.player_health);
	obj_healthbar_controller.update_healthbar(player_health);

	if (player_health <= 0)
		die();
}

die = function()
{
	disable_player_controls();
	_end_callback = function()
	{
		room_restart();	
	}
	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, _end_callback);
}	

set_facing_position = function(_cardinal_direction)
{
	if (map_angles_to_cardinal_directions(curr_facing_position) == _cardinal_direction)
		return;

	sprite_index = global.player_sprites.get_sprite(_cardinal_direction);
	curr_facing_position = map_cardinal_directions_to_angles(_cardinal_direction);
}

update_input_order = function(_cardinal_direction)
{
	_prev_location = array_get_index(input_order, _cardinal_direction);
	if (_prev_location != -1)
		array_delete(input_order, _prev_location, 1);
	array_push(input_order, _cardinal_direction);
}

get_earlier_input = function(_cardinal_direction_a, _cardinal_direction_b)
{
	for (var _i = array_length(input_order) - 1; _i >= 0; _i--)
	{
		if (input_order[_i] == _cardinal_direction_a)
			return _cardinal_direction_a;
		if (input_order[_i] == _cardinal_direction_b)
			return _cardinal_direction_b;
	}
}	

knockback = function(_damage_direction)
{
	can_move = false;
	knockback_cooldown = global.player_knockback_time;
	speed = global.player_knockback_speed;
	direction = _damage_direction;
}