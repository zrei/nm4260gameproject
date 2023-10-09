// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.projectile_speed = 3;
global.projectile_damage = 3;

function ProjectileVariables(_sprite, _direction, _element, _speed = global.projectile_speed, _damage = global.projectile_damage) constructor
{
	speed = _speed;
	direction = _direction;
	projectile_damage = _damage;
	projectile_sprite = _sprite;
	projectile_element = _element;
}


function get_projectile_variable(_direction, _element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.NONE:
			return new ProjectileVariables(spr_neutral_projectile, _direction, SKILL_ELEMENTS.NONE);
		case SKILL_ELEMENTS.GRASS:
			return new ProjectileVariables(spr_grass_projectile, _direction, SKILL_ELEMENTS.GRASS);
		case SKILL_ELEMENTS.FIRE:
			return new ProjectileVariables(spr_fire_projectile, _direction, SKILL_ELEMENTS.FIRE);
		case SKILL_ELEMENTS.WATER:
			return new ProjectileVariables(spr_water_projectile, _direction, SKILL_ELEMENTS.WATER);
	}
}