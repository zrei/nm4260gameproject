/// @description Set up state
// You can write your code in this editor

curr_state = DOOR_STATE.UNLOCKED;
self.solid = false;
self.image_index = 1;
can_transition = true;
requires_key = false;

lock = function()
{
	self.solid = true;
	self.image_index = 0;
	curr_state = DOOR_STATE.LOCKED;
}

unlock = function()
{
	if (requires_key)
		if (!obj_player.check_key_obtained())
			return;
	self.solid = false;
	self.image_index = 1;
	curr_state = DOOR_STATE.UNLOCKED;
}

on_transition_end = function()
{
	can_transition = true;
}

on_transition_to_next_room = function(_ignore1, _ignore2)
{
	can_transition = false;	
}

global.on_end_transition_event.subscribe(on_transition_end);
global.on_transition_to_next_room_event.subscribe(on_transition_to_next_room);