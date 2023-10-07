/// @description Insert description here
// You can write your code in this editor

can_act = false;
moving = false;
attack_cooldown = 0;

take_damage = function(_damage_value)
{
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
	obj_player.take_damage(attack_damage, calculate_distance_vector_between_two_points(new Vector2(obj_player.x, obj_player.y), new Vector2(x, y)));
	attack_cooldown = global.enemy_attack_cooldown;
	can_act = false;
	speed = 0;
	moving = false;
}

despawn = function()
{
	instance_destroy(self);
}