/// @description Draw the text
// You can write your code in this editor
draw_self();

draw_text_at_position(x + text_pos_offset_x, y + text_pos_offset_y, btn_text, button_font, is_being_hovered ? global.hovered_color : global.unhovered_color);