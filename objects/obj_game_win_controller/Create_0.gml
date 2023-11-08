/// @description Insert description here
// You can write your code in this editor

overlay_instance = instance_create_layer(0, 0, global.overlay_layer, obj_you_won_screen);
play_again_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_overlay_menu_btn, {
	camera_offset_y: 70,
	btn_text: "play again?"});
go_to_main_menu_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_overlay_menu_btn, {
	camera_offset_y: 120,
	btn_text: "exit to main menu"});

instances = [overlay_instance, play_again_btn_instance, go_to_main_menu_btn_instance];

instance_create_layer(0, 0, global.menu_layer, obj_menu_timer, {
	camera_offset_x: timer_obj_x_offset,
	camera_offset_y: timer_obj_y_offset,
	timer_value: get_microseconds_to_closest_second(global.saved_timer)
});

on_full_black_screen = function()
{
	reset_timer();
	switch (global.curr_transition_purpose) 
	{
		case TRANSITION_PURPOSE.TO_FIRST_LEVEL:
			go_to_first_level();
			break;
		case TRANSITION_PURPOSE.TO_MAIN_MENU:
			go_to_main_menu();
			break;
	}
	global.curr_transition_purpose = TRANSITION_PURPOSE.TO_NEXT_ROOM;
}

play_again_btn_instance.on_pressed.subscribe(go_to_first_level_transition);

go_to_main_menu_transition_override = function()
{	
	obj_bgm_controller.stop_all_music();	
	global.curr_transition_purpose = TRANSITION_PURPOSE.TO_MAIN_MENU;
	obj_transition_controller.create_transition(global.fade_in_transition, new Vector2(0, 0), false, false);
}

go_to_main_menu_btn_instance.on_pressed.subscribe(go_to_main_menu_transition_override);

global.on_full_black_screen_event.subscribe(on_full_black_screen);