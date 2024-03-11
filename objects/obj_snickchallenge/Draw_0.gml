if (!fadeout)
{
    audio_stop_sound(sfx_mach3)
    audio_stop_sound(sfx_mach2)
    obj_player.canmove = 0
    obj_player.state = (0 << 0)
}
draw_set_font(fnt_font)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (showintro && (!showsnick))
{
    draw_set_colour(c_white)
    draw_text((room_width / 2), (room_height / 2), "OBJECTIVE:\nLISTEN TO THE ENTIRE CBT NARRATION")
}
if showsnick
{
    if (image_alpha < 1 && (!fadeout))
        image_alpha += 0.1
    if audio_is_playing(mu_snickcbt)
        var starttoend = (audio_sound_get_track_position(song) / audio_sound_length(song))
    else
        starttoend = 0
    xoffset = random_range(((-starttoend) * 10), (starttoend * 10))
    yoffset = random_range(((-starttoend) * 10), (starttoend * 10))
    x = ((room_width / 2) + xoffset)
    y = ((room_height / 2) + yoffset)
    image_blend = merge_colour(c_white, c_red, starttoend)
    if shotbullet
        image_blend = merge_colour(c_white, c_red, 0.75)
    draw_self()
    if ((!audio_is_playing(mu_snickcbt)) && (!missedbullet))
    {
        if (!finished)
        {
            if (!shotbullet)
            {
                ini_open("saveData.ini")
                ini_write_real("save", "unlocksnick", 1)
                ini_close()
            }
            alarm[0] = 10
            alarm[2] = (room_speed * 2)
            finished = 1
        }
        draw_set_font(fnt_font)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_colour(c_white)
        draw_set_alpha(image_alpha)
        if showintro
        {
            if shotbullet
                draw_text((room_width / 2), ((room_height / 2) + 200), "YOU WIN, YOU MONSTER")
            else
                draw_text((room_width / 2), ((room_height / 2) + 200), "CONGRATS YOU DID IT!!!")
        }
    }
    if fadeout
        image_alpha -= 0.02
}
if (shotbullet || missedbullet)
    draw_sprite(spr_bullethole, 0, bulletx, bullety)
if (missedbullet && showintro)
{
    draw_set_colour(c_white)
    draw_text((room_width / 2), ((room_height / 2) + 200), "YOU MISSED, LOSER\nIT'S TIME FOR REAL CBT")
}
if instance_exists(obj_levelendfade)
    depth = (obj_levelendfade.depth - 1)
