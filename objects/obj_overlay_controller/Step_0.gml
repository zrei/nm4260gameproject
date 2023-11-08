/// @description Insert description here
// You can write your code in this editor

if (is_open && check_key_pressed(PAUSE_KEY))
{
	obj_sfx_controller.play_sound(snd_button_press);
	on_close_overlay();
}