/// @description Insert description here
// You can write your code in this editor

on_hit_by_projectile_event.invoke(other.get_projectile_element(), self.id);

// Inherit the parent event
event_inherited();