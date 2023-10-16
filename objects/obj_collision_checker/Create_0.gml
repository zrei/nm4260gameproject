/// @description Insert description here
// You can write your code in this editor

layer_id = layer_get_id("Walls");
map_id = layer_tilemap_get_id(lay_id);

get_collision_at_position = function(_x, _y)
{
	return tilemap_get_at_pixel(map_id, _x, _y);
}