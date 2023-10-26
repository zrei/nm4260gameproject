/// @description Insert description here
// You can write your code in this editor

popup_active = false;
curr_popup = undefined;
check_player_in_range = function()
{
	return collision_circle(x, y, global.signboard_detection_radius, obj_player, false, true);
}