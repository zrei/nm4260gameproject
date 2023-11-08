/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

timer_string = "00 : 00";

on_timer_change = function(_new_timer_string)
{
	timer_string = convert_seconds_to_display_time(_new_timer_string);	
}

global.on_timer_changed_event.subscribe(on_timer_change);

time_deductions = [];

update_time_deductions = function()
{
	array_foreach(time_deductions, function(_element, _index) { _element.update_curr_time(delta_time * global.time_scale); });
	time_deductions = array_filter(time_deductions, function(_element, _index) { return _element.curr_time < deduction_popup_move_up_time; });
}

draw_time_deductions = function()
{
	for (var _i = 0; _i < array_length(time_deductions); _i++)
		draw_text_at_position(x + deduction_popup_offset_x, y + deduction_popup_initial_offset_y - deduction_popup_move_up_speed * time_deductions[_i].curr_time, string(time_deductions[_i].change_amount), global.time_deduction_font, c_white);
}

on_timer_affected = function(_change_amount)
{
	array_push(time_deductions, new TimeDeductionPopup(convert_microseconds_to_seconds(_change_amount)));
}

global.on_timer_affected_event.subscribe(on_timer_affected);