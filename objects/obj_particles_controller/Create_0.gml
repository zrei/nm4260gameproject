/// @description Insert description here
// You can write your code in this editor

active_particle_systems = [];

play_particles = function(_ps, _layer, _type, _lifetime = 0, _pos = new Vector2(0, 0), _color = c_white, _alpha = 1, _rotation = 0)
{
	var _particles = part_system_create_layer(_layer, false, _ps);
	part_system_position(_particles, _pos.x, _pos.y);
	part_system_color(_particles, _color, _alpha);
	part_system_angle(_particles, _rotation);
	array_push(active_particle_systems, new ParticlesStruct(_particles, _type, _lifetime));
}

update_particles = function()
{
	array_foreach(active_particle_systems, function(_element, _index) { _element.advance_lifetime(delta_time * global.time_scale); });
	active_particle_systems = array_filter(active_particle_systems, function(_element, _index) { 
		if (_element.check_if_done())
		{
			_element.destroy_part_system();
			return false;
		}
		else
			return true;
	});
}

pause_particle_systems = function()
{
	var _temp = function(_element, _index)
	{
		_element.pause_part_system();
	};
	array_foreach(active_particle_systems, _temp);
}

resume_particle_systems = function()
{
	var _temp = function(_element, _index)
	{
		_element.resume_part_system();	
	};
	array_foreach(active_particle_systems, _temp);
}

destroy_particle_systems = function()
{
	var _temp = function(_element, _index)
	{
		_element.destroy_part_system();
	};
	array_foreach(active_particle_systems, _temp);
	active_particle_systems = [];
}

global.on_pause_menu_opened_event.subscribe(pause_particle_systems);
global.on_pause_menu_closed_event.subscribe(resume_particle_systems);