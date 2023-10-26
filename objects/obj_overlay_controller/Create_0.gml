/// @description Insert description here
// You can write your code in this editor

on_overlay_hidden = new VoidEvent();
is_open = false;
overlay_instance = instance_create_layer(0, 0, global.overlay_layer, overlay_obj);
back_button_instance = instance_create_layer(0, 0, global.menu_layer, obj_back_btn);

on_close_overlay = function()
{
	show_debug_message("Close overlay called");
	on_overlay_hidden.invoke();
	hide_overlay_menu();
}

hide_overlay_menu = function()
{
	instance_deactivate_object(overlay_instance);
	instance_deactivate_object(back_button_instance);
	is_open = false;
}

show_overlay_menu = function()
{
	instance_activate_object(overlay_instance);
	show_debug_message("Position: " + string(overlay_instance.x) + ", " + string(overlay_instance.y));
	instance_activate_object(back_button_instance);
	is_open = true;
}


hide_overlay_menu();
back_button_instance.on_pressed.subscribe(on_close_overlay);