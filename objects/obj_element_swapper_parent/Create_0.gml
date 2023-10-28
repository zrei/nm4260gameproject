/// @description Insert description here
// You can write your code in this editor

solid = true;
//prompt_text = "Press " + global.element_swapper_interact_button + " to change to " + get_element_string_representation(element_to_swap_to);
popup_active = false;
curr_popup = undefined;

check_player_in_range = function()
{
	return collision_circle(x, y, global.element_collider_radius, obj_player, false, true);
}

perform_interaction = function()
{
	obj_sfx_controller.play_sound(snd_crystal_interact);
	obj_player.set_element(element_to_swap_to);
}