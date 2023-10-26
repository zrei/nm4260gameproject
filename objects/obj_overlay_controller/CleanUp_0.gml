/// @description Insert description here
// You can write your code in this editor

if (instance_exists(back_button_instance))
	back_button_instance.on_pressed.unsubscribe(on_close_overlay);