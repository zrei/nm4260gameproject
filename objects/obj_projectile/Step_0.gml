/// @description Check within camera view
// You can write your code in this editor



var _camera = view_camera[DEFAULT_VIEWPORT];
var _left_bound = camera_get_view_x(_camera);
var _right_bound = _left_bound + camera_get_view_width(_camera);
var _bottom_bound = camera_get_view_y(_camera);
var _top_bound = _bottom_bound + camera_get_view_height(_camera);

if (x < _left_bound || x > _right_bound || y < _bottom_bound || y > _top_bound)
{
	instance_destroy(self);	
}