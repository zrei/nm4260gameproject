/// @description Insert description here
// You can write your code in this editor
global.on_player_death_event.subscribe(block_all_player_controls);
global.on_begin_transition_event.subscribe(block_all_player_controls);
global.on_end_transition_event.subscribe(unblock_all_player_controls);
global.on_pause_menu_opened_event.subscribe(block_player_actions);
global.on_pause_menu_closed_event.subscribe(unblock_player_actions);