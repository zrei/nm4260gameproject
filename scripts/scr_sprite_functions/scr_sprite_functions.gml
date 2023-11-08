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

function SpriteInfo(_spr) constructor
{
	spr = _spr;
	framerate = sprite_get_speed(_spr);
	framerate_type = sprite_get_speed_type(_spr);
}

global.animated_sprites = [spr_emu_power_up_aura, spr_heal_aura, spr_angry_bubble];
global.animated_sprites = array_map(global.animated_sprites, function(_element, _index) { return new SpriteInfo(_element); });
	
function pause_animations()
{
	array_foreach(global.animated_sprites, function(_element, _index) { sprite_set_speed(_element.spr, 0, _element.framerate_type); });
}

function unpause_animations()
{
	array_foreach(global.animated_sprites, function(_element, _index) { sprite_set_speed(_element.spr, _element.framerate, _element.framerate_type); });
	//for (var _i = 0; _i < array_length(global.aura_sprites); _i++)
	//	sprite_set_speed(global.aura_sprites[_i], global.aura_frame_rate, spritespeed_framespersecond);	
}

global.on_pause_menu_opened_event.subscribe(pause_animations);
global.on_pause_menu_closed_event.subscribe(unpause_animations);
global.on_end_transition_event.subscribe(unpause_animations);