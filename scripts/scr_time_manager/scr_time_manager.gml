// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.delta_time = 1;
global.unscaled_delta_time = 1;

function pause_time()
{
	global.delta_time = 0;
}

function resume_time()
{
	global.delta_time = 1;
}