// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro MOVE_LEFT_KEY ord("A")
#macro MOVE_RIGHT_KEY ord("D")
#macro MOVE_UP_KEY ord("W")
#macro MOVE_DOWN_KEY ord("S")
#macro SHOOT_KEY mb_left
#macro PAUSE_KEY vk_escape

global.player_movement_speed = 5.0;
global.player_health = 10;
global.player_shooting_cooldown = convert_seconds_to_frames(0.5);
global.player_invul_cooldown = convert_seconds_to_frames(1);
global.allow_shooting_while_moving = true;
global.player_knockback_speed = 10.0;
global.player_knockback_time = convert_seconds_to_frames(0.2);
global.player_damage_interval = convert_seconds_to_frames(0.2);
global.player_damage_flash_amount = 4;

global.player_sprites = new FourDirectionalSprites(
	spr_player_left_facing,
	spr_player_right_facing,
	spr_player_front_facing,
	spr_player_back_facing
);
global.player_damaged_sprites = new FourDirectionalSprites(
	spr_player_left_facing_damaged,
	spr_player_right_facing_damaged,
	spr_player_front_facing_damaged,
	spr_player_back_facing_damaged
);

global.player_gun_fire_sound = snd_gun_fire;