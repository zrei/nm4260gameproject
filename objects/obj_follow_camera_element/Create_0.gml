/// @description Insert description here
// You can write your code in this editor

x = obj_camera_controller.get_camera_x_position() + camera_offset_x;
y = obj_camera_controller.get_camera_y_position() + camera_offset_y;

on_camera_move = function(_new_cam_pos)
{
	x = _new_cam_pos.x + camera_offset_x;
	y = _new_cam_pos.y + camera_offset_y;
}

global.on_camera_moved_event.subscribe(on_camera_move);