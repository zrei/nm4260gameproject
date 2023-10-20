/// @description Insert description here
// You can write your code in this editor

global.on_end_transition_event.unsubscribe(resume_timer);
global.on_complete_level_event.unsubscribe(on_level_complete);
global.on_timer_affected_event.unsubscribe(add_to_timer);