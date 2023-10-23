/// @description Insert description here
// You can write your code in this editor

if (curr_state != DOOR_STATE.LOCKED)
	return;
	
obj_sfx_controller.play_sound(snd_key_pickup);
other.obtain_key();
sprite_index = chest_open_sprite;
curr_state = DOOR_STATE.UNLOCKED;