// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamemaker_room_start(_dungeon_room_instance, _entrance_direction, _bgm) {
	/*instantiate_enemy_layer();
	instantiate_player();
	instantiate_popup_layer();
	instantiate_hud_layer();
	instantiate_menu_layer();
	instantiate_controllers();*/
	obj_bgm_controller.play_music(_bgm);
	global.on_transition_to_next_room_event.invoke(_dungeon_room_instance, _entrance_direction);
	obj_transition_controller.create_transition(seq_black_screen_fade_out, new Vector2(0, 0));
}

function instantiate_controllers()
{
	global.controllers_layer = layer_create(120, "Controllers");
	instance_create_layer(0, 0, global.controllers_layer, obj_dungeon_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_pause_menu_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_ui_notification_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_popup_controller);
	instance_create_layer(0, 0, global.controllers_layer, obj_timer_controller);
	
}

function instantiate_enemy_layer()
{
	global.enemy_layer = layer_create(100, "Enemy");
}

function instantiate_player()
{
	global.player_layer = layer_create(80, "Player");
	instance_create_layer(0, 0, global.player_layer, obj_player);
}

function instantiate_popup_layer()
{
	global.popups_layer = layer_create(60, "Pop_Ups");
}

function instantiate_hud_layer()
{
	global.hud_layer = layer_create(40, "HUD");
}

function instantiate_transition_layer()
{
	global.transition_layer = layer_create(20, "Transition");
}

function instantiate_menu_layer()
{
	global.menu_layer = layer_create(0, "Menu");
}