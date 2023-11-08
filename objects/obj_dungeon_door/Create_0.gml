/// @description Set up state
// You can write your code in this editor

curr_state = DOOR_STATE.UNLOCKED;
self.solid = false;
self.sprite_index = open_sprite;
can_transition = true;
requires_key = false;

on_unlock_event = new VoidEvent();

flip_sprite = function()
{
	if (entrance_direction == CARDINAL_DIRECTIONS.EAST || entrance_direction == CARDINAL_DIRECTIONS.WEST)	
		image_xscale = -image_xscale;
	else
		image_yscale = -image_yscale;
}

lock = function()
{
	self.solid = true;
	self.sprite_index = closed_sprite;
	curr_state = DOOR_STATE.LOCKED;
}

unlock = function()
{
	self.solid = false;
	self.sprite_index = open_sprite;
	curr_state = DOOR_STATE.UNLOCKED;
	if (flip_sprite_on_unlock)
		flip_sprite();
	on_unlock_event.invoke();
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