/// @description Insert description here
// You can write your code in this editor

draw_self();

if (visible)
{
	draw_sprite_ext(sprite_to_use, -1, x + 15, y, 0.5, 0.5, 0, c_white, image_alpha);
	draw_text_at_position(x + 30, y, text, global.notification_font, c_black, fa_left, fa_middle, image_alpha);
}