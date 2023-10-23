/// @description Insert description here
// You can write your code in this editor

popup_layer = layer_get_id("Pop_ups");
popups = ds_list_create();

create_popup = function(_popup, _position = new Vector2(0, 0), _additional_information = {})
{
	if (popup_layer == undefined || popup_layer == -1)
		return;

	var _popup_instance = instance_create_layer(_position.x, _position.y, popup_layer, _popup, _additional_information);
	show_debug_message("Popup instance: " + string(_popup_instance));
	ds_list_add(popups, _popup_instance);
	return _popup_instance;
}

destroy_popup = function(_popup_instance)
{
	if (popup_layer == undefined || popup_layer == -1)
		return;
	show_debug_message("Popup instance: " + string(_popup_instance));
	var _index = ds_list_find_index(popups, _popup_instance);
	
	if (_index != -1)
	{
		ds_list_delete(popups, _index);
		instance_destroy(_popup_instance);	
	}
}

global.on_popup_controller_ready_event.invoke();