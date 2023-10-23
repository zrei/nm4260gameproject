/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

requires_key = true;
lock();
popup_instance = undefined;
setup_popup = function()
{
	global.on_popup_controller_ready_event.unsubscribe(setup_popup);
	popup_instance = obj_popup_controller.create_popup(obj_padlock, new Vector2(0, 0), {origin: new Vector2(x + sprite_get_width(sprite_index) / 2, y + sprite_get_height(sprite_index) / 2)});
}

remove_popup = function()
{
	if (popup_instance == undefined)
		return;
	obj_popup_controller.destroy_popup(popup_instance);
	on_unlock_event.unsubscribe(remove_popup);
}

on_unlock_event.subscribe(remove_popup);

if (!instance_exists(obj_popup_controller))
	global.on_popup_controller_ready_event.subscribe(setup_popup);
else
	setup_popup();