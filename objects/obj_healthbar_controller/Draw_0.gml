/// @description Insert description here
// You can write your code in this editor

var _healthbar_fill = healthbar_value / global.player_health * 100;
draw_text_at_position(obj_camera_controller.get_camera_x_position() + 30, obj_camera_controller.get_camera_y_position() + 30, "HP", fnt_element_swapper);
draw_healthbar(obj_camera_controller.get_camera_x_position() + 40, obj_camera_controller.get_camera_y_position() + 30, obj_camera_controller.get_camera_x_position() + 100, obj_camera_controller.get_camera_y_position() + 40, _healthbar_fill, c_black, c_red, c_green, 0, true, false);