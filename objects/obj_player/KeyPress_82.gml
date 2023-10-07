/// @description Fire projectile
// You can write your code in this editor

if (shooting_cooldown > 0 || moving || !can_shoot)
	return;
	
instance_create_layer(x, y, "Player", obj_projectile, get_projectile_variable(curr_facing_position, curr_element));
shooting_cooldown = global.player_shooting_cooldown;