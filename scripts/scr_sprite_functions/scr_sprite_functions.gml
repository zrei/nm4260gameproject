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