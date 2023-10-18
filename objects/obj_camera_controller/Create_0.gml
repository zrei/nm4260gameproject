/// @description Set up camera
// You can write your code in this editor

// Initialise Viewports
view_enabled = true;
view_visible[DEFAULT_VIEWPORT] = true;

view_set_xport(DEFAULT_VIEWPORT, global.viewport_x);
view_set_yport(DEFAULT_VIEWPORT, global.viewport_y);
view_set_wport(DEFAULT_VIEWPORT, global.viewport_width);
view_set_hport(DEFAULT_VIEWPORT, global.viewport_height);

// default camera position
camera_pos = new Vector2(0, 0);
camera_width = global.viewport_width;
camera_height = global.viewport_height;
curr_camera = undefined;
camera_target_pos = new Vector2(camera_pos.x, camera_pos.y);
camera_moving = false;

move_camera_to_position = function(_position, _instanteneous = false)
{
	if (camera_moving)
		return;
	
	camera_target_pos = _position;
	
	if (_instanteneous)
	{
		camera_pos = _position;	
		camera_set_view_pos(curr_camera, camera_pos.x, camera_pos.y);
		show_debug_message("Camera position: " + string(camera_get_view_x(curr_camera)) + ", " + string(camera_get_view_y(curr_camera)));
		show_debug_message("Camera width: " + string(camera_get_view_width(curr_camera)) + ", Camera height: " + string(camera_get_view_height(curr_camera)));
		global.on_camera_moved_event.invoke(camera_pos);
		camera_moving = false;
		return;
	}

	camera_moving = true;
	block_all_player_controls();
}

get_camera_x_position = function()
{
	return camera_pos.x;
}

get_camera_y_position = function()
{
	return camera_pos.y;
}