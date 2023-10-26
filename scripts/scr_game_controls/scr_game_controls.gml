// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_main_menu()
{
	room_goto(FIRST_SCREEN);
}

function to_next_level()
{
	obj_bgm_controller.stop_all_sounds();
	room_goto_next();
}

function restart_level()
{
	room_goto_previous();
}

function restart_level_transition()
{
	obj_bgm_controller.stop_all_sounds();
	global.curr_transition_purpose = TRANSITION_PURPOSE.RESTART_LEVEL;
	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, false);	
}

function go_to_main_menu_transition()
{
	obj_bgm_controller.stop_all_sounds();	
	global.curr_transition_purpose = TRANSITION_PURPOSE.TO_MAIN_MENU;
	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, false);
}

function quit_game()
{
	obj_sfx_controller.stop_all_sounds();
	obj_bgm_controller.stop_all_sounds();
	game_end();
}