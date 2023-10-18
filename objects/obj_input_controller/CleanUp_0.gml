/// @description Insert description here
// You can write your code in this editor
global.on_player_death_event.unsubscribe(block_all_player_controls);
global.on_begin_transition_event.unsubscribe(block_all_player_controls);
global.on_end_transition_event.unsubscribe(unblock_all_player_controls);
global.on_pause_menu_opened_event.unsubscribe(block_player_actions);
global.on_pause_menu_closed_event.unsubscribe(unblock_player_actions);