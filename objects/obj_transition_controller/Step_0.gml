/// @description Insert description here
// You can write your code in this editor

if (active_sequence == undefined)
	return;

if (layer_sequence_is_paused(active_sequence))
	return;

if (layer_sequence_is_finished(active_sequence))
{
	layer_sequence_destroy(active_sequence);
	active_transition = undefined;
	active_sequence = undefined;
	if (call_end_callback)
		global.on_end_transition_event.invoke();
}