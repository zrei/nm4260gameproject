// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.entrance_offset = 50;

enum ROOM_STATE {
	IDLE,
	ACTIVE,
	COMPLETED
}

enum DOOR_STATE {
	LOCKED,
	UNLOCKED
}

enum CARDINAL_DIRECTIONS {
	NORTH,
	SOUTH,
	EAST,
	WEST
}

function get_opposite_cardinal_direction(_cardinal_direction)
{
	switch (_cardinal_direction)
	{
		case CARDINAL_DIRECTIONS.NORTH:
			return CARDINAL_DIRECTIONS.SOUTH;
		case CARDINAL_DIRECTIONS.SOUTH:
			return CARDINAL_DIRECTIONS.NORTH;
		case CARDINAL_DIRECTIONS.EAST:
			return CARDINAL_DIRECTIONS.WEST;
		case CARDINAL_DIRECTIONS.WEST:
			return CARDINAL_DIRECTIONS.EAST;
	}
}

function DungeonRoomDimensions(_top_left_corner_x, _top_left_corner_y, _length, _width) constructor
{
	top_left_corner = new Vector2(_top_left_corner_x, _top_left_corner_y);
	lower_bound = top_left_corner.y + _width;
	upper_bound = top_left_corner.y;
	left_bound = top_left_corner.x;
	right_bound = top_left_corner.x + _length;
	
	center = new Vector2(_top_left_corner_x + _length / 2, _top_left_corner_y + _width / 2);

	static get_starting_position = function(_cardinal_direction)
	{
		switch(_cardinal_direction)
		{
			case CARDINAL_DIRECTIONS.NORTH:
				return new Vector2(self.center.x, self.lower_bound - global.entrance_offset);
			case CARDINAL_DIRECTIONS.SOUTH:
				return new Vector2(self.center.x, self.upper_bound + global.entrance_offset);
			case CARDINAL_DIRECTIONS.EAST:
				return new Vector2(self.left_bound + global.entrance_offset, self.center.y);
			case CARDINAL_DIRECTIONS.WEST:
				return new Vector2(self.right_bound - global.entrance_offset, self.center.y);
		}
		
	}
}