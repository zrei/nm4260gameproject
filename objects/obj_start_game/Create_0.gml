/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

on_end_transition = function()
{
	room_goto_next();
}

global.on_end_transition_event.subscribe(on_end_transition);