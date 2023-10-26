obj_bgm_controller.play_music(snd_main_menu_music);
instantiate_overlay_layer();
instantiate_menu_layer();
instantiate_transition_layer();
instantiate_main_menu_controllers();
unblock_keys([PAUSE_KEY]);