// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.damage_flash_interval = convert_seconds_to_frames(0.2);
global.damage_flash_time = convert_seconds_to_frames(0.6);
global.dir_calculation_angle_offset = 30;
global.enemy_collision_objs = [obj_obstacle_parent, obj_enemy_parent, obj_dungeon_wall];
global.additional_collision_offset = 0;

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

function Buff(_duration) constructor
{
	duration = _duration;
	
	static update_buff_duration = function(_change_amt)
	{
		duration += _change_amt;	
	}
}

function SpeedUpBuff(_duration, _speed_up_amt) : Buff(_duration) constructor
{
	speed_up_amt = _speed_up_amt;	
}

/*function check_collision(_bb_left, _bb_right, _bb_top, _bb_bottom, _objs = [])//_pos, _objs = [])//_bb_left, _bb_right, _bb_top, _bb_bottom, _objs = [])
{
	for (var _i = 0; _i < array_length(_objs); _i++)
		if (collision_rectangle(_bb_left, _bb_top, _bb_right, _bb_bottom, _objs[_i], false, true))
			return true;
			//if (collision_point(_pos.x, _pos.y, _objs[_i], false, true))
			//return true;
	return false;
}

function calculate_movement_offset(_move_speed, _direction)
{
	// x-component: angle 0 is flat line so cos(angle) * hypotenuse of 1
	// y-component: sin(angle) * hypotenuse 1
	return (new Vector2(cos(_direction), sin(_direction))).scale(_move_speed);
}

function movement_respecting_collision(_initial_move_direction, _move_speed, _bb_left, _bb_right, _bb_top, _bb_bottom)//_initial_move_direction, _move_speed, _instance, _curr_pos)//_bb_left, _bb_right, _bb_top, _bb_bottom)
{
	for (var _i = 0; _i < 360; _i += global.dir_calculation_angle_offset)
	{	
		var _curr_direction = (_initial_move_direction + _i) % 360;
		var _curr_offset = calculate_movement_offset(_move_speed, _curr_direction);
		if (!check_collision(_bb_left + _curr_offset.x - global.additional_collision_offset, _bb_right + _curr_offset.x + global.additional_collision_offset, _bb_top - _curr_offset.y - global.additional_collision_offset, _bb_bottom - _curr_offset.y + global.additional_collision_offset, global.enemy_collision_objs))//_curr_pos.add(_curr_offset), global.enemy_collision_objs))//_bb_left + _curr_offset.x - global.additional_collision_offset, _bb_right + _curr_offset.x + global.additional_collision_offset, _bb_top - _curr_offset.y - global.additional_collision_offset, _bb_bottom - _curr_offset.y + global.additional_collision_offset, global.enemy_collision_objs))
		{
			//_instance.direction = _curr_direction;
			//_instance.speed = _move_speed;
			return _curr_offset;
		}
		show_debug_message("Collision logged");
	}
	return new Vector2(0, 0);
	//_instance.speed = 0;
}*/