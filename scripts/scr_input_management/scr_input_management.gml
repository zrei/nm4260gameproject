// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// only blocks global inputs, not local component mouse presses
global.blocked_keys = ds_list_create();
global.blocked_mouse_presses = ds_list_create();

function check_key_pressed(_key)
{
	if (ds_list_find_index(global.blocked_keys, _key) != -1)
		return false;
	return keyboard_check_pressed(_key);
}

function check_key_held(_key)
{
	if (ds_list_find_index(global.blocked_keys, _key) != -1)
		return false;
	return keyboard_check(_key);
}

function block_keys(_keys)
{
	for (var _i = 0; _i < array_length(_keys); _i++)
	{
		if (ds_list_find_index(global.blocked_keys, _keys[_i]) == -1)
			ds_list_add(global.blocked_keys, _keys[_i]);
	}
}

function unblock_keys(_keys)
{
	for (var _i = 0; _i < array_length(_keys); _i++)
	{
		index = ds_list_find_index(global.blocked_keys, _keys[_i]);
		if (index != -1)
			ds_list_delete(global.blocked_keys, index);
	}
}

function check_mouse_pressed(_mouse)
{
	if (ds_list_find_index(global.blocked_mouse_presses, _mouse) != -1)
		return false;
	return mouse_check_button_pressed(_mouse);
}

function check_mouse_held(_mouse)
{
	if (ds_list_find_index(global.blocked_mouse_presses, _mouse) != -1)
		return false;
	return mouse_check_button(_mouse);
}

function block_mouse(_mouses)
{
	for (var _i = 0; _i < array_length(_mouses); _i++)
	{
		if (ds_list_find_index(global.blocked_mouse_presses, _mouses[_i]) == -1)
			ds_list_add(global.blocked_mouse_presses, _mouses[_i]);
	}
}

function unblock_mouse(_mouses)
{
	for (var _i = 0; _i < array_length(_mouses); _i++)
	{
		index = ds_list_find_index(global.blocked_mouse_presses, _mouses[_i]);
		if (index != -1)
			ds_list_delete(global.blocked_mouse_presses, index);
	}
}

global.player_movement_keys = [MOVE_LEFT_KEY, MOVE_RIGHT_KEY, MOVE_DOWN_KEY, MOVE_UP_KEY];
global.player_mouse = [SHOOT_KEY];
global.player_pause = [PAUSE_KEY];
global.player_interact = [INTERACT_BUTTON];

function block_all_player_controls()
{
	block_keys(global.player_movement_keys);
	block_mouse(global.player_mouse);
	block_keys(global.player_interact);
	block_keys(global.player_pause);
}

function unblock_all_player_controls()
{
	unblock_keys(global.player_movement_keys);
	unblock_mouse(global.player_mouse);
	unblock_keys(global.player_interact);
	unblock_keys(global.player_pause);
}