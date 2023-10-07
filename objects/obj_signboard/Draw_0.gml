/// @description Insert description here
// You can write your code in this editor

draw_self();

if (!check_player_in_range())
	return;

draw_text_at_position(x, y - text_y_offset, text_to_display, fnt_element_swapper);