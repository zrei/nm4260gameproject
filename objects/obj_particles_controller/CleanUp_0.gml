/// @description Insert description here
// You can write your code in this editor

/*for (var _i = 0; _i < array_length(active_particle_systems); _i++)
	part_system_destroy(active_particle_systems[_i]);
	
for (var _i = 0; _i < array_length(active_particle_systems_with_lifetime); _i++)
	part_system_destroy(active_particle_systems_with_lifetime[_i].part_system);*/
	
destroy_particle_systems();

global.on_pause_menu_opened_event.unsubscribe(pause_particle_systems);
global.on_pause_menu_closed_event.unsubscribe(resume_particle_systems);