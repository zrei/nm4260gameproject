/// @description Insert description here
// You can write your code in this editor

initial_pos = new Vector2(x, y);
in_transition = false;
travel_direction = undefined;
travel_distance_x = undefined;
halfway_point_reached = false;

if (has_transit_form)
{
	show_debug_message("Final pos: " + string(final_pos));
	in_transition = true;
	image_xscale = 0;
	image_yscale = 0;
	travel_distance_x = abs(final_pos.x - initial_pos.x);
	show_debug_message("Travel distance: " + string(travel_distance_x));
	travel_direction = final_pos.x > initial_pos.x ? CARDINAL_DIRECTIONS.EAST : CARDINAL_DIRECTIONS.WEST;
}