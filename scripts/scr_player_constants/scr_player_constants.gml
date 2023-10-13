// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro MOVE_LEFT_KEY ord("A")
#macro MOVE_RIGHT_KEY ord("D")
#macro MOVE_UP_KEY ord("W")
#macro MOVE_DOWN_KEY ord("S")
#macro CHECK_SHOOT_KEY mouse_check_button_pressed(mb_left)

global.player_movement_speed = 5.0;
global.player_health = 10;
global.player_shooting_cooldown = convert_seconds_to_frames(0.5);
global.player_invul_cooldown = convert_seconds_to_frames(1);
global.allow_shooting_while_moving = true;
global.player_knockback_speed = 10.0;
global.player_knockback_time = convert_seconds_to_frames(0.2);

global.player_sprites = new FourDirectionalSprites(
	spr_player_left_facing,
	spr_player_right_facing,
	spr_player_front_facing,
	spr_player_back_facing
);

global.player_gun_fire_sound = snd_gun_fire;