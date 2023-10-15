// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamemaker_room_start(_dungeon_room_instance, _entrance_direction) {
	global.on_transition_to_next_room_event.invoke(_dungeon_room_instance, _entrance_direction);
	obj_transition_controller.create_transition(seq_black_screen_fade_out, new Vector2(0, 0));
}