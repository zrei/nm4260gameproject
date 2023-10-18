/// @description Insert description here
// You can write your code in this editor

global.on_end_transition_event.unsubscribe(on_end_transition);
clean_up_button_subscriptions(start_button, start_game);
clean_up_button_subscriptions(credits_button, open_credits);
clean_up_button_subscriptions(help_button, open_help);
clean_up_button_subscriptions(quit_button, quit_game);