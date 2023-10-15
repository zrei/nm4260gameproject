/// @description Insert description here
// You can write your code in this editor

can_act = false;
moving = false;
curr_attack_cooldown = 0;
curr_damage_flash_amount_remaining = 0;
curr_damage_flash_interval = 0;

curr_face_angle = 270;
enemy_sprites = new FourDirectionalSprites(left_facing_sprite, right_facing_sprite, front_facing_sprite, back_facing_sprite);
enemy_sprites_damaged = new FourDirectionalSprites(left_facing_sprite_damaged, right_facing_sprite_damaged, front_facing_sprite_damaged, back_facing_sprite_damaged);
use_damaged_sprite = false;

take_damage = function(_damage_value)
{
	if (global.enable_player_one_hit_kill)
		enemy_health = 0;
	else if (!global.invincible_enemy)
		enemy_health -= _damage_value;
	
	if (enemy_health <= 0)
	{
		die();
		return;
	}	

	curr_damage_flash_amount_remaining = flash_amount;
	curr_damage_flash_interval = flash_interval;
}

die = function()
{
	global.on_enemy_death_event.invoke([]);
	drop_heal_item();
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

on_debug_kill_all_enemies = function(_args)
{
	die();	
}

global.on_debug_kill_all_enemies_event.subscribe(on_debug_kill_all_enemies);