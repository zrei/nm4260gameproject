/// @description Insert description here
// You can write your code in this editor

pause_menu_open = false;
pause_layer = global.menu_layer;

btn_to_use = obj_main_menu_btn;

pause_menu_background = obj_pause_screen;

btn_offset_x = global.viewport_width / 2;
resume_btn_offset_y = 400;
offset_btwn_buttons = 100;

pause_menu_background_instance = noone;
resume_btn_instance = noone;
restart_btn_instance = noone;
help_btn_instance = noone;
exit_to_main_menu_btn_instance = noone;

anchored_top_left_point = new Vector2(0, 0);

instantiate_pause_menu = function()
{
	pause_menu_background_instance = instance_create_layer(0, 0, pause_layer, pause_menu_background);
	
	resume_btn_instance = instance_create_layer(0, 0, pause_layer, obj_main_menu_btn, {
		camera_offset_x: btn_offset_x,
		camera_offset_y: resume_btn_offset_y,
		btn_text: "resume"});
	
	resume_btn_instance.on_pressed.subscribe(close_pause_menu);
	
	restart_btn_instance = instance_create_layer(0, 0, pause_layer, obj_main_menu_btn, {
		camera_offset_x: btn_offset_x,
		camera_offset_y: resume_btn_offset_y + offset_btwn_buttons,
		btn_text: "restart level"});
	restart_btn_instance.on_pressed.subscribe(restart_level);
	
	help_btn_instance = instance_create_layer(0, 0, pause_layer, obj_main_menu_btn, {
		camera_offset_x: btn_offset_x,
		camera_offset_y: resume_btn_offset_y + offset_btwn_buttons * 2,
		btn_text: "help"});
	help_btn_instance.on_pressed.subscribe(open_help);
	
	exit_to_main_menu_btn_instance = instance_create_layer(0, 0, pause_layer, obj_main_menu_btn, {
		camera_offset_x: btn_offset_x,
		camera_offset_y: resume_btn_offset_y + offset_btwn_buttons * 3,
		btn_text: "exit to main menu"});
	exit_to_main_menu_btn_instance.on_pressed.subscribe(goto_main_menu);
	
	instance_deactivate_layer(pause_layer);
}

open_pause_menu = function()
{
	if (pause_menu_open)
		return;

	instance_activate_layer(pause_layer);
	global.on_pause_menu_opened_event.invoke();	
	pause_menu_open = true;
}

close_pause_menu = function()
{
	if (!pause_menu_open)
		return;
	
	instance_deactivate_layer(pause_layer);
	global.on_pause_menu_closed_event.invoke();
	pause_menu_open = false;
}

restart_level = function()
{
	obj_bgm_controller.stop_all_sounds();
	
}

goto_main_menu = function()
{
	
}

open_help = function()
{
	
}

if (pause_layer != -1)
{
	instantiate_pause_menu();	
}