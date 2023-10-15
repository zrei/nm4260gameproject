/// @description Insert description here
// You can write your code in this editor

active_transition = undefined;
active_sequence = undefined;
call_end_callback = false;
pause_when_full = false;

create_transition = function(_sequence, _origin_position, _pause_when_full = true, _call_end_callback = true)
{
	global.on_begin_transition_event.invoke();
	active_transition = _sequence;
	active_sequence = layer_sequence_create(global.transition_layer, _origin_position.x ,_origin_position.y, active_transition);
	call_end_callback = _call_end_callback;
	pause_when_full = _pause_when_full;
}

play_current_transition = function()
{
	if (active_sequence == undefined)
		return;
	
	if (layer_sequence_is_paused(active_sequence))
		layer_sequence_play(active_sequence);
}

pause_current_transition = function()
{
	if (active_sequence == undefined)
		return;
	
	if (!layer_sequence_is_paused(active_sequence))
		layer_sequence_pause(active_sequence);
}

check_current_transition = function(_sequence)
{
	return active_sequence == _sequence;
}

on_camera_moved = function(_position)
{
	if (active_sequence == undefined)
		return;
		
	layer_sequence_x(active_sequence, _position.x);
	layer_sequence_y(active_sequence, _position.y);
}

global.on_camera_moved_event.subscribe(on_camera_moved);