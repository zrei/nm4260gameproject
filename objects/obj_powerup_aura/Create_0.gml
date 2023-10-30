/// @description Insert description here
// You can write your code in this editor
on_parent_destroy = function()
{
	instance_destroy(self);
}

x = to_follow.x;
y = to_follow.y;

to_follow.on_destroy_event.subscribe(on_parent_destroy);