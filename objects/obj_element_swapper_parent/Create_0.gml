/// @description Insert description here
// You can write your code in this editor

solid = true;
prompt_text = "Press " + global.element_swapper_interact_button + " to change to " + get_element_string_representation(element_to_swap_to);

check_if_player_in_range = function()
{
	return collision_circle(x, y, global.element_collider_radius, obj_player, false, true);
}