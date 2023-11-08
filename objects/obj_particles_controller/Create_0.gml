/// @description Insert description here
// You can write your code in this editor

active_particle_systems = [];

play_particles = function(_ps, _layer, _pos = new Vector2(0, 0), _color = c_white, _alpha = 1, _rotation = 0)
{
	var _particles = part_system_create_layer(_layer, false, _ps);
	part_system_automatic_update(_particles, false);
	part_system_position(_particles, _pos.x, _pos.y);
	part_system_color(_particles, _color, _alpha);
	part_system_angle(_particles, _rotation);
	array_push(active_particle_systems, _particles);
}

advance_particles = function()
{
	array_foreach(active_particle_systems, function(_element, _index) { part_system_update(_element); });
	active_particle_systems = array_filter(active_particle_systems, function(_element, _index) { 
		if (part_particles_count(_element) == 0)
		{
			part_system_destroy(_element);
			return false;
		}
		else
			return true;
	});
}