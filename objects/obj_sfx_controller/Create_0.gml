/// @description Insert description here
// You can write your code in this editor

currently_playing_sounds = ds_list_create();

check_through_sounds = function()
{
	_temp = ds_list_create();
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (audio_is_playing(currently_playing_sounds[| _i]))
			ds_list_add(_temp, currently_playing_sounds[| _i]);
	}
	ds_list_destroy(currently_playing_sounds);
	currently_playing_sounds = _temp;
}

pause_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[| _i]))
			audio_pause_sound(currently_playing_sounds[| _i]);
	}
}


stop_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[| _i]))
			audio_stop_sound(currently_playing_sounds[| _i]);
	}
	ds_list_clear(currently_playing_sounds);
	for (var _i = 0; _i < array_length(_excluded_sounds); _i++)
		ds_list_add(currently_playing_sounds, _excluded_sounds[_i]);
}

resume_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[| _i]))
			audio_resume_sound(currently_playing_sounds[| _i]);
	}
}

play_sound = function(_sound_asset, _effects = undefined)
{
	_sound_instance = audio_play_sound(_sound_asset, 0, false);	
	ds_list_add(currently_playing_sounds, _sound_instance); 
	return _sound_instance;
}

resume_sound = function(_sound_instance)
{
	if (ds_list_find_index(currently_playing_sounds, _sound_instance) != -1)
		audio_resume_sound(_sound_instance);
}

pause_sound = function(_sound_instance)
{
	if (ds_list_find_index(currently_playing_sounds, _sound_instance) != -1)
		audio_pause_sound(_sound_instance);
}

stop_sound = function(_sound_instance)
{
	_index = ds_list_find_index(currently_playing_sounds, _sound_instance);
	if (_index != -1)
	{
		audio_stop_sound(_sound_instance);
		ds_list_delete(currently_playing_sounds, _index);
	}
}

on_pause_menu_opened = function()
{
	// can exclude UI sounds.
	// a sound object...
	pause_all_sounds();
}

on_pause_menu_closed = function()
{
	resume_all_sounds();
}

global.on_pause_menu_opened_event.subscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.subscribe(on_pause_menu_closed);