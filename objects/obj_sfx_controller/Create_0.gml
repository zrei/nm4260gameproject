/// @description Insert description here
// You can write your code in this editor

currently_playing_sounds = ds_list_create();

check_through_sounds = function()
{
	var _temp = ds_list_create();
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (audio_is_playing(currently_playing_sounds[| _i]))
			ds_list_add(_temp, currently_playing_sounds[| _i]);
	}
	ds_list_destroy(currently_playing_sounds);
	currently_playing_sounds = _temp;
}

check_through_excluded_sounds = function(_sound_instance, _excluded_sounds)
{ 
	_curr_sound_instance = _sound_instance;
	return array_any(_excluded_sounds, function (_element, _index) { 
		return asset_get_index(audio_get_name(_curr_sound_instance)) == _element; 
	});
}

pause_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!check_through_excluded_sounds(currently_playing_sounds[| _i], _excluded_sounds))
			audio_pause_sound(currently_playing_sounds[| _i]);
	}
}

stop_all_sounds = function(_excluded_sounds = [])
{
	var _new_list = ds_list_create();
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!check_through_excluded_sounds(currently_playing_sounds[| _i], _excluded_sounds))
			audio_stop_sound(currently_playing_sounds[| _i]);
		else
			ds_list_add(_new_list, currently_playing_sounds[| _i]);
	}
	ds_list_destroy(currently_playing_sounds);
	currently_playing_sounds = _new_list;
}

resume_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!check_through_excluded_sounds(currently_playing_sounds[| _i], _excluded_sounds))
			audio_resume_sound(currently_playing_sounds[| _i]);
	}
}

play_sound = function(_sound_asset, _effects = undefined)
{
	var _sound_instance = audio_play_sound(_sound_asset, 0, false);	
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
	var _index = ds_list_find_index(currently_playing_sounds, _sound_instance);
	if (_index != -1)
	{
		audio_stop_sound(_sound_instance);
		ds_list_delete(currently_playing_sounds, _index);
	}
}

on_pause_menu_opened = function()
{
	pause_all_sounds([snd_button_press]);
}

on_pause_menu_closed = function()
{
	resume_all_sounds();
}

global.on_pause_menu_opened_event.subscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.subscribe(on_pause_menu_closed);