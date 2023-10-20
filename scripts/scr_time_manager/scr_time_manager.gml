// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.time_scale = 1;

function pause_time()
{
	global.time_scale = 0;
}

function resume_time()
{
	global.time_scale = 1;
}

function convert_seconds_to_display_time(_seconds)
{
	var _number_of_minutes = floor(_seconds /  60);
	var _number_of_seconds = _seconds % 60;
	var _seconds_string = string(_number_of_seconds);
	if (_number_of_seconds < 10)
		_seconds_string = "0" + _seconds_string;
		
	return string(_number_of_minutes) + " : " + _seconds_string; 
}