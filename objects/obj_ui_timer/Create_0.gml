/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

timer_string = "00 : 00";

on_timer_change = function(_new_timer_string)
{
	timer_string = convert_seconds_to_display_time(_new_timer_string);	
}

global.on_timer_changed_event.subscribe(on_timer_change);