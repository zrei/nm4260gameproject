/// @description Insert description here
// You can write your code in this editor
if (up_distance_moved_so_far < move_up_distance)
{
	up_distance_moved_so_far += move_up_speed * global.time_scale;	
}

if (!completed_movement && to_move)
{
	distance_moved_so_far += movement_speed * global.time_scale;
	if (distance_moved_so_far >= distance_to_move)
	{
		completed_movement = true;
		curr_solid_time = solid_time;
	}
}
else if (curr_solid_time > 0)
{
	curr_solid_time -= global.time_scale;
	if (curr_solid_time <= 0)
		curr_fade_time = fade_time;
}
else if (curr_fade_time > 0) {
	image_alpha = curr_fade_time / fade_time;
	curr_fade_time -= global.time_scale;
}
else
{
	reset();
}

if (!is_active)
	return;

x = obj_camera_controller.get_camera_x_position() + starting_pos_offset_x + distance_moved_so_far * direction_to_move;
y = obj_camera_controller.get_camera_y_position() + starting_pos_offset_y - up_distance_moved_so_far;