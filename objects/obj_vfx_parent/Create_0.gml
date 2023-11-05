/// @description Insert description here
// You can write your code in this editor
on_parent_destroy = function()
{
	instance_destroy(self);
}

on_parent_change_face = function(_new_offset)
{
	offset_from_parent = _new_offset;	
}
if (destroy_with_parent)
	parent.on_destroy_event.subscribe(on_parent_destroy);
	
if (!stationary)
	parent.on_change_face_event.subscribe(on_parent_change_face);