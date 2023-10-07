/// @description Smooth camera movement
// You can write your code in this editor

if (camera_moving && camera_target_pos.equals(camera_pos))
{
	camera_moving = false;
	obj_player.enable_player_controls();
	return;
}
	
camera_pos.x = lerp(camera_pos.x, camera_target_pos.x, global.camera_movement_speed_x);
camera_pos.y = lerp(camera_pos.y, camera_target_pos.y, global.camera_movement_speed_y);
camera_set_view_pos(curr_camera, camera_pos.x, camera_pos.y);