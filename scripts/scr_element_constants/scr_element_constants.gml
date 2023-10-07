// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro NUM_ELEMENTS 3

enum SKILL_ELEMENTS {
	FIRE = 0,
	WATER = 1,
	GRASS = 2,
	NONE = 3
}

function is_element_a_weak_to_element_b(_element_a, _element_b)
{
	if (_element_a == SKILL_ELEMENTS.NONE || _element_b == SKILL_ELEMENTS.NONE)
		return false;
	return (_element_a + 1) % NUM_ELEMENTS == _element_b; 
}

function get_element_string_representation(_element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.FIRE:
			return "Fire";
		case SKILL_ELEMENTS.WATER:
			return "Water";
		case SKILL_ELEMENTS.GRASS:
			return "Grass";
		case SKILL_ELEMENTS.NONE:
			return "Neutral";
	}
}