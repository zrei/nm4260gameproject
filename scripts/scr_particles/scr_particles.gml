// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum PARTICLE_SYSTEM_TYPE
{
	LIMITED_COUNT,
	LIFETIME
}

function ParticlesStruct(_particle_system, _type, _lifetime = 0) constructor
{
	part_system = _particle_system;
	type = _type;
	lifetime = _lifetime;
	is_paused = false;
	is_destroyed = false;
	
	static advance_lifetime = function(_advance_amt)
	{
		if (is_destroyed)
			return;

		if (type == PARTICLE_SYSTEM_TYPE.LIFETIME)
			lifetime -= _advance_amt;	
	}
	
	static check_if_done = function()
	{
		if (is_destroyed)
			return true;

		switch (type)
		{
			case PARTICLE_SYSTEM_TYPE.LIFETIME:
				return lifetime <= 0;
			case PARTICLE_SYSTEM_TYPE.LIMITED_COUNT:
				return part_particles_count(part_system) == 0;
		}
	}
	
	static pause_part_system = function()
	{
		if (is_paused || is_destroyed)
			return;
	
		part_system_automatic_update(part_system, false);
		is_paused = true;
	}
	
	static resume_part_system = function()
	{
		if (!is_paused || is_destroyed)
			return;
			
		part_system_automatic_update(part_system, true);
		is_paused = false;
	}
	
	static destroy_part_system = function()
	{
		if (is_destroyed)
			return;
			
		part_system_destroy(part_system);
		is_destroyed = true;
	}
}