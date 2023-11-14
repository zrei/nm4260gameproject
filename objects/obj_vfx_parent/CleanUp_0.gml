/// @description Insert description here
// You can write your code in this editor

if (destroy_with_parent)
	parent.on_destroy_event.unsubscribe(on_parent_destroy);
	
if (!stationary)
	parent.on_change_face_event.unsubscribe(on_parent_change_face);
	
global.on_pause_menu_opened_event.unsubscribe(pause_animation);
global.on_pause_menu_closed_event.unsubscribe(unpause_animation);
global.on_end_transition_event.unsubscribe(unpause_animation);
global.on_player_death_event.unsubscribe(pause_animation);