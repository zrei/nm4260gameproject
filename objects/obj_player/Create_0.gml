/// @description Initialise variables
// You can write your code in this editor

// stats
movement_speed = global.player_movement_speed;
player_health = global.player_health;

// movement variables
moving = false;
input_order = [];

// cooldowns
invul_cooldown = 0;

// shooting
curr_facing_position = 90; // in angles, initially facing forward
shooting_cooldown = global.player_shooting_cooldown;

// knockback
knockback_cooldown = 0;
curr_damage_flash_amount_remaining = 0;
curr_damage_flash_interval = 0;
use_damaged_sprite = false;

is_key_obtained = false;

curr_element = SKILL_ELEMENTS.NONE;

move_instanteneously = function(_position, _facing_direction)
{
	show_debug_message("Move player to " + string(_position));
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

	global.on_player_change_health_event.invoke(player_health);

	if (player_health <= 0)
	{
		die();
		return;
	}

	obj_sfx_controller.play_sound(snd_player_damage);
	invul_cooldown = global.player_invul_cooldown;
	curr_damage_flash_amount_remaining = global.player_damage_flash_amount;
	curr_damage_flash_interval = global.player_damage_interval;
	knockback(_damage_direction);
}

take_damage_non_directional = function(_damage_amount)
{
	if (global.invincible_player)
		return;

	if (invul_cooldown > 0)
		return;

	
	player_health -= _damage_amount;

	global.on_player_change_health_event.invoke(player_health);

	if (player_health <= 0)
	{
		die();
		return;
	}

	obj_sfx_controller.play_sound(snd_player_damage);
	invul_cooldown = global.player_invul_cooldown;
	curr_damage_flash_amount_remaining = global.player_damage_flash_amount;
	curr_damage_flash_interval = global.player_damage_interval;
}

check_key_obtained = function() {
	return is_key_obtained;
}

obtain_key = function()
{
	is_key_obtained = true;
	global.on_player_obtain_key_event.invoke();
}

set_element = function(_element)
{
	if (curr_element != _element)
		global.on_player_change_element_event.invoke(_element);
	curr_element = _element;
}

heal = function(_heal_amount)
{
	if (_heal_amount < 0)
	{
		show_debug_message("Cannot heal negative amount");
		return;
	}

	player_health = min(player_health + _heal_amount, global.player_health);
	global.on_player_change_health_event.invoke(player_health);
}

set_health = function(_health)
{
	player_health = min(_health, global.player_health);
	global.on_player_change_health_event.invoke(player_health);

	if (player_health <= 0)
		die();
}

die = function()
{
	global.player_is_dead = true;
	global.on_player_death_event.invoke();
	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, false);
}	

set_facing_position = function(_cardinal_direction)
{
	if (map_angles_to_cardinal_directions(curr_facing_position) == _cardinal_direction)
		return;

	curr_facing_position = map_cardinal_directions_to_angles(_cardinal_direction);
}

set_sprite = function(_cardinal_direction)
{
	if (use_damaged_sprite)
		sprite_index = global.player_damaged_sprites.get_sprite(_cardinal_direction);
	else
		sprite_index = global.player_sprites.get_sprite(_cardinal_direction);
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
	knockback_cooldown = global.player_knockback_time;
	moving = false;
	direction = _damage_direction;
}

global.on_debug_change_element_event.subscribe(set_element);