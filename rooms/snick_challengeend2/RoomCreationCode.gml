global.snickchallenge = 0
audio_stop_all()
audio_play_sound(sfx_snickmessage, 0, false)
with (obj_hud)
{
    showtext = 0
    message = ""
    cbtfade = 1
}
