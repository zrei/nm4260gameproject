// this will be run after the instances are created so you can use this to set the correct camera position
starting_room = level_1_dungeon_room_0;
entrance_direction = CARDINAL_DIRECTIONS.NORTH;
global.curr_level_bgm = snd_level_1_music;
global.curr_arena_bgm = snd_arena_music;
gamemaker_room_start(starting_room, entrance_direction);