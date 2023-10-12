// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function mouse_click_movement()
{
	if (curr_mouse_cooldown > 0 || !can_move)
		return;

	target_pos_x = mouse_x;
	target_pos_y = mouse_y;

	if (global.show_debug_messages)
		show_debug_message("Set target position to: {0}, {1}", target_pos_x, target_pos_y);

	if (!global.no_player_projectile_cooldown)
		curr_mouse_cooldown = global.player_mouse_cooldown;
}

function mouse_click_movement_update_state()
{
	if (can_move && distance_to_point(target_pos_x, target_pos_y) > global.point_reached_threshold)
	{
		if (global.show_debug_messages)
			show_debug_message(distance_to_point(target_pos_x, target_pos_y));
		move_towards_point(target_pos_x, target_pos_y, movement_speed);
		moving = true;
	} else
	{
		speed = 0;	
		moving = false;
	}
}

function update_facing_position_based_on_mouse()
{	
	// update facing position if not moving
	if (!moving && can_shoot)
	{
		curr_facing_position = calculate_face_angle(x, y, mouse_x, mouse_y);
		sprite_index = global.player_sprites.get_sprite(map_angles_to_cardinal_directions(curr_facing_position));
	}
}