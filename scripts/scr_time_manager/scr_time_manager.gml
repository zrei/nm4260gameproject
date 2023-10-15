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