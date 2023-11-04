/// @description Insert description here
// You can write your code in this editor

completed_movement = false;
to_move = false;
is_active = false;

visible = false;
image_alpha = 1;
spr_xscale = 1;
spr_yscale = 1;

// variables
distance_to_move = 0;
distance_moved_so_far = 0;
move_up_distance = 0;
up_distance_moved_so_far = 0;

direction_to_move = 0;
movement_speed = 0;
move_up_speed = 0;

fade_time = 0;
solid_time = 0;
sprite_to_use = undefined;
text = "";
curr_fade_time = 0;
curr_solid_time = 0;

on_reset_event = new VoidEvent();

set_to_move = function(_cardinal_direction, _distance_to_move, _movement_speed, _solid_time, _fade_time, _text, _spr, _spr_xscale, _spr_yscale)
{	
	is_active = true;
	
	distance_to_move = _distance_to_move;
	direction_to_move = _cardinal_direction == CARDINAL_DIRECTIONS.EAST ? 1 : -1;
	movement_speed = _movement_speed;
	
	fade_time = _fade_time;
	curr_fade_time = _fade_time;
	solid_time = _solid_time;
	curr_solid_time = _solid_time;
	
	text = _text;
	sprite_to_use = _spr;
	spr_xscale = _spr_xscale;
	spr_yscale = _spr_yscale;

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
	x = obj_camera_controller.get_camera_x_position() + starting_pos_offset_x;
	y = obj_camera_controller.get_camera_y_position() + starting_pos_offset_y;
	up_distance_moved_so_far = 0;
	move_up_distance = 0;
	on_reset_event.invoke();
}

check_is_active = function()
{
	return is_active;
}

move_up = function(_move_up_distance, _move_up_speed)
{
	move_up_distance = _move_up_distance;
	move_up_speed = _move_up_speed;	
}