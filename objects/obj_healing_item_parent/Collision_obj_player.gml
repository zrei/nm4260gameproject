/// @description Insert description here
// You can write your code in this editor

if (in_transition)
	return;

other.heal(heal_amount);
global.on_player_pick_up_item_event.invoke([item_name]);
instance_destroy(self);