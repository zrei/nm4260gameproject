/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
global.on_begin_transition_event.subscribe(pause_time);
global.on_end_transition_event.subscribe(resume_time);
global.on_pause_menu_opened_event.subscribe(pause_time);
global.on_pause_menu_closed_event.subscribe(resume_time);
global.on_player_death_event.subscribe(pause_time);