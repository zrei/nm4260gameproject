// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_face_angle(_x1, _y1, _x2, _y2)
{
	_obj_1_center = new Vector2(_x1, _y1);
	_obj_2_center = new Vector2(_x2, _y2);
	_distance_vector = calculate_distance_vector_between_two_points(_obj_2_center, _obj_1_center);
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