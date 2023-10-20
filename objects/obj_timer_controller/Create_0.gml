/// @description Insert description here
// You can write your code in this editor

player_timer = load_timer();
global.on_timer_changed_event.invoke(get_microseconds_to_closest_second(player_timer));

timer_stopped = true;

stop_timer = function()
{
	timer_stopped = true;
}

resume_timer = function()
{
	timer_stopped = false;
}

add_to_timer = function(_amount)
{
	player_timer += _amount;
	global.on_timer_changed_event.invoke(get_microseconds_to_closest_second(player_timer));
}

on_level_complete = function()
{
	save_timer(player_timer);	
}

global.on_end_transition_event.subscribe(resume_timer);
global.on_complete_level_event.subscribe(on_level_complete);
global.on_timer_affected_event.subscribe(add_to_timer);