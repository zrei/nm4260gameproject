/// @description Insert description here
// You can write your code in this editor

currently_playing_bgm = ds_list_create();

check_through_excluded_sounds = function(_sound_instance, _excluded_sounds)
{ 
	_curr_sound_instance = _sound_instance;
	return array_any(_excluded_sounds, function (_element, _index) { 
		return asset_get_index(audio_get_name(_curr_sound_instance)) == _element; 
	});
}

play_music = function(_sound_asset, _loop = true)
{
	var _sound_instance = audio_play_sound(_sound_asset, 0, _loop);	
	ds_list_add(currently_playing_bgm, _sound_instance);
}

stop_music = function(_sound_instance)
{
	var _index = ds_list_find_index(currently_playing_bgm, _sound_instance);
	if (_index != -1)
	{
		audio_stop_sound(_sound_instance);
		ds_list_delete(currently_playing_bgm, _index);
	}
}


pause_all_music = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_bgm); _i++)
	{
		if (!check_through_excluded_sounds(currently_playing_bgm[| _i], _excluded_sounds))
			audio_pause_sound(currently_playing_bgm[| _i]);
	}
}


stop_all_music = function(_excluded_sounds = [])
{
	var _new_list = ds_list_create();
	for (var _i = 0; _i < ds_list_size(currently_playing_bgm); _i++)
	{
		if (!check_through_excluded_sounds(currently_playing_bgm[| _i], _excluded_sounds))
			audio_stop_sound(currently_playing_bgm[| _i]);
		else
			ds_list_add(_new_list, currently_playing_bgm[| _i]);
	}
	ds_list_destroy(currently_playing_bgm);
	currently_playing_bgm = _new_list;
}

resume_all_music = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_bgm); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_bgm[_i]))
			audio_resume_sound(currently_playing_bgm[| _i]);
	}
}

on_arena_start = function()
{
	stop_all_music();
	play_music(global.curr_arena_bgm);
}

on_arena_end = function()
{
	stop_all_music();
	play_music(global.curr_level_bgm);
}

global.on_arena_start_event.subscribe(on_arena_start);
global.on_arena_end_event.subscribe(on_arena_end);