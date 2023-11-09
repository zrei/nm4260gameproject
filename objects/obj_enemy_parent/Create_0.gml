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

curr_movement_speed = starting_movement_speed;
speed_boosts = [];

curr_angry_vfx = undefined;

half_health_event_fired = false;

spawn_smoke_cloud = function()
{
	if (dust_cloud != noone)
	{
		var _pos = new Vector2(x, y);
		obj_particles_controller.play_particles(dust_cloud, global.player_layer, PARTICLE_SYSTEM_TYPE.LIFETIME, dust_cloud_time, _pos.translate(-dust_cloud_x_offset, dust_cloud_y_offset));
		obj_particles_controller.play_particles(dust_cloud, global.player_layer, PARTICLE_SYSTEM_TYPE.LIFETIME, dust_cloud_time, _pos.translate(dust_cloud_x_offset, dust_cloud_y_offset));
	}
}

spawn_smoke_cloud();

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
	array_push(speed_boosts, new SpeedUpBuff(speed_boost_wear_off_time, movement_speed_increase_amount));
	//movement_speed = min(movement_speed + movement_speed_increase_amount, movement_speed_cap);
	spawn_vfx(obj_powerup_aura, new Vector2(x, y), depth - 10, image_xscale, image_yscale, self);
	if (curr_angry_vfx == undefined)
		create_angry_vfx();
}

create_angry_vfx = function()
{
	if (angry_vfx != noone)
		curr_angry_vfx = spawn_vfx(angry_vfx, (new Vector2(x, y)).translate_vector(angry_vfx_offset), layer_get_depth(global.player_layer) - 10, angry_vfx_xscale, angry_vfx_yscale, self, angry_vfx_offset);
}

destroy_angry_vfx = function()
{
	if (curr_angry_vfx != undefined)
	{
		instance_destroy(curr_angry_vfx);	
		curr_angry_vfx = undefined;	
	}
}

sum_of_speed_ups = function(_previous, _current, _index)
{
	return _previous + _current.speed_up_amt;
}

update_speed_up_buffs = function()
{
	array_foreach(speed_boosts, function(_element, _index) { _element.update_buff_duration(-delta_time * global.time_scale); });
	speed_boosts = array_filter(speed_boosts, function(_element, _index) { return _element.duration > 0; });
	if (array_length(speed_boosts) == 0)
		destroy_angry_vfx();
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
	
	if (curr_health <= enemy_health / 2 && is_boss && !half_health_event_fired)
	{
		show_debug_message("Phase 2 entered");
		global.on_boss_entered_second_phase_event.invoke();
		half_health_event_fired = true;
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
	if (_rand_value <= heal_item_drop_chance)
	{
		var _spawn_point = find_free_item_spawn_point();
		//var _angle = random_range(min_heal_item_drop_angle, max_heal_item_drop_angle);
		//var _spawn_radius = random_range(min_heal_item_drop_radius, max_heal_item_drop_radius);
		//var _spawn_point = calculate_point_on_circle_perimeter(new Vector2(x, y), _angle, _spawn_radius);
		//instance_create_layer(_spawn_point.x, _spawn_point.y, global.enemy_layer, heal_item);
		if (_spawn_point != undefined)
			instance_create_layer(x, y, global.enemy_layer, heal_item, {
				final_pos: _spawn_point
			});
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

find_free_item_spawn_point = function()
{
	var _horizontal_interval = sprite_width / 2 * image_xscale + spawn_offset_x;
	var _i = 1;
	while (_i <= 10)
	{
		if (!collision_rectangle(x + _i * _horizontal_interval - sprite_get_width(spr_egg) / 2, y - sprite_get_height(spr_egg) / 2, x + _i * _horizontal_interval + sprite_get_width(spr_egg) / 2, y + sprite_get_height(spr_egg) / 2, [obj_pathfindable, ts_wall], false, true))
			return new Vector2(x + _i * _horizontal_interval, y);
		//if (!place_meeting(x + _i * _horizontal_interval, y, [obj_pathfindable, ts_wall]))
		//	return new Vector2(x + _i * _horizontal_interval, y);
		if (!collision_rectangle(x - _i * _horizontal_interval - sprite_get_width(spr_egg) / 2, y - sprite_get_height(spr_egg) / 2, x - _i * _horizontal_interval + sprite_get_width(spr_egg) / 2, y + sprite_get_height(spr_egg) / 2, [obj_pathfindable, ts_wall], false, true))
			return new Vector2(x - _i * _horizontal_interval, y);
		_i += 1;
		//if (!place_meeting(
	}
	show_debug_message("Unable to find spawn point");
	return undefined;
}

global.on_player_death_event.subscribe(on_player_die);
global.on_begin_transition_event.subscribe(on_transition_begin);
global.on_end_dungeon_room_event.subscribe(on_dungeon_room_end);
global.on_pause_menu_opened_event.subscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.subscribe(on_pause_menu_closed);
global.on_start_dungeon_room_event.subscribe(on_dungeon_room_begin);
global.on_grid_updated_event.subscribe(on_grid_updated);