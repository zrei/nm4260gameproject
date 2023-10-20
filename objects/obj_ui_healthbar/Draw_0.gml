/// @description Insert description here
// You can write your code in this editor

var _healthbar_fill = healthbar_value / global.player_health * 100;
draw_text_at_position(x, y, "HP", fnt_element_swapper);
draw_healthbar(x + 10, y, x + 70, y + 10, _healthbar_fill, c_black, c_red, c_green, 0, true, false);