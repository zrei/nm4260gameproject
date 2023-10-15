// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_text_at_position(_x, _y, _text, _fnt, _clr = c_black, _h_align = fa_center, _v_align = fa_middle, _alpha = 1)
{
	draw_set_halign(_h_align);
	draw_set_valign(_v_align);
	draw_set_font(_fnt);
	draw_set_color(_clr);
	draw_set_alpha(_alpha);
	draw_text(_x, _y, _text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
}