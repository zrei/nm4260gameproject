// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_vfx_override_parameters(_vfx_obj, _pos, _depth, _img_xscale, _img_yscale, _stationary, _destroy_on_loop_complete, _destroy_with_parent, _parent = undefined, _offset_from_parent = new Vector2(0, 0))
{
	instance_create_depth(_pos.x, _pos.y, _depth, _vfx_obj, {
		stationary: _stationary,
		destroy_on_loop_complete: _destroy_on_loop_complete,
		destroy_with_parent: _destroy_with_parent,
		parent: _parent,
		image_xscale: _img_xscale,
		image_yscale: _img_yscale,
		offset_from_parent: _offset_from_parent
	});
}

function spawn_vfx(_vfx_obj, _pos, _depth, _img_xscale = 1, _img_yscale = 1, _parent = undefined, _offset_from_parent = new Vector2(0, 0))
{
	instance_create_depth(_pos.x, _pos.y, _depth, _vfx_obj, {
		image_xscale: _img_xscale,
		image_yscale: _img_yscale,
		parent: _parent,
		offset_from_parent: _offset_from_parent
	});	
}