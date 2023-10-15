/// @description Insert description here
// You can write your code in this editor

global.on_enemy_spawn_event.unsubscribe(on_enemy_spawn);
global.on_enemy_death_event.unsubscribe(on_enemy_die);
global.on_transition_to_next_room_event.unsubscribe(on_transition_to_next_room);
global.on_full_black_screen_event.unsubscribe(on_full_black_screen);
global.on_end_transition_event.unsubscribe(on_transition_end);