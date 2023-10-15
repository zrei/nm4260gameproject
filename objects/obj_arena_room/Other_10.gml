/// @description Start room event
// You can write your code in this editor

if (curr_state != ROOM_STATE.IDLE)
	return;

start_wave_spawners(curr_wave);
lock_doors();

curr_state = ROOM_STATE.ACTIVE;

with (obj_enemy_parent)
{
	can_act = true;
}




