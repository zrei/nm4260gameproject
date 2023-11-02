/// @description Move towards player
// You can write your code in this editor
var _bb_top = y - sprite_height / 2;
var _bb_bottom = y + sprite_height / 2;
var _bb_left = x - sprite_width / 2;
var _bb_right = x + sprite_width / 2;

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
	//var _move_direction = point_direction(x, y, obj_player.x, obj_player.y);
	//var _move_offset = movement_respecting_collision(_move_direction, movement_speed * global.time_scale, self, new Vector2(x, y));
	//var _move_offset = movement_respecting_collision(_move_direction, movement_speed * global.time_scale, _bb_left, _bb_right, _bb_top, _bb_bottom);
	move_towards_point(obj_player.x, obj_player.y, movement_speed * global.time_scale);
	curr_face_angle = calculate_face_angle(x, y, obj_player.x, obj_player.y);
	//x += _move_offset.x;
	//y -= _move_offset.y;
	moving = true;
} else
{
	speed = 0;	
	moving = false;
}

sprite_index = get_enemy_sprite(use_damaged_sprite, map_angles_to_cardinal_directions(curr_face_angle), enemy_element);