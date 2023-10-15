/// @description Insert description here
// You can write your code in this editor

active_transition = undefined;
active_sequence = undefined;
curr_end_callback = undefined;
pause_when_full = false;

create_transition = function(_sequence, _origin_position, _pause_after_creation = true, _end_callback = undefined)
{
	active_transition = _sequence;
	active_sequence = layer_sequence_create(global.transition_layer, _origin_position.x ,_origin_position.y, active_transition);
	
	curr_end_callback = _end_callback;

	if (_pause_after_creation)
		layer_sequence_pause(active_sequence);
}

play_current_transition = function(_override_end_callback = false, _end_callback = undefined)
{
	if (active_sequence == undefined)
		return;
	
	if (_override_end_callback)
		curr_end_callback = _end_callback;

	if (layer_sequence_is_paused(active_sequence))
		layer_sequence_play(active_sequence);
}

pause_current_transition = function(_override_end_callback = false, _end_callback = undefined)
{
	if (active_sequence == undefined)
		return;
	
	if (_override_end_callback)
		curr_end_callback = _end_callback;
	
	if (layer_sequence_is_paused(active_sequence))
		layer_sequence_pause(active_sequence);
}

check_current_transition = function(_sequence)
{
	return active_sequence == _sequence;
}

