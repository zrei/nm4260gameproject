// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_new_player_face_angle(_player_x, _player_y, _mouse_x, _mouse_y)
{
	_player_center = new Vector2(_player_x, _player_y);
	_mouse_pos = new Vector2(_mouse_x, _mouse_y);
	_distance_vector = calculate_distance_vector_between_two_points(_mouse_pos, _player_center);
	_full_direction_angle = calculate_angle_between_two_vectors(global.right_vector, _distance_vector);
	if (_distance_vector.y < 0)
	{
		_full_direction_angle = 360 - _full_direction_angle;	
	}

	if (_full_direction_angle < 45)
	{
		return 0;	
	} else if (_full_direction_angle >= 45 && _full_direction_angle < 135)
	{
		return 90;	
	} else if (_full_direction_angle >= 135 && _full_direction_angle < 225)
	{
		return 180;	
	} else if (_full_direction_angle >= 225 && _full_direction_angle < 315)
	{
		return 270;
	} else
		return 0;
}
