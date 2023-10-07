/// @description Insert description here
// You can write your code in this editor

draw_self();

if (!check_if_player_in_range())
	return;
	
draw_text_at_position(x, y - text_y_offset, prompt_text, fnt_element_swapper);