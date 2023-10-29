/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_healthbar(x - healthbar_left_offset, y - healthbar_bottom_offset - healthbar_height, x - healthbar_left_offset + healthbar_length, y - healthbar_bottom_offset, curr_health / enemy_health * 100, c_black, c_red, c_green, 0, true, false);