/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (!has_been_pressed)
	obj_transition_controller.create_transition(global.fade_in_transition, new Vector2(0, 0), false);
	
event_inherited();