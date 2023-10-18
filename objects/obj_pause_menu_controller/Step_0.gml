/// @description Insert description here
// You can write your code in this editor

if (check_key_pressed(PAUSE_KEY))
{
	if (pause_menu_open)
	{
		close_pause_menu();
	}
	else
	{
		open_pause_menu();
		
	}
}