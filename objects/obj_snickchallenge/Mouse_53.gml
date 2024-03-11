if (showsnick && (!finished) && (!missedbullet) && (!shotbullet))
{
    audio_stop_all()
    audio_play_sound(sfx_bulet, 0, false)
    missedbullet = 1
    showintro = 0
    alarm[0] = room_speed
    alarm[2] = (room_speed * 3)
    bulletx = mouse_x
    bullety = mouse_y
}
