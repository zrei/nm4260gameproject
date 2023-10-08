/// @description Initialise variables
// You can write your code in this editor

// stats
movement_speed = global.player_movement_speed;
player_health = global.player_health;

// movement variables
target_pos_x = x;
target_pos_y = y;
moving = false;
can_move = true;

// cooldowns
curr_mouse_cooldown = 0;
invul_cooldown = 0;

// shooting
curr_facing_position = 90; // in angles, initially facing forward
shooting_cooldown = global.player_shooting_cooldown;
can_shoot = true;

pause_cooldowns = false;

is_key_obtained = false;

curr_element = SKILL_ELEMENTS.NONE;

disable_player_controls = function()
{
	self.can_move = false;
	self.can_shoot = false;
	self.pause_cooldowns = true;
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
	target_pos_x = x;
	target_pos_y = y;
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
		die();

	invul_cooldown = global.player_invul_cooldown;
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