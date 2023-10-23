/// @description Insert description here
// You can write your code in this editor
event_inherited();

sprite_index = spr_neutral;

on_change_element = function(_element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.NONE:
			sprite_index = spr_neutral;
			break;
		case SKILL_ELEMENTS.WATER:
			sprite_index = spr_water;
			break;
		case SKILL_ELEMENTS.FIRE:
			sprite_index = spr_fire;
			break;
		case SKILL_ELEMENTS.GRASS:
			sprite_index = spr_grass;
			break;
	}
}

global.on_player_change_element_event.subscribe(on_change_element);


