obj_player.canmove = 1
audio_stop_sound(sfx_static)
instance_create_depth((camera_get_view_x(view_camera[(0 << 0)]) + 10), (obj_player.y - 30), 0, obj_snickexe_taunt)
instance_destroy()
