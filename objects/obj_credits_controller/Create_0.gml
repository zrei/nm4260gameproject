/// @description Insert description here
// You can write your code in this editor
prev_page_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_prev_btn);
next_page_btn_instance = instance_create_layer(0, 0, global.menu_layer, obj_next_btn);

// Inherit the parent event
event_inherited();

page_index = 0;
num_pages = array_length(credits_screens);

has_next_page = function()
{
	return page_index < num_pages - 1;	
}

has_previous_page = function()
{
	return page_index > 0;	
}

to_next_page = function()
{
	if (!has_next_page())
	{
		show_debug_message("No next page!");
		return;
	}
	page_index += 1;
	set_page();
}

to_previous_page = function()
{
	if (!has_previous_page())
	{
		show_debug_message("No previous page!");
		return;
	}
	page_index -= 1;
	set_page();
}

set_page = function()
{
	if (has_next_page())
		instance_activate_object(next_page_btn_instance);
	else
		instance_deactivate_object(next_page_btn_instance);
	
	if (has_previous_page())
		instance_activate_object(prev_page_btn_instance);
	else
		instance_deactivate_object(prev_page_btn_instance);
	
	overlay_instance.sprite_index = credits_screens[page_index];	
}

reset_pages = function()
{
	page_index = 0;
	set_page();
}

prev_page_btn_instance.on_pressed.subscribe(to_previous_page);
next_page_btn_instance.on_pressed.subscribe(to_next_page);