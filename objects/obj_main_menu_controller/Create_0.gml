/// @description Insert description here
// You can write your code in this editor

curr_credits_controller_instance = undefined;
curr_instructions_controller_instance = undefined;

initial_offset = -10;
between_btn_offset = 50;

start_game_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_main_menu_btn, {
	camera_offset_x: 0,
	camera_offset_y: initial_offset,
	btn_text: "start game"});

how_to_play_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_main_menu_btn, {
	camera_offset_x: 0,
	camera_offset_y: initial_offset + between_btn_offset,
	btn_text: "how to play"});
	
credits_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_main_menu_btn, {
	camera_offset_x: 0,
	camera_offset_y: initial_offset + 2 * between_btn_offset,
	btn_text: "credits"});
	
quit_game_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_main_menu_btn, {
	camera_offset_x: 0,
	camera_offset_y: initial_offset + between_btn_offset * 3,
	btn_text: "exit game"});

on_end_transition = function()
{
	room_goto_next();
}

global.on_end_transition_event.subscribe(on_end_transition);

start_game = function()
{
	obj_bgm_controller.stop_all_music();
	obj_transition_controller.create_transition(global.fade_in_transition, new Vector2(0, 0), false);
}

open_credits = function()
{
	// open separate layer	
	hide_main_menu();
	obj_credits_controller.show_overlay_menu();
}

open_help = function()
{
	// open separate layer
	hide_main_menu();
	obj_how_to_play_controller.show_overlay_menu();
}

hide_main_menu = function()
{
	instance_deactivate_object(obj_main_menu_btn);	
}

unhide_main_menu = function()
{
	instance_activate_object(obj_main_menu_btn);
}

start_game_btn_instance.on_pressed.subscribe(start_game);
credits_btn_instance.on_pressed.subscribe(open_credits);
how_to_play_btn_instance.on_pressed.subscribe(open_help);
quit_game_btn_instance.on_pressed.subscribe(quit_game);

obj_credits_controller.on_overlay_hidden.subscribe(unhide_main_menu);
obj_how_to_play_controller.on_overlay_hidden.subscribe(unhide_main_menu);

clean_up_button_subscriptions = function(_button, _callback)
{
	if (instance_exists(_button))
		_button.on_pressed.unsubscribe(_callback);	
}