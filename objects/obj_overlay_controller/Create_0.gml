/// @description Insert description here
// You can write your code in this editor

on_overlay_hidden = new VoidEvent();
is_open = false;
overlay_instance = instance_create_layer(0, 0, global.overlay_layer, overlay_obj);
back_button_instance = instance_create_layer(0, 0, global.menu_layer, obj_back_btn);

on_close_overlay = function()
{
	on_overlay_hidden.invoke();
	hide_overlay_menu();
}

hide_overlay_menu = function()
{
	event_user(1);
}

show_overlay_menu = function()
{
	event_user(0);
}


hide_overlay_menu();
back_button_instance.on_pressed.subscribe(on_close_overlay);