/// @description Insert description here
// You can write your code in this editor

draw_self();

var _healthbar_fill = healthbar_value / global.player_health * 100;
draw_text_at_position(x, y, "HP", fnt_element_swapper);
draw_healthbar(x + 100, y + 38, x + 255, y + 53, _healthbar_fill, c_black, c_red, c_green, 0, true, false);