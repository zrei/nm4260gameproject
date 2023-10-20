// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.saved_timer = 0;

function reset_timer()
{
	global.saved_timer = 0;
}

function save_timer(_time)
{
	global.saved_timer = _time;
}

function load_timer()
{
	return global.saved_timer;
}