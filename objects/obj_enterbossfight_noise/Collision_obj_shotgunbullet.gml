if (!inv)
{
    hp -= 1
    audio_stop_sound(sfx_killingblow)
    audio_play_sound(sfx_killingblow, 0, false)
    inv = 1
    alarm[0] = (room_speed / 4)
}
