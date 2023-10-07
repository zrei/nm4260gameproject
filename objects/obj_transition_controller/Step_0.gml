/// @description Insert description here
// You can write your code in this editor

if (active_sequence == undefined)
	return;


if (layer_sequence_is_paused(active_sequence))
	return;

if (layer_sequence_is_finished(active_sequence))
{
	show_debug_message("Sequence finished");
	layer_sequence_destroy(active_sequence);
	active_transition = undefined;
	active_sequence = undefined;
	_temp_callback = curr_end_callback;
	curr_end_callback = undefined;
	if (_temp_callback != undefined)
	{
		show_debug_message("Call end callback");
		_temp_callback();
	}
}