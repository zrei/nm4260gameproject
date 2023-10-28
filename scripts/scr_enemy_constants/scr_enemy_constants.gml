// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.damage_flash_interval = convert_seconds_to_frames(0.2);
global.damage_flash_time = convert_seconds_to_frames(0.6);

global.enemy_neutral_sprites = new FourDirectionalSprites(
	spr_neutral_emu_left_facing,
	spr_neutral_emu_right_facing,
	spr_neutral_emu_front_facing,
	spr_neutral_emu_back_facing
);

global.enemy_neutral_damaged_sprites = new FourDirectionalSprites(
	spr_neutral_emu_left_facing_damaged,
	spr_neutral_emu_right_facing_damaged,
	spr_neutral_emu_front_facing_damaged,
	spr_neutral_emu_back_facing_damaged
);

global.enemy_fire_sprites = new FourDirectionalSprites(
	spr_fire_emu_left_facing,
	spr_fire_emu_right_facing,
	spr_fire_emu_front_facing,
	spr_fire_emu_back_facing
);

global.enemy_fire_damaged_sprites = new FourDirectionalSprites(
	spr_fire_emu_left_facing_damaged,
	spr_fire_emu_right_facing_damaged,
	spr_fire_emu_front_facing_damaged,
	spr_fire_emu_back_facing_damaged
);

global.enemy_water_sprites = new FourDirectionalSprites(
	spr_water_emu_left_facing,
	spr_water_emu_right_facing,
	spr_water_emu_front_facing,
	spr_water_emu_back_facing
);

global.enemy_water_damaged_sprites = new FourDirectionalSprites(
	spr_water_emu_left_facing_damaged,
	spr_water_emu_right_facing_damaged,
	spr_water_emu_front_facing_damaged,
	spr_water_emu_back_facing_damaged
);

global.enemy_grass_sprites = new FourDirectionalSprites(
	spr_grass_emu_left_facing,
	spr_grass_emu_right_facing,
	spr_grass_emu_front_facing,
	spr_grass_emu_back_facing
);

global.enemy_grass_damaged_sprites = new FourDirectionalSprites(
	spr_grass_emu_left_facing_damaged,
	spr_grass_emu_right_facing_damaged,
	spr_grass_emu_front_facing_damaged,
	spr_grass_emu_back_facing_damaged
);

function get_normal_sprite(_cardinal_direction, _element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.NONE:
			return global.enemy_neutral_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.FIRE:
			return global.enemy_fire_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.WATER:
			return global.enemy_water_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.GRASS:
			return global.enemy_grass_sprites.get_sprite(_cardinal_direction);
	}
}

function get_damaged_sprite(_cardinal_direction, _element)
{
	switch (_element)
	{
		case SKILL_ELEMENTS.NONE:
			return global.enemy_neutral_damaged_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.FIRE:
			return global.enemy_fire_damaged_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.WATER:
			return global.enemy_water_damaged_sprites.get_sprite(_cardinal_direction);
		case SKILL_ELEMENTS.GRASS:
			return global.enemy_grass_damaged_sprites.get_sprite(_cardinal_direction);
	}
}

function get_enemy_sprite(_use_damaged, _cardinal_direction, _element)
{
	if (_use_damaged)
		return get_damaged_sprite(_cardinal_direction, _element);
	else
		return get_normal_sprite(_cardinal_direction, _element);
}