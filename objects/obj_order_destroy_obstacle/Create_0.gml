num_obstacles = array_length(obstacles_in_order);
curr_obstacle_to_clear = 0;

num_gates = array_length(gates);

for (var _i = 0; _i < num_gates; _i++)
	gates[_i].lock_gate();

unlock_gates = function()
{
	for (var _i = 0; _i < num_gates; _i++)
		gates[_i].unlock_gate();
}

check_order = function(_obstacle_instance)
{		
	if (obstacles_in_order[curr_obstacle_to_clear] != _obstacle_instance)
		reset_obstacles();
	else
	{
		_obstacle_instance.clear_obstacle();
		curr_obstacle_to_clear += 1;	
		if (curr_obstacle_to_clear == num_obstacles)
			unlock_gates();
	}
}

reset_obstacles = function()
{
	for (var _i = 0; _i < num_obstacles; _i++)
		obstacles_in_order[_i].reset_obstacle();
	curr_obstacle_to_clear = 0;
}

for (var _i = 0; _i < num_obstacles; _i++)
		obstacles_in_order[_i].on_hit_by_projectile_event.subscribe(check_order);