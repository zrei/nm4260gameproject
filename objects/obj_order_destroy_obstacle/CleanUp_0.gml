/// @description Insert description here
// You can write your code in this editor

for (var _i = 0; _i < num_obstacles; _i++)
{
	var _nested_obstacle = obstacles_in_order[_i];
	if (_nested_obstacle != undefined)
		_nested_obstacle.on_hit_by_projectile_event.unsubscribe(check_correct_hit_order);
}