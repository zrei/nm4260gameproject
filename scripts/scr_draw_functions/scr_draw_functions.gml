// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.vertical_offset = 2.2;

function draw_text_at_position(_x, _y, _text, _fnt, _clr = c_black, _h_align = fa_center, _v_align = fa_middle, _alpha = 1)
{
	draw_set_halign(_h_align);
	draw_set_valign(_v_align);
	draw_set_font(_fnt);
	draw_set_color(_clr);
	draw_set_alpha(_alpha);
	draw_text(_x, _y + global.vertical_offset, _text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
}

//Created by Andrew McCluskey http://nalgames.com/
function draw_text_outline(_string, _x, _y, _text_color, _outline_color, _outline_width, _outline_fidelity, _separation_ext, _width_ext, _fnt, _h_align = fa_center, _v_align = fa_middle, _alpha = 1)
{
	//x,y: Coordinates to draw
	//str: String to draw
	//arugment3 = outwidth: Width of outline in pixels
	//argument4 = outcol: Colour of outline (main text draws with regular set colour)
	//argument5 = outfidelity: Fidelity of outline (recommended: 4 for small, 8 for medium, 16 for larger. Watch your performance!)
	//argument6 = separation, for the draw_text_EXT command.
	//argument7 = width for the draw_text_EXT command.

	//2,c_dkgray,4,20,500 <Personal favorite preset. (For fnt_3)

	draw_set_halign(_h_align);
	draw_set_valign(_v_align);
	draw_set_font(_fnt);
	draw_set_alpha(_alpha);

	draw_set_color(_outline_color);

	for(var _dto_i = 45; _dto_i < 405; _dto_i += 360 / _outline_fidelity)
	{
	  //draw_text_ext(argument0+lengthdir_x(argument3,dto_i),argument1+lengthdir_y(argument3,dto_i),argument2,argument6,argument7);
	  draw_text_ext(_x + round(lengthdir_x(_outline_width, _dto_i)), _y + global.vertical_offset + round(lengthdir_y(_outline_width, _dto_i)), _string, _separation_ext, _width_ext);
	}

	draw_set_color(_text_color);

	draw_text_ext(_x, _y + global.vertical_offset, _string, _separation_ext, _width_ext);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);
}