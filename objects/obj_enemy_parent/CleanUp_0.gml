/// @description Insert description here
// You can write your code in this editor
event_inherited();

global.on_player_death_event.unsubscribe(on_player_die);
global.on_debug_kill_all_enemies_event.unsubscribe(on_debug_kill_all_enemies);
global.on_begin_transition_event.unsubscribe(on_transition_begin);
global.on_end_transition_event.unsubscribe(on_dungeon_room_end);
global.on_pause_menu_opened_event.unsubscribe(on_pause_menu_opened);
global.on_pause_menu_closed_event.unsubscribe(on_pause_menu_closed);
global.on_start_dungeon_room_event.unsubscribe(on_dungeon_room_begin);
global.on_grid_updated_event.unsubscribe(on_grid_updated);

path_delete(path);