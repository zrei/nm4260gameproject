/// @description Insert description here
// You can write your code in this editor
if (is_cleared)
	return;

if (is_element_a_weak_to_element_b(obstacle_element, other.get_projectile_element()))
	on_hit_by_projectile_event.invoke(self.id);

// Inherit the parent event
event_inherited();