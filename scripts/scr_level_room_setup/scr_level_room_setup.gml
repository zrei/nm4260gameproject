// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro FIRST_SCREEN SplashScreen
#macro FIRST_LEVEL Level1Transition

function gamemaker_room_start(_dungeon_room_instance, _entrance_direction) {
	obj_bgm_controller.stop_all_sounds();
	instantiate_enemy_layer();
	instantiate_player();
	instantiate_popup_layer();
	instantiate_hud_layer();
	instantiate_transition_layer();
	instantiate_overlay_layer();
	instantiate_menu_layer();
	instantiate_controllers();
	obj_bgm_controller.play_music(global.curr_level_bgm);
	global.on_transition_to_next_room_event.invoke(_dungeon_room_instance, _entrance_direction);
	obj_transition_controller.create_transition(seq_black_screen_fade_out, new Vector2(0, 0));
}

function instantiate_controllers()
{
	global.controllers_layer = layer_create(-20, "Controllers");
	instance_create_layer(0, 0, global.controllers_layer, obj_dungeon_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_how_to_play_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_pause_menu_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_ui_notification_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_popup_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_timer_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_hud_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_game_over_menu_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_collision_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_particles_controller);
}

function instantiate_main_menu_controllers()
{
	global.controllers_layer = layer_create(-20, "Controllers");
	instance_create_layer(0, 0, global.controllers_layer, obj_how_to_play_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_credits_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_main_menu_controller);
}

function instantiate_end_screen_controllers()
{
	global.controllers_layer = layer_create(-20, "Controllers");
	instance_create_layer(0, 0, global.controllers_layer, obj_game_win_controller);
}

function instantiate_enemy_layer()
{
	global.enemy_layer = layer_create(-40, "Enemy");
}

function instantiate_player()
{
	global.player_layer = layer_create(-60, "Player");
	instance_create_layer(0, 0, global.player_layer, obj_player);
}

function instantiate_popup_layer()
{
	global.popups_layer = layer_create(-80, "Pop_Ups");
}

function instantiate_hud_layer()
{
	global.hud_layer = layer_create(-100, "HUD");
	instance_create_layer(0, 0, global.hud_layer, obj_ui_element_indicator);
	instance_create_layer(0, 0, global.hud_layer, obj_ui_key_indicator);
	instance_create_layer(0, 0, global.hud_layer, obj_ui_healthbar);
	instance_create_layer(600, 30, global.hud_layer, obj_ui_timer);
	instance_create_layer(0, 0, global.hud_layer, obj_ui_pause_button);
}

function instantiate_transition_layer()
{
	global.transition_layer = layer_create(-160, "Transition");
}

function instantiate_overlay_layer()
{
	global.overlay_layer = layer_create(-120, "Overlay");	
}

function instantiate_menu_layer()
{
	global.menu_layer = layer_create(-140, "Menu");
}