/// @description End room event
// You can write your code in this editor

// Inherit the parent event
if (curr_state != ROOM_STATE.ACTIVE)
	return;

event_inherited();
global.on_arena_end_event.invoke();
obj_sfx_controller.play_sound(snd_door_open);
unlock_doors();
curr_state = ROOM_STATE.COMPLETED;