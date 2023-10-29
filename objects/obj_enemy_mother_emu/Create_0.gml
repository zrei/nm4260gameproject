/// @description Insert description here
// You can write your code in this editor

image_xscale = 1.5;
image_yscale = 1.5;

curr_swap_timer = over_half_health_swap_time;
curr_element_index = -1;
element_swap_order = [SKILL_ELEMENTS.GRASS, SKILL_ELEMENTS.FIRE, SKILL_ELEMENTS.WATER];

swap_elements = function()
{
	curr_element_index = (curr_element_index + 1) % array_length(element_swap_order);
	enemy_element = element_swap_order[curr_element_index];
}

// Inherit the parent event
event_inherited();