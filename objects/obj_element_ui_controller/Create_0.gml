/// @description Insert description here
// You can write your code in this editor

self.image_index = 0;

on_change_element = function(_element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.NONE:
			self.image_index = 0;
			break;
		case SKILL_ELEMENTS.WATER:
			self.image_index = 1;
			break;
		case SKILL_ELEMENTS.FIRE:
			self.image_index = 3;
			break;
		case SKILL_ELEMENTS.GRASS:
			self.image_index = 2;
			break;
	}
}

global.on_player_change_element_event.subscribe(on_change_element);


