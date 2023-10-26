/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

is_open = false;

overlay_instance = instance_create_layer(0, 0, global.overlay_layer, obj_pause_screen);
play_again_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_overlay_menu_btn, {
	camera_offset_y: 20,
	btn_text: "play again?"});
go_to_main_menu_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_overlay_menu_btn, {
	camera_offset_y: 70,
	btn_text: "exit to main menu"});

instances = [overlay_instance, play_again_btn_instance, go_to_main_menu_btn_instance];

deactivate_all_instances = function()
{
	for (var _i = 0; _i < array_length(instances); _i++)
		instance_deactivate_object(instances[_i]);
}

activate_all_instances = function()
{
	for (var _i = 0; _i < array_length(instances); _i++)
		instance_activate_object(instances[_i]);
}

show_overlay_menu = function()
{
	is_open = true;
	obj_bgm_controller.stop_all_sounds();
	obj_bgm_controller.play_music(snd_game_over_music);
	activate_all_instances();
}

play_again_btn_instance.on_pressed.subscribe(restart_level_transition);

go_to_main_menu_btn_instance.on_pressed.subscribe(go_to_main_menu_transition);

deactivate_all_instances();
global.on_player_death_event.subscribe(show_overlay_menu);