// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// pass next room
global.on_transition_to_next_room_event = new DungeonTransitionEvent();
global.on_end_dungeon_room_event = new VoidEvent();
global.on_start_dungeon_room_event = new VoidEvent();
global.on_arena_start_event = new VoidEvent();
global.on_arena_end_event = new VoidEvent();
global.on_grid_updated_event = new VoidEvent();
global.on_decoy_crystal_activated_event = new VoidEvent();