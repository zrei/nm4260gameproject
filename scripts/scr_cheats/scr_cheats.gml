// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.string_map_to_cheat = ds_map_create();
curr_out_variable = undefined; // a workaround since this language doesn't have out variables :(

function destroy_map()
{
	ds_map_destroy(global.string_map_to_cheat);
}

function Cheat(_callback, _purpose, _command) constructor
{
	callback = _callback;
	purpose = _purpose;
	command = _command;
	
	function toString()
	{
		return command + "\n" + purpose;
	}
}

global.invincible_player = false;

function toggle_invincible_player(_toggle)
{
	if (parse_boolean(_toggle))
		global.invincible_player = 	curr_out_variable;
	
	show_message("Player is invincible: " + bool_to_string(global.invincible_player));
}

ds_map_add(string_map_to_cheat, "player.invincible", new Cheat( 
	toggle_invincible_player,
	"Sets whether the player is invincible",
	"player.invincible | player.invincible T/F"));

global.enable_player_one_hit_kill = false;

function toggle_player_one_hit_kill(_toggle)
{
	if (parse_boolean(_toggle))
		global.enable_player_one_hit_kill = curr_out_variable;
	
	show_message("Player defeats enemy in one hit: " + bool_to_string(global.enable_player_one_hit_kill));
}

ds_map_add(string_map_to_cheat, "player.onehitkill", new Cheat( 
	toggle_player_one_hit_kill,
	"Sets whether the player defeats enemies in one hit",
	"player.onehitkill | player.onehitkill T/F"));

global.no_player_projectile_cooldown = false;

function toggle_player_no_projectile_cooldown(_toggle)
{
	if (parse_boolean(_toggle))
		global.no_player_projectile_cooldown = curr_out_variable;
		
	show_message("Player has no projectile cooldown: " + bool_to_string(global.no_player_projectile_cooldown));
}

ds_map_add(string_map_to_cheat, "player.noprojectilecooldown", new Cheat(
	toggle_player_no_projectile_cooldown,
	"Sets whether the player has no projectile cooldown",
	"player.noprojectilecooldown | player.noprojectilecooldown T/F"));

global.no_enemy_attack_cooldown = false;

function toggle_no_enemy_attack_cooldown(_toggle)
{
	if (parse_boolean(_toggle))
		global.no_enemy_attack_cooldown = curr_out_variable;
		
	show_message("Enemy has no attack cooldown: " + bool_to_string(global.no_enemy_attack_cooldown));
}

ds_map_add(string_map_to_cheat, "enemy.noattackcooldown", new Cheat( 
	toggle_no_enemy_attack_cooldown,
	"Sets whether enemies have no attack cooldown",
	"enemy.noattackcooldown | enemy.noattackcooldown T/F"));

global.invincible_enemy = false;

function toggle_invincible_enemy(_toggle)
{
	if (parse_boolean(_toggle))
		global.invincible_enemy = curr_out_variable;
		
	show_message("Enemies are invincible: " + bool_to_string(global.invincible_enemy));
}

ds_map_add(string_map_to_cheat, "enemy.invincible", new Cheat( 
	toggle_invincible_enemy,
	"Sets whether enemies are invincible",
	"enemy.invincible | enemy.invincible T/F"));

global.enemy_one_hit_kill = false;

function toggle_enemy_one_hit_kill(_toggle)
{
	if (parse_boolean(_toggle))
		global.enemy_one_hit_kill = curr_out_variable;
		
	show_message("Enemies kill player in one hit: " + bool_to_string(global.enemy_one_hit_kill));
}

ds_map_add(string_map_to_cheat, "enemy.onehitkill", new Cheat( 
	toggle_enemy_one_hit_kill,
	"Sets whether enemies kill player in one hit",
	"enemy.onehitkill | enemy.onehitkill T/F"));

