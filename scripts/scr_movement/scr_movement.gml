// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_movement_vector(_dir, _speed)
{
	return new Vector2(cos(degtorad(_dir)), sin(degtorad(_dir))).scale(_speed);	
}

function get_final_pos(_orig_pos, _movement_vector)
{
	return _orig_pos.add(_movement_vector);
}