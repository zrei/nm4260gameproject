/// @description Insert description here
// You can write your code in this editor

if (curr_flash_interval > 0 && curr_flash_amount_remaining > 0)
{
	curr_flash_interval -= global.time_scale * delta_time;
	if (curr_flash_interval <= 0)
	{
		image_blend = is_red ? c_white : flash_blend_color;
		is_red = !is_red;
		curr_flash_amount_remaining -= 1;	
		curr_flash_interval = flash_interval;
	}
}
else
	image_blend = c_white;



