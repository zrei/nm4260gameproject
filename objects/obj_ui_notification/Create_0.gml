/// @description Insert description here
// You can write your code in this editor

completed_movement = false;
to_move = false;
is_active = false;

visible = false;
image_alpha = 1;

// variables
distance_to_move = 0;
distance_moved_so_far = 0;
direction_to_move = 0;
movement_speed = 0;
fade_time = 0;
text = "";
curr_fade_time = 0;

	
set_to_move = function(_cardinal_direction, _distance_to_move, _movement_speed, _fade_time, _text)
{	
	is_active = true;
	
	distance_to_move = _distance_to_move;
	direction_to_move = _cardinal_direction == CARDINAL_DIRECTIONS.EAST ? 1 : -1;
	movement_speed = _movement_speed;
	
	fade_time = _fade_time;
	curr_fade_time = _fade_time;
	text = _text;

	if (movement_speed % distance_to_move != 0)
		show_debug_message("The speed is not a multiple of the distance");
		
	visible = true;
	to_move = true;
}

reset = function()
{
	distance_moved_so_far = 0;
	to_move = false;
	completed_movement = false;
	is_active = false;
	visible = false;
	image_alpha = 1;
}

check_is_active = function()
{
	return is_active;
}