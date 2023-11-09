/// @description Set up state
// You can write your code in this editor

curr_state = ROOM_STATE.IDLE;
spawned_points = ds_list_create();

min_angle = 0;
max_angle = 360;

spawned_number = 0;
number_to_spawn = random_range(min_spawn_number, max_spawn_number);
position = new Vector2(x, y);

spawn_enemy = function()
{
	if (curr_state != ROOM_STATE.ACTIVE)
		return;
	if (spawned_number >= number_to_spawn)
		return;
	while (true)
	{
		var _angle = random_range(min_angle, max_angle);
		var _spawn_radius = random_range(min_spawn_radius, max_spawn_radius);
		var _spawn_point = calculate_point_on_circle_perimeter(position, _angle, _spawn_radius);
		if (ds_list_find_index(spawned_points, _spawn_point) != -1)
			continue;
		ds_list_add(spawned_points, _spawn_point);
		instance_create_layer(_spawn_point.x, _spawn_point.y, "Enemy", enemy_to_spawn);
		break;
	}
	
	global.on_enemy_spawn_event.invoke();
	spawned_number += 1;
}

start_spawning = function()
{
	curr_state = ROOM_STATE.ACTIVE;	
	for (var _i = 0; _i < number_to_spawn; _i++)
		spawn_enemy();
	curr_state = ROOM_STATE.IDLE;
	spawned_number = 0;
}

get_wave = function()
{
	return wave_number;
}