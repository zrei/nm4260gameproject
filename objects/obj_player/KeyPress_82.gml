/// @description Fire projectile
// You can write your code in this editor

if (shooting_cooldown > 0 || moving || !can_shoot)
	return;
	
instance_create_layer(x, y, "Instances", obj_projectile, {
	speed: global.projectile_speed,
	direction: curr_facing_position
}
);
shooting_cooldown = global.player_shooting_cooldown;