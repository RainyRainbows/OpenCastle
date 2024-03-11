if audio_is_playing(sfx_collecttopping)
    audio_stop_sound(sfx_collecttopping)
audio_play_sound(sfx_collecttopping, 0, false)
global.collect += 10
with (instance_create_depth((x + 16), y, depth, obj_smallnumber))
    number = string(10)
ds_list_add(global.saveroom, id)
instance_destroy()
