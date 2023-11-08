/// @description Move towards player
// You can write your code in this editor
var _bb_top = y - sprite_height / 2;
var _bb_bottom = y + sprite_height / 2;
var _bb_left = x - sprite_width / 2;
var _bb_right = x + sprite_width / 2;

if (speed_boost_wears_off)
	update_speed_up_buffs();

curr_movement_speed = min(movement_speed_cap, array_reduce(speed_boosts, sum_of_speed_ups, starting_movement_speed));
//else
//	pass;

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

if (to_gen_path)
{
	//mp_potential_path(path, obj_player.x, obj_player.y, movement_speed, 2, false);
	path_found = mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, true);
	to_gen_path = false;
	path_num_nodes = path_get_number(path);
	path_idx = 0;
}
else if (path_idx == 3)
{
	path_clear_points(path);
	//mp_potential_path(path, obj_player.x, obj_player.y, movement_speed, 2, false);
	path_found = mp_grid_path(global.grid, path, x, y, obj_player.x, obj_player.y, true);
	path_idx = 0;
	path_num_nodes = path_get_number(path);
}

if (can_act && path_found && path_idx < path_num_nodes)
{
	//show_debug_message("New x and y: " + string(path_get_point_x(path, path_idx)) + ", " + string(path_get_point_y(path, path_idx)));
	var _new_x = path_get_point_x(path, path_idx);
	var _new_y = path_get_point_y(path, path_idx);
	move_towards_point(_new_x, _new_y, curr_movement_speed * global.time_scale);
	curr_face_angle = calculate_face_angle(x, y, obj_player.x, obj_player.y);
	if (distance_to_point(_new_x, _new_y) <= global.point_reached_threshold)
	{	
		//speed = 0;
		path_idx += 1;
	}
}
else 
{
	speed = 0;
	if (path_idx >= path_num_nodes)
		to_gen_path = true;
}
/*
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
}*/

sprite_index = get_enemy_sprite(use_damaged_sprite, map_angles_to_cardinal_directions(curr_face_angle), enemy_element);