/// @description Insert description here
// You can write your code in this editor

if (!is_fading)
	return;

fade_timer -= delta_time * global.time_scale;
image_alpha = fade_timer / fade_time;

if (fade_timer <= 0)
	instance_destroy(self);