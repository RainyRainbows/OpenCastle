if (ds_list_find_index(global.saveroom, id) != -1)
{
    instance_destroy()
    return;
}
ds_list_add(global.saveroom, id)
var snd = audio_play_sound(sfx_noisewoah, 0, false)
audio_sound_gain(snd, 0, 800)
