/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

requires_key = true;
lock();
setup_popup = function()
{
	global.on_popup_controller_ready_event.unsubscribe(setup_popup);
	obj_popup_controller.create_popup(obj_padlock, new Vector2(0, 0), {origin: new Vector2(x, y)});
}

if (!instance_exists(obj_popup_controller))
	global.on_popup_controller_ready_event.subscribe(setup_popup);
else
	setup_popup();