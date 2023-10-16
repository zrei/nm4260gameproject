/// @description Move towards player
// You can write your code in this editor
if (curr_attack_cooldown > 0)
{
	curr_attack_cooldown -= global.time_scale;
	if (curr_attack_cooldown <= 0)
		can_act = true;
}

if (curr_damage_flash_interval > 0 && curr_damage_flash_amount_remaining > 0)
{
	curr_damage_flash_interval -= global.time_scale;
	if (curr_damage_flash_interval <= 0)
	{
		use_damaged_sprite = !use_damaged_sprite;
		curr_damage_flash_amount_remaining -= 1;	
		curr_damage_flash_interval = flash_interval;
	}
}
else
	use_damaged_sprite = false;

if (distance_to_point(obj_player.x, obj_player.y) > global.point_reached_threshold && can_act)
{
	move_towards_point(obj_player.x, obj_player.y, movement_speed * global.time_scale);
	curr_face_angle = calculate_face_angle(x, y, obj_player.x, obj_player.y);
	moving = true;
} else
{
	speed = 0;	
	moving = false;
}

if (use_damaged_sprite)
	sprite_index = enemy_sprites_damaged.get_sprite(map_angles_to_cardinal_directions(curr_face_angle));
else
	sprite_index = enemy_sprites.get_sprite(map_angles_to_cardinal_directions(curr_face_angle));
