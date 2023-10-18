/// @description Insert description here
// You can write your code in this editor

on_end_transition = function()
{
	room_goto_next();
}

global.on_end_transition_event.subscribe(on_end_transition);

start_game = function()
{
	obj_bgm_controller.stop_all_sounds();
	obj_transition_controller.create_transition(global.fade_in_transition, new Vector2(0, 0), false);
}

open_credits = function()
{
	// open separate layer	
}

open_help = function()
{
	// open separate layer
}

quit_game = function()
{
	obj_bgm_controller.stop_all_sounds();
	game_end();
}

start_button.on_pressed.subscribe(start_game);
credits_button.on_pressed.subscribe(open_credits);
help_button.on_pressed.subscribe(open_help);
quit_button.on_pressed.subscribe(quit_game);

clean_up_button_subscriptions = function(_button, _callback)
{
	if (_button != undefined)
		_button.on_pressed.unsubscribe(_callback);	
}