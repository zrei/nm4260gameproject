/// @description Insert description here
// You can write your code in this editor
curr_swap_timer -= delta_time * global.time_scale;

if (curr_swap_timer <= 0)
{
	swap_elements();
	curr_swap_timer = curr_health / enemy_health > 0.5 ? over_half_health_swap_time : below_half_health_swap_time;
}

shoot_projectile_timer += delta_time * global.time_scale;
if (shoot_projectile_timer >= shoot_countdown)
	spawn_projectiles();

// Inherit the parent event
event_inherited();

