/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord(global.element_swapper_interact_button)))
	if (check_if_player_in_range())
		perform_interaction();