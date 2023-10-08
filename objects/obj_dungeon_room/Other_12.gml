/// @description End room event
// You can write your code in this editor

if (curr_state != ROOM_STATE.ACTIVE)
		return;
		
with (obj_enemy_parent)
{
	despawn();	
}
	
curr_state = ROOM_STATE.IDLE;
		
num_active_enemies = 0;