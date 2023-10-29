/// @description Insert description here
// You can write your code in this editor

if (in_transition)
	return;

other.heal(heal_amount);
global.on_player_pick_up_item_event.invoke(heal_amount);

if (pickup_sound != noone)
	obj_sfx_controller.play_sound(pickup_sound);

instance_destroy(self);