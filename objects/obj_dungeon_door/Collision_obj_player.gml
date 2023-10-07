/// @description Insert description here
// You can write your code in this editor

if (curr_state == DOOR_STATE.LOCKED || !can_transition)
	return;

var _end_callback = function()
{
	obj_dungeon_controller.set_current_room(connected_dungeon_room, entrance_direction, true);
}

obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, _end_callback);

can_transition = false;