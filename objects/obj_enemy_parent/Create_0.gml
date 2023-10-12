/// @description Insert description here
// You can write your code in this editor

can_act = false;
moving = false;
curr_attack_cooldown = 0;
curr_face_angle = 270;
enemy_sprites = new FourDirectionalSprites(left_facing_sprite, right_facing_sprite, front_facing_sprite, back_facing_sprite);

take_damage = function(_damage_value)
{
	if (global.enable_player_one_hit_kill)
		enemy_health = 0;
	else if (!global.invincible_enemy)
		enemy_health -= _damage_value;

	if (enemy_health <= 0)
		die();
}

die = function()
{
	obj_dungeon_controller.update_current_room_active_enemy_count(-1);
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