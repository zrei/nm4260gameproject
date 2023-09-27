/// @description Set player target position
// You can write your code in this editor

// have to put in a check for within bounds

if (curr_mouse_cooldown > 0)
	return;

target_pos_x = mouse_x;
target_pos_y = mouse_y;
show_debug_message("Set target position to: {0}, {1}", target_pos_x, target_pos_y);
curr_mouse_cooldown = global.player_mouse_cooldown;



