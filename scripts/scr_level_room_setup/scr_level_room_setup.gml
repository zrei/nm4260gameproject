// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamemaker_room_start(_dungeon_room_instance, _entrance_direction) {
	global.on_transition_to_next_room_event.invoke(_dungeon_room_instance, _entrance_direction);
	obj_transition_controller.create_transition(seq_black_screen_fade_out, new Vector2(0, 0));
}

function instantiate_controllers()
{
	global.controllers_layer = layer_create(16000, "Controllers");
	global.player_layer = layer_create(200, "Player");
	global.enemy_layer = layer_create(150, "Enemy");
	global.popups_layer = layer_create(120, "Pop_Ups");
	global.hud_layer = layer_create(50, "HUD");
	global.transition_layer = layer_create(0, "Transition");
}