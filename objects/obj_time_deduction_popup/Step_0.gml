/// @description Insert description here
// You can write your code in this editor

if (curr_solid_time > 0)
{
	curr_solid_time -= delta_time * global.time_scale;
	if (curr_solid_time <= 0)
		curr_fade_time = deduction_fade_time;
}
else if (curr_fade_time > 0)
{
	y -= delta_time * global.time_scale * deduction_popup_move_up_speed;
	image_alpha = curr_fade_time / deduction_fade_time;
	curr_fade_time -= delta_time * global.time_scale;
	if (curr_fade_time <= 0)
		obj_popup_controller.destroy_popup(self.id);
}
