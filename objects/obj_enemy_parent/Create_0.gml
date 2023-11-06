/// @description Insert description here
// You can write your code in this editor
event_inherited();

can_act = false;
moving = false;
curr_attack_cooldown = 0;
curr_damage_flash_amount_remaining = 0;
curr_damage_flash_interval = 0;

curr_health = enemy_health;
curr_face_angle = 270;
use_damaged_sprite = false;

path = path_add();
path_found = false;
path_idx = 0;
to_gen_path = true;
path_num_nodes = 0;

get_hit_by_projectile = function(_projectile_element, _damage)
{
	if (enemy_element == SKILL_ELEMENTS.NONE)
		take_damage(_damage);
	else if (_projectile_element == SKILL_ELEMENTS.NONE)
		take_damage(0.75 * _damage);
	else if (is_element_a_weak_to_element_b(_projectile_element, enemy_element))
		power_up();
	else if (is_element_a_weak_to_element_b(enemy_element, _projectile_element))
		take_damage(_damage);
	else
		show_debug_message("Same element hit");
}

power_up = function()
{
	movement_speed = min(movement_speed + movement_speed_increase_amount, movement_speed_cap);
	spawn_vfx(obj_powerup_aura, new Vector2(x, y), -50, image_xscale, image_yscale, self);
}

take_damage = function(_damage_value)
{
	if (global.enable_player_one_hit_kill)
		curr_health = 0;
	else if (!global.invincible_enemy)
		curr_health -= _damage_value;
	
	if (curr_health <= 0)
	{
		die();
		return;
	}	

	curr_damage_flash_amount_remaining = flash_amount;
	curr_damage_flash_interval = flash_interval;
}

die = function()
{
	global.on_enemy_death_event.invoke();
	global.on_timer_affected_event.invoke(-time_reduction);
	drop_heal_item();
	if (death_sound != noone)
		obj_sfx_controller.play_sound(death_sound);
	if (time_reduction != 0)
		obj_popup_controller.create_popup(obj_time_deduction_popup, new Vector2(x, y - time_deduction_offset_y), {
			change_amount: -convert_microseconds_to_seconds(time_reduction)
		});
	instance_destroy(self);
	// start death animation
	// disable attacks and any hitboxes
	// might want to put it at a lower depth as well possibly
}

// override in child
attack = function()
{
	obj_player.take_damage(attack_damage, point_direction(x, y, obj_player.x, obj_player.y));
	
	if (!global.no_enemy_attack_cooldown)
	{
		curr_attack_cooldown = attack_cooldown;
		can_act = false;
		speed = 0;
		moving = false;
		to_gen_path = true;
	}
	
}

despawn = function()
{
	instance_destroy(self);
}

drop_heal_item = function()
{
	var _rand_value = random(1);
	if (_rand_value < heal_item_drop_chance)
	{
		var _angle = random_range(min_heal_item_drop_angle, max_heal_item_drop_angle);
		var _spawn_radius = random_range(min_heal_item_drop_radius, max_heal_item_drop_radius);
		var _spawn_point = calculate_point_on_circle_perimeter(new Vector2(x, y), _angle, _spawn_radius);
		instance_create_layer(_spawn_point.x, _spawn_point.y, "Enemy", heal_item);
	}
}

on_debug_kill_all_enemies = function()
{
	die();	
}

global.on_debug_kill_all_enemies_event.subscribe(on_debug_kill_all_enemies);

on_transition_begin = function()
{
	can_act = false;
}

on_dungeon_room_begin = function()
{
	can_act = true;	
}

on_dungeon_room_end = function()
{
	despawn();
}

on_player_die = function()
{
	can_act = false;
}

on_pause_menu_opened = function()
{
	can_act = false;	
}

on_pause_menu_closed = function()
{
	can_act = true;
}

on_grid_updated = function()
{
	to_gen_path = true;	
}

global.on_player_death_event.subscribe(on_player_die);
global.on_begin_transition_event.subscribe(on_transition_begin);
global.on_end_dungeon_room_event.subscribe(on_dungeon_room_end);
global.on_pause_menu_opened_event.subscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.subscribe(on_pause_menu_closed);
global.on_start_dungeon_room_event.subscribe(on_dungeon_room_begin);
global.on_grid_updated_event.subscribe(on_grid_updated);