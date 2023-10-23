/// @description Insert description here
// You can write your code in this editor
if (is_cleared)
	return;

is_cleared = is_element_a_weak_to_element_b(obstacle_element, other.get_projectile_element());

// Inherit the parent event
event_inherited();

if (is_cleared)
{
	sprite_index = cleared_sprite;
	solid = false;
	mask_index = -1;
}