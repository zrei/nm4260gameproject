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

function convert_seconds_to_miliseconds(_seconds)
{
	return _seconds * 1000;	
}

function convert_seconds_to_microseconds(_seconds)
{
	return _seconds * 1000 * 1000;	
}

function get_microseconds_to_closest_second(_microseconds)
{
	return floor(_microseconds / (1000 * 1000));	
}

function convert_microseconds_to_seconds(_microseconds)
{
	return _microseconds / 1000 / 1000;
}