/// @description Insert description here
// You can write your code in this editor

if (curr_state == DOOR_STATE.LOCKED || !can_transition)
	return;

show_debug_message("Object is: " + string(id));
can_transition = false;
global.curr_transition_purpose = TRANSITION_PURPOSE.TO_NEXT_ROOM;
global.on_transition_to_next_room_event.invoke(connected_dungeon_room, entrance_direction);
obj_transition_controller.create_transition(seq_black_screen_fade_in_out, obj_dungeon_controller.get_current_room_top_left_corner());