// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro FRAME_RATE_PER_SECOND 60

function convert_frame_rate_to_seconds(_frame_rate_in_seconds)
{
	return _frame_rate_in_seconds / FRAME_RATE_PER_SECOND;
}

function convert_seconds_to_frames(_seconds)
{
	return _seconds * FRAME_RATE_PER_SECOND;	
}