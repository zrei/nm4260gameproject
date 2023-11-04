/// @description Insert description here
// You can write your code in this editor
event_inherited();

is_being_hovered = false
;
sprite_index = unhovered_sprite;
on_pressed = new VoidEvent();

change_sprite = function(_spr)
{
	if (_spr != noone)
		sprite_index = _spr;
}

play_sound = function(_snd)
{
	if (_snd != noone)
		obj_sfx_controller.play_sound(_snd);
}