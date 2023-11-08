/// @description Insert description here
// You can write your code in this editor

if (popup_active && !check_player_in_range())
{
	popup_active = false;
	obj_popup_controller.destroy_popup(curr_popup);
	curr_popup = undefined;
}
else if (!popup_active && check_player_in_range())
{
	popup_active = true;
	curr_popup = obj_popup_controller.create_popup(obj_instruction_popup, new Vector2(x, y + popup_y_offset),
	{
		background_sprite: sprite_text
	});
}

if (check_key_pressed(INTERACT_BUTTON) && check_player_in_range())
	perform_interaction();