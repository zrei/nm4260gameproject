/// @description Update room event
// You can write your code in this editor

num_active_enemies += curr_update_amount;

if (curr_state == ROOM_STATE.ACTIVE && num_active_enemies <= 0)
{
	curr_wave += 1;
	start_wave_spawners(curr_wave);
	enable_enemies();
}