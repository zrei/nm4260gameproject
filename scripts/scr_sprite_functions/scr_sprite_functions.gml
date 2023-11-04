// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FourDirectionalSprites(_west_facing, _east_facing, _north_facing, _south_facing) constructor
{
	west_facing = _west_facing;
	east_facing = _east_facing;
	north_facing = _north_facing;
	south_facing = _south_facing;
	
	static get_sprite = function(_cardinal_direction)
	{
		switch (_cardinal_direction)
		{
			case CARDINAL_DIRECTIONS.NORTH:
				return north_facing;
			case CARDINAL_DIRECTIONS.SOUTH:
				return south_facing;
			case CARDINAL_DIRECTIONS.EAST:
				return east_facing;
			case CARDINAL_DIRECTIONS.WEST:
				return west_facing;
		}
	}
}

global.aura_frame_rate = 9;
global.aura_sprites = [spr_emu_power_up_aura, spr_heal_aura];

function on_pause()
{
	for (var _i = 0; _i < array_length(global.aura_sprites); _i++)
		sprite_set_speed(global.aura_sprites[_i], 0, spritespeed_framespersecond);	
}

function on_unpause()
{
	for (var _i = 0; _i < array_length(global.aura_sprites); _i++)
		sprite_set_speed(global.aura_sprites[_i], global.aura_frame_rate, spritespeed_framespersecond);	
}

global.on_pause_menu_opened_event.subscribe(on_pause);
global.on_pause_menu_closed_event.subscribe(on_unpause);