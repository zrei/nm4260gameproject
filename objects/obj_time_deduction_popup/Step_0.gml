/// @description Insert description here
// You can write your code in this editor
curr_time += delta_time * global.time_scale;

if (curr_time >= deduction_popup_time)
	obj_popup_controller.destroy_popup(self.id);
	
y -= delta_time * global.time_scale * deduction_popup_move_up_speed;