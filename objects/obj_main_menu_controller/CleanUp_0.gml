/// @description Insert description here
// You can write your code in this editor

global.on_end_transition_event.unsubscribe(on_end_transition);
clean_up_button_subscriptions(start_game_btn_instance, start_game);
clean_up_button_subscriptions(credits_btn_instance, open_credits);
clean_up_button_subscriptions(how_to_play_btn_instance, open_help);
clean_up_button_subscriptions(quit_game_btn_instance, quit_game);