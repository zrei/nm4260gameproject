/// @description Move towards player
// You can write your code in this editor
if (attack_cooldown > 0)
{
	attack_cooldown -= 1;
	if (attack_cooldown <= 0)
		can_act = true;
}

if (!can_act)
{
	return;
}

if (distance_to_point(obj_player.x, obj_player.y) > global.point_reached_threshold)
{
	move_towards_point(obj_player.x, obj_player.y, movement_speed);
	curr_face_angle = calculate_face_angle(x, y, obj_player.x, obj_player.y);
	sprite_index = enemy_sprites.get_sprite(map_angles_to_cardinal_directions(curr_face_angle));
	moving = true;
} else
{
	speed = 0;	
	moving = false;
}




