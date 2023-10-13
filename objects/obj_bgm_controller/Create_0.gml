/// @description Insert description here
// You can write your code in this editor

currently_playing_bgm = ds_list_create();

play_music = function(_sound_asset, _loop = true)
{
	_sound_instance = audio_play_sound(_sound_asset, 0, _loop);	
	ds_list_add(currently_playing_bgm, _sound_instance);
}

stop_music = function(_sound_instance)
{
	_index = ds_list_find_index(currently_playing_bgm, _sound_instance);
	if (_index != -1)
	{
		audio_stop_sound(_sound_instance);
		ds_list_delete(currently_playing_bgm, _index);
	}
}


pause_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[_i]))
			audio_pause_sound(currently_playing_sounds[_i]);
	}
}


stop_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[_i]))
			audio_stop_sound(currently_playing_sounds[_i]);
	}
	ds_list_clear(currently_playing_sounds);
	for (var _i = 0; _i < array_length(_excluded_sounds); _i++)
		ds_list_add(currently_playing_sounds, _excluded_sounds[_i]);
}

resume_all_sounds = function(_excluded_sounds = [])
{
	for (var _i = 0; _i < ds_list_size(currently_playing_sounds); _i++)
	{
		if (!array_contains(_excluded_sounds, currently_playing_sounds[_i]))
			audio_resume_sound(currently_playing_sounds[_i]);
	}
}