// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function go_to_main_menu()
{
	obj_bgm_controller.stop_all_sounds();
	obj_sfx_controller.stop_all_sounds();
}

function restart_level()
{
	obj_bgm_controller.stop_all_sounds();
	obj_sfx_controller.stop_all_sounds();
	room_restart();
}

function quit_game()
{
	obj_sfx_controller.stop_all_sounds();
	obj_bgm_controller.stop_all_sounds();
	game_end();
}

function to_next_level()
{
	obj_bgm_controller.stop_all_sounds();
	obj_sfx_controller.stop_all_sounds();
	room_goto_next();
}