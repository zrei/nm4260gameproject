/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

gate.lock();
num_obstacles = array_length(obstacles_in_order);
curr_obstacle_to_be_destroyed = 0;

check_correct_hit_order = function(_element, _nested_obstacle_instance)
{
	if (!is_element_a_weak_to_element_b(obstacle_element, _element))
		return;
	
	if (obstacles_in_order[curr_obstacle_to_be_destroyed] != _nested_obstacle_instance)
		reset_obstacles();
	else
	{
		curr_obstacle_to_be_destroyed += 1;
		_nested_obstacle_instance.clear_obstacle();
		if (curr_obstacle_to_be_destroyed >= num_obstacles)
			gate.unlock();
	}
}

for (var _i = 0; _i < num_obstacles; _i++)
	obstacles_in_order[_i].on_hit_by_projectile_event.subscribe(check_correct_hit_order);
	
reset_obstacles = function()
{
	for (var _i = 0; _i < num_obstacles; _i++)
		obstacles_in_order[_i].reset_obstacle();
	curr_obstacle_to_be_destroyed = 0;
}