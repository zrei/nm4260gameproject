/// @description Insert description here
// You can write your code in this editor

view_enabled = true;
view_visible[DEFAULT_VIEWPORT] = true;

view_set_xport(DEFAULT_VIEWPORT, global.viewport_x);
view_set_yport(DEFAULT_VIEWPORT, global.viewport_y);
view_set_wport(DEFAULT_VIEWPORT, global.viewport_width);
view_set_hport(DEFAULT_VIEWPORT, global.viewport_height);

curr_camera = camera_create_view(camera_pos.x, camera_pos.y, camera_width, camera_height);
view_camera[DEFAULT_VIEWPORT] = curr_camera;

var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - global.viewport_width / 2;
var _ypos = (_dheight / 2) - global.viewport_height / 2;
window_set_rectangle(_xpos, _ypos, global.viewport_width, global.viewport_height);

surface_resize(application_surface, global.viewport_width, global.viewport_height);

camera_moving = false;