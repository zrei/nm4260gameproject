/// @description Insert description here
// You can write your code in this editor
on_parent_destroy = function()
{
	instance_destroy(self);
}

if (destroy_with_parent)
	parent.on_destroy_event.subscribe(on_parent_destroy);