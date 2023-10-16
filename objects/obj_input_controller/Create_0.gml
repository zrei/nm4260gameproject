/// @description Insert description here
// You can write your code in this editor
global.on_player_death_event.subscribe(block_all_player_controls);
global.on_begin_transition_event.subscribe(block_all_player_controls);
global.on_end_transition_event.subscribe(unblock_all_player_controls);