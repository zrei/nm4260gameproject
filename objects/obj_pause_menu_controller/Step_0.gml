/// @description Insert description here
// You can write your code in this editor
if (overlay_open)
	return;

if (check_key_pressed(PAUSE_KEY))
{
	if (pause_menu_open)
	{
		obj_sfx_controller.play_sound(snd_button_press);
		close_pause_menu();
	}
	else
	{
		obj_sfx_controller.play_sound(snd_button_press);
		open_pause_menu();
	}
}