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

function on_pause()
{
	sprite_set_speed(spr_emu_power_up_aura, 0, spritespeed_framespersecond);	
}

function on_unpause()
{
	sprite_set_speed(spr_emu_power_up_aura, global.aura_frame_rate, spritespeed_framespersecond);	
}

global.on_pause_menu_opened_event.subscribe(on_pause);
global.on_pause_menu_closed_event.subscribe(on_unpause);