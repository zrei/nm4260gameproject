/// @description Insert description here
// You can write your code in this editor

on_hit_by_projectile_event = new IntEvent();
is_cleared = false;
// Inherit the parent event
event_inherited();

clear_obstacle = function()
{
	solid = false;
	visible = false;
	mask_index = -1;
	is_cleared = true;
}

shift_player = function()
{
	switch (direction_to_push)
	{
		case CARDINAL_DIRECTIONS.NORTH:
			obj_player.move_instanteneously(new Vector2(obj_player.x, bb_top - obj_player.sprite_height / 2), undefined);
			break;
		case CARDINAL_DIRECTIONS.SOUTH:
			obj_player.move_instanteneously(new Vector2(obj_player.x, bb_bottom + obj_player.sprite_height / 2), undefined);
			break;
		case CARDINAL_DIRECTIONS.EAST:
			obj_player.move_instanteneously(new Vector2(bb_right + obj_player.sprite_width / 2, obj_player.y), undefined);
			break;
		case CARDINAL_DIRECTIONS.WEST:
			obj_player.move_instanteneously(new Vector2(bb_left - obj_player.sprite_width / 2, obj_player.y), undefined);
			break;
	}
}

reset_obstacle = function()
{
	var _to_play_sound = is_cleared;
	solid = true;
	visible = true;
	mask_index = sprite_index;
	is_cleared = false;
	
	if (collision_rectangle(x - sprite_width / 2, y - sprite_height, x + sprite_width / 2, y, obj_player, false, true))
	{	
		show_debug_message("Player stuck");
		shift_player();
	}
	return _to_play_sound;
}

reset_obstacle();