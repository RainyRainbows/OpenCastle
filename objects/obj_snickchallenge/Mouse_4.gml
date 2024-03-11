if (showsnick && (!finished) && (!missedbullet))
{
    audio_stop_all()
    audio_play_sound(sfx_bulet, 0, false)
    missedbullet = 0
    shotbullet = 1
    image_yscale = -1
    bulletx = mouse_x
    bullety = mouse_y
}
