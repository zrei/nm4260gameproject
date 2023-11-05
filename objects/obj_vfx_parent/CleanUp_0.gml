/// @description Insert description here
// You can write your code in this editor

if (destroy_with_parent)
	parent.on_destroy_event.unsubscribe(on_parent_destroy);
	
if (!stationary)
	parent.on_change_face_event.unsubscribe(on_parent_change_face);