/// @description Insert description here
// You can write your code in this editor

ds_list_destroy(currently_playing_bgm);
global.on_arena_start_event.unsubscribe(on_arena_start);
global.on_arena_end_event.unsubscribe(on_arena_end);