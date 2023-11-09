/// @description Insert description here
// You can write your code in this editor
if (!in_transition)
	return;
show_debug_message("Movmeent code");
show_debug_message("Speed: " + string(transit_speed));
show_debug_message("Time: " + string(delta_time));
show_debug_message("Movement_amt: " + string(transit_speed * delta_time * global.time_scale));
if (travel_direction == CARDINAL_DIRECTIONS.EAST)
	x += transit_speed * delta_time * global.time_scale;
else
	x -= transit_speed * delta_time * global.time_scale;

if (abs(x - initial_pos.x) >= travel_distance_x)
	in_transition = false;
else if (abs(x - initial_pos.x) >= travel_distance_x / 2)
	halfway_point_reached = true;
	
if (halfway_point_reached)
	y += transit_speed * delta_time * global.time_scale;
else
	y -= transit_speed * delta_time * global.time_scale;

show_debug_message("Initial_pos: " + string(initial_pos));
show_debug_message("Current pso: " + string(new Vector2(x, y)));
var _scale = min(1, abs(x - initial_pos.x) / travel_distance_x);
show_debug_message("SCALE: " + string(_scale));
image_xscale = _scale;
image_yscale = _scale;

show_debug_message("IN TRANSITION IN STEP CHECK: " + string(in_transition));