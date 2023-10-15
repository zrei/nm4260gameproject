/// @description Insert description here
// You can write your code in this editor

visible = false;

on_pause_screen_opened = function()
{
	visible = true;
}

on_pause_screen_closed = function()
{
	visible = false;
}

global.on_pause_time_event.subscribe(on_pause_screen_opened);