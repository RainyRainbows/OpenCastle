if (keyboard_check_pressed(vk_escape) && (!blackscreen) && visible && room != snick_challengeend && room != snick_challengeend2 && room != snick_challengeend3 && room != snick_challengeend5 && room != snick_challengeend6 && room != snick_challengeend7 && room != snick_challengeend8)
{
    pause = (!pause)
    if pause
    {
        audio_pause_all()
        instance_deactivate_all(true)
    }
    else
    {
        audio_resume_all()
        instance_activate_all()
    }
}
if (cbtfade > 0)
{
    if (room == snick_challengeend || room == snick_challengeend3 || room == snick_challengeend5 || room == snick_challengeend7)
        obj_player.canmove = 0
    cbtfade -= 0.1
    if (cbtfade <= 0 && (room == snick_challengeend || room == snick_challengeend3 || room == snick_challengeend5 || room == snick_challengeend7))
        obj_player.canmove = 1
}
