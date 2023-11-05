/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(prev_page_btn_instance))
	prev_page_btn_instance.on_pressed.unsubscribe(to_previous_page);
	
if (instance_exists(next_page_btn_instance))
	next_page_btn_instance.on_pressed.unsubscribe(to_next_page);