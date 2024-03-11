if (global.musicalt != -1)
{
    audio_sound_set_track_position(global.musicalt, audio_sound_get_track_position(global.music))
    audio_sound_gain(global.music, 0, 1000)
    global.music = global.musicalt
    audio_sound_gain(global.music, 1, 1000)
    global.musicalt = -1
}
