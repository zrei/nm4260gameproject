// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// pass next room
global.on_transition_to_next_room_eventsi = new IntEvent();

global.on_begin_transition = new IntEvent();
global.on_transition_to_next_room_event = new IntEvent();
global.on_start_black_screen_transition_event = new VoidEvent();
global.on_end_black_screen_transition_event = new VoidEvent();