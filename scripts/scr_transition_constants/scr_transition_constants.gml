// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum TRANSITION_PURPOSE
{
	TO_NEXT_ROOM,
	TO_NEXT_LEVEL,
	TO_MAIN_MENU,
	RESTART_LEVEL, 
	TO_FIRST_LEVEL
}

global.fade_in_transition = seq_black_screen_fade_in;
global.fade_out_transition = seq_black_screen_fade_out;
global.curr_transition_purpose = TRANSITION_PURPOSE.TO_NEXT_ROOM;