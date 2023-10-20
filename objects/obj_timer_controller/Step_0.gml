/// @description Insert description here
// You can write your code in this editor

if (timer_stopped)
	return;

player_timer += delta_time * global.time_scale;
global.on_timer_changed_event.invoke(get_microseconds_to_closest_second(player_timer));