if (other.state == (4 << 0) || (!other.visible))
    return;
if (other.state != (3 << 0) && other.alarm[1] == -1 && (!dead) && con == 1)
{
    con = -1
    audio_stop_sound(global.music)
    audio_play_sound(sfx_noisewoah, 0, false)
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    audio_play_sound(sfx_pephurt, 0, false)
    other.state = (3 << 0)
    other.alarm[1] = (room_speed / 2)
    alarm[0] = -1
}
