/// @description Insert description here
// You can write your code in this editor

if (curr_state != DOOR_STATE.UNLOCKED && obj_player.check_key_obtained() && can_transition)
{
	unlock();
	obj_player.disable_player_controls();
	
	var _end_callback = function()
	{
		room_goto_next();
	}

	obj_transition_controller.create_transition(global.fade_in_transition, obj_dungeon_controller.get_current_room_top_left_corner(), false, _end_callback);
	can_transition = false;
	show_debug_message("TO NEXT LEVEL");
}