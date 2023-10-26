/// @description Insert description here
// You can write your code in this editor
global.on_begin_transition_event.unsubscribe(pause_time);
global.on_end_transition_event.unsubscribe(resume_time);
global.on_pause_menu_opened_event.unsubscribe(pause_time);
global.on_pause_menu_closed_event.unsubscribe(resume_time);
global.on_player_death_event.unsubscribe(pause_time);