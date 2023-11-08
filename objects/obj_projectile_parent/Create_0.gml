/// @description Insert description here
// You can write your code in this editor
sprite_index = projectile_sprite;

get_projectile_element = function()
{
	return projectile_element;
}

get_particle_color = function()
{
	switch (projectile_element)
	{
		case SKILL_ELEMENTS.NONE:
			return c_white;
		case SKILL_ELEMENTS.GRASS:
			return #194a10;
		case SKILL_ELEMENTS.WATER:
			return #41b4fd;
		case SKILL_ELEMENTS.FIRE:
			return #ca4a3b;
	}
}

get_particle_rotation = function()
{
	return (direction + 90) % 360;	
}

get_particle_offset = function()
{
	switch (direction)
	{
		case 0:
			return east_offset;
		case 90:
			return north_offset;
		case 180:
			return west_offset;
		case 270:
			return south_offset;
	}
}

disappear = function()
{
	if (destroy_particles != noone)
		obj_particles_controller.play_particles(destroy_particles, layer, (new Vector2(x, y)).translate_vector(get_particle_offset()), get_particle_color(), 1, get_particle_rotation());
	instance_destroy(self);
}