//obj_bgm_controller.play_music(snd_main_menu_music);
instantiate_overlay_layer();
instantiate_menu_layer();
instantiate_transition_layer();
instantiate_end_screen_controllers();
obj_bgm_controller.play_music(snd_victory_music, false);
unblock_keys([PAUSE_KEY]);