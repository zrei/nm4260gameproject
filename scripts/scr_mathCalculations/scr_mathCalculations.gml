// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// vector calculations
function Vector2(_x = 0, _y = 0) constructor
{
	x = _x;
	y = _y;
	
	function toString()
	{
		return "x: " + string(x) + ", y: " + string(y);	
	}
	
	static flip_x = function()
	{
		return new Vector2(-x, y);
	}
	
	static flip_y = function()
	{
		return new Vector2(x, -y);	
	}
	
	static flip_x_and_y = function()
	{
		return new Vector2(-x, -y);	
	}
	
	static calculate_magnitude = function()
	{
		return sqrt(sqr(x) + sqr(y));	
	}
	
	static calculate_unit_vector = function()
	{
		magnitude = self.calculate_magnitude();
		return new Vector2(x / magnitude, y / magnitude);
	}
}

// four cardinal directions
global.up_vector = new Vector2(0, 1);
global.right_vector = new Vector2(1, 0);
global.down_vector = global.up_vector.flip_y();
global.left_vector = global.right_vector.flip_x();

// both _start_point and _end_point should be Vector2 structs
function calculate_distance_vector_between_two_points(_end_point, _start_point)
{
	// need to flip y due to the flipped x and y axes
	return (new Vector2(_end_point.x - _start_point.x, _end_point.y - _start_point.y)).flip_y();
}

function calculate_angle_between_two_vectors(_vector_a, _vector_b)
{
	return radtodeg(arccos(dot_product_normalized(_vector_a.x, _vector_a.y, _vector_b.x, _vector_b.y)));
}