function parse_boolean(_input)
{
	_true_values = ["true", "t"];
	_false_values = ["false", "f"];
	_lowercase_string = string_lower(_input);
	if (array_contains(_true_values, _lowercase_string))
	{
		curr_out_variable = true;
		return true;
	}
	else if (array_contains(_false_values, _lowercase_string))
	{
		curr_out_variable = false;
		return true;
	}
	else
		return false;
}

function parse_integer(_input)
{
	_stripped_input = string_digits(_input);
	
	if (_stripped_input == "")
		return false;
		
	curr_out_variable = real(_stripped_input);
	return true;
}

function bool_to_string(_bool)
{
	if (_bool)
		return "true";
	else
		return "false";
}

function parse_cheats_and_execute(_input)
{
	_split_input = string_split(string_trim(_input), " ");
	_first_input = undefined;
	_second_output = undefined;
	
	if (array_length(_split_input) >= 1)
		_first_input = _split_input[0];
	
	if (array_length(_split_input) >= 2)
		_second_output = _split_input[1];
		
	_cheat = ds_map_find_value(global.string_map_to_cheat, _first_input);
	
	if (is_undefined(_cheat))
	{
		show_message("Unrecognised cheat. Check list of cheats with showallcheats");
		return;
	}
		
	_cheat.callback(_second_output);
}

function get_cheat_instructions()
{
	_formatted_string = "";
	_all_cheats = ds_map_values_to_array(global.string_map_to_cheat);
	_num_cheats = array_length(_all_cheats);
	
	for (var _i = 0; _i < _num_cheats; _i++)
		_formatted_string += string(_all_cheats[_i]) + "\n\n";
	
	return _formatted_string;
}

function show_all_cheats(_ignore)
{
	show_message(get_cheat_instructions());
}

ds_map_add(string_map_to_cheat, "showallcheats", new Cheat(
	show_all_cheats,
	"List all cheats",
	"showallcheats"));
	
function kill_all_enemies(_ignore)
{
	global.on_debug_kill_all_enemies_event.invoke([]);
	show_debug_message("Killed all enemies");
}

ds_map_add(string_map_to_cheat, "enemy.killall", new Cheat( 
	kill_all_enemies,
	"Kills all enemies",
	"enemy.killall"));
	
function player_take_damage(_input)
{
	if (!parse_integer(_input))
	{
		show_message("Damage value provided was not a number");
		return;
	}
	
	if (curr_out_variable <= 0)
	{
		show_message("Invalid number provided for damage value");
		return;
	}
	
	obj_player.take_damage(curr_out_variable, CARDINAL_DIRECTIONS.NORTH);
}

ds_map_add(string_map_to_cheat, "player.takedamage", new Cheat( 
	player_take_damage,
	"Cause player to take damage",
	"player.takedamage *damage value*"));
	
function player_heal(_input)
{
	if (!parse_integer(_input))
	{
		show_message("Heal amount provided was not a number");
		return;
	}
	
	if (curr_out_variable <= 0)
	{
		show_message("Invalid number provided for heal amount");
		return;
	}
	
	obj_player.heal(curr_out_variable);
}

ds_map_add(string_map_to_cheat, "player.heal", new Cheat(
	player_heal,
	"Heals player",
	"player.heal *heal amount*"));

function player_full_heal(_ignore)
{
	obj_player.set_health(global.player_health);	
}

ds_map_add(string_map_to_cheat, "player.fullheal", new Cheat( 
	player_full_heal,
	"Fully heals player",
	"player.fullheal"));

function set_player_health(_input)
{
	if (!parse_integer(_input))
	{
		show_message("Health provided was not a number");
		return;
	}
	
	if (curr_out_variable < 0)
	{
		show_message("Invalid number provided for health");
		return;
	}
	
	obj_player.set_health(curr_out_variable);
}

ds_map_add(string_map_to_cheat, "player.sethealth", new Cheat(
	set_player_health,
	"Sets player health",
	"player.sethealth *health*"));
	
function kill_player(_ignore)
{
	obj_player.set_health(0);
	show_debug_message("Killed player");
}

ds_map_add(string_map_to_cheat, "player.die", new Cheat(
	kill_player,
	"Kills player",
	"player.die"));