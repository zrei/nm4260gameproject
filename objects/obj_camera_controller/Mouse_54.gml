/// @description Test shift camera
// You can write your code in this editor

if (camera_moving)
	return;

camera_target_pos = new Vector2(camera_get_view_x(curr_camera) - global.viewport_width, camera_get_view_y(curr_camera));
camera_moving = true;
obj_player.disable_player_controls();