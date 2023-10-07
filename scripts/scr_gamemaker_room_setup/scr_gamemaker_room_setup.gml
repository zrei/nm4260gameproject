// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gamemaker_room_start(_dungeon_room_instance){
	// cut off player controls
	obj_dungeon_controller.set_current_room(_dungeon_room_instance, CARDINAL_DIRECTIONS.NORTH, true);
	
	/*_start_callback = function()
	{	
		obj_player.disable_player_controls();
	}
	
	// create paused black screen with appropriate start callback function
	obj_transition_controller.create_black_screen_transition(_dungeon_room_instance.get_top_left_corner_of_room(), _start_callback);
	
	// set dungeon controllers current room
	obj_dungeon_controller.set_current_room(_dungeon_room_instance, CARDINAL_DIRECTIONS.NORTH, true);
	
	// start black screen transition with appropriate end callback function
	_end_callback = function()
	{
		obj_dungeon_controller.start_current_room();
		obj_player.enable_player_controls();
	}
	
	obj_transition_controller.start_black_screen_transition(_end_callback);*/
}