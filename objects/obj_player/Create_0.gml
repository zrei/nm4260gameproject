/// @description Initialise variables
// You can write your code in this editor

// stats
movement_speed = global.player_movement_speed;
player_health = global.player_health;

// movement variables
target_pos_x = x;
target_pos_y = y;
moving = false;
can_move = true;

// cooldowns
curr_mouse_cooldown = 0;

// shooting
curr_facing_position = 90; // in angles, initially facing forward
shooting_cooldown = global.player_shooting_cooldown;
can_shoot = true;

pause_cooldowns = false;

function disable_player_controls()
{
	self.can_move = false;
	self.can_shoot = false;
	self.pause_cooldowns = true;
}

function enable_player_controls()
{
	self.can_move = true;
	self.can_shoot = true;
	self.pause_cooldowns = false;
}