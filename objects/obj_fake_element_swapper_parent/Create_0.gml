/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

perform_interaction = function()
{
	obj_player.take_damage_non_directional(damage_value);
	obj_sfx_controller.play_sound(snd_decoy_destroy);
	if (popup_active)
		obj_popup_controller.destroy_popup(curr_popup);
	instance_destroy(self);
}