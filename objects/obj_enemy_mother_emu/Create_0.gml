/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5;
image_yscale = 1.5;

curr_swap_timer = over_half_health_swap_time;
curr_element_index = 0;
element_swap_order = [SKILL_ELEMENTS.GRASS, SKILL_ELEMENTS.FIRE, SKILL_ELEMENTS.WATER];

shoot_projectile_timer = 0;

swap_elements = function()
{
	curr_element_index = (curr_element_index + 1) % array_length(element_swap_order);
	enemy_element = element_swap_order[curr_element_index];
}

spawn_projectiles = function()
{
	if (enemy_projectile_spawn_sound != noone)
		obj_sfx_controller.play_sound(enemy_projectile_spawn_sound);
	spawn_projectile(0);
	spawn_projectile(90);
	spawn_projectile(180);
	spawn_projectile(270);
	shoot_projectile_timer = 0;
}

spawn_projectile = function(_dir)
{
	instance_create_layer(x, y, global.enemy_layer, enemy_projectile,
	{
		direction: _dir,
		projectile_movement_speed: enemy_projectile_speed,
		projectile_damage: enemy_projectile_damage,
		image_angle: (_dir + 270) % 360
	});
}

// Inherit the parent event
event_inherited();