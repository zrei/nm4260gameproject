/// @description Insert description here
// You can write your code in this editor

if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    if (event_data[? "message"] == "full_black_screen")
    {
		if (pause_when_full)
			layer_sequence_pause(active_sequence);

		global.on_full_black_screen_event.invoke();		
    }
}