/// @description Insert description here
// You can write your code in this editor

is_key_obtained = false;

on_obtain_key = function(_args)
{
	is_key_obtained = true;
}

global.on_player_obtain_key_event.subscribe(on_obtain_key);