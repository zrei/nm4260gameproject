/// @description Insert description here
// You can write your code in this editor

if (curr_state == DOOR_STATE.LOCKED && obj_player.check_key_obtained())
{
	unlock();
}

if (curr_state == DOOR_STATE.UNLOCKED && can_transition)
{
	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, false);
	can_transition = false;
	show_debug_message("TO NEXT LEVEL");
}