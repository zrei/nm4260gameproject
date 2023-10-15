/// @description Insert description here
// You can write your code in this editor

healthbar_value = global.player_health;

on_player_change_health = function(_new_health_value)
{
	healthbar_value = _new_health_value;
}

global.on_player_change_health_event.subscribe(on_player_change_health);