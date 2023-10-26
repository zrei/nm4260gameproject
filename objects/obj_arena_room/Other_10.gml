/// @description Start room event
// You can write your code in this editor

if (curr_state != ROOM_STATE.IDLE)
	return;

start_wave_spawners(curr_wave);
obj_sfx_controller.play_sound(snd_door_close);
lock_doors();

curr_state = ROOM_STATE.ACTIVE;

global.on_start_dungeon_room_event.invoke();
global.on_arena_start_event.invoke();