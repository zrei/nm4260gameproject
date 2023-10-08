/// @description Start room event
// You can write your code in this editor

if (curr_state != ROOM_STATE.IDLE)
	return;
	
start_spawners();
	
curr_state = ROOM_STATE.ACTIVE;

enable_enemies();