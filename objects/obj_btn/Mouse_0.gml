/// @description Button clicked event
// You can write your code in this editor

if (disable_multiple_press && is_being_pressed)
	return;

is_being_pressed = true;
on_pressed.invoke();
change_sprite(selected_sprite);
play_sound(selected_sound);