/// @description Insert description here
// You can write your code in this editor

layers_to_move = [global.hud_layer, global.transition_layer, global.menu_layer];
num_layers = array_length(layers_to_move);

move_layers = function(_new_position)
{
	for (var _i = 0; _i < num_layers; _i++)
		shift_layer(num_layers[_i]);
}

shift_layer = function(_layer_id, _new_position)
{
	layer_x(_layer_id, _new_position.x);
	layer_y(_layer_id, _new_position.y);
}

global.on_camera_moved_event.subscribe(move_layers);