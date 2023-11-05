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
			return c_green;
		case SKILL_ELEMENTS.WATER:
			return c_blue;
		case SKILL_ELEMENTS.FIRE:
			return c_red;
	}
}

get_particle_rotation = function()
{
	return (direction + 90) % 360;	
}

disappear = function()
{
	if (destroy_particles != noone)
		obj_particles_controller.play_particles(destroy_particles, layer, new Vector2(x, y), get_particle_color(), 1, get_particle_rotation());
	instance_destroy(self);
}