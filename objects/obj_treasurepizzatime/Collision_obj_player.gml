if other.grounded
{
    audio_play_sound(sfx_secretfound, 0, false)
    global.panic = 1
    global.minutes = minutes
    global.seconds = seconds
    instance_destroy()
}
