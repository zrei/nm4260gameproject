/// @description Insert description here
// You can write your code in this editor
if (is_open)
	draw_text_at_position(x + 408, y + 200, "your time: " + convert_seconds_to_display_time(get_microseconds_to_closest_second(obj_timer_controller.player_timer)), global.overlay_font);




