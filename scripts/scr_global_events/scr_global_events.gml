// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CustomEvent() constructor
{
	subscribers = ds_list_create();
	
	static subscribe = function(_callback)
	{
		ds_list_add(subscribers, _callback);
	}
	
	static unsubscribe = function(_callback)
	{
		_index = ds_list_find_index(subscribers, _callback);
		if (_index != -1)
			ds_list_delete(subscribers, _index);
	}
	
	static invoke = function(_args)
	{
		for (var _i = 0; _i < ds_list_size(subscribers); _i++)
			subscribers[| _i](_args);
	}
}

function VoidEvent() : CustomEvent() constructor
{
	static invoke = function()
	{
		for (var _i = 0; _i < ds_list_size(subscribers); _i++)
			subscribers[| _i]();
	}	
}

function IntEvent() : CustomEvent() constructor
{
	static invoke = function(_int)
	{
		for (var _i = 0; _i < ds_list_size(subscribers); _i++)
			subscribers[| _i](_int);
	}
}

function DungeonTransitionEvent() : CustomEvent() constructor
{
	static invoke = function(_dungeon_room_instance, _direction_of_entrance)
	{
		for (var _i = 0; _i < ds_list_size(subscribers); _i++)
			subscribers[| _i](_dungeon_room_instance, _direction_of_entrance);
	}
}

function PositionEvent() : CustomEvent() constructor
{
	static invoke = function(_position)
	{
		if (!is_instanceof(_position, Vector2))
		{
			show_debug_message("Argument provided is not a Vector2!");
			return;
		}
		
		for (var _i = 0; _i < ds_list_size(subscribers); _i++)
			subscribers[| _i](_position);
	}
}
		
// no arguments
global.on_pause_time_event = new VoidEvent();