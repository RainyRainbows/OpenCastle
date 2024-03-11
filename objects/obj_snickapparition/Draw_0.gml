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
    draw_text((room_width / 2), (room_height / 2), "IT'S TIME FOR CBT")
}
if showsnick
{
    if (image_alpha < 1 && (!fadeout))
        image_alpha += 0.1
    if audio_is_playing(mu_snickcbt)
        var starttoend = (audio_sound_get_track_position(song) / audio_sound_length(song))
    else
        starttoend = 0
    xoffset = random_range(((-starttoend) * 15), (starttoend * 15))
    yoffset = random_range(((-starttoend) * 15), (starttoend * 15))
    x = (((room_width / 2) + xoffset) + (70 * (starttoend * 8)))
    y = (((room_height / 2) + yoffset) - (17 * (starttoend * 8)))
    image_xscale = (1 + (starttoend * 8))
    image_yscale = (1 + (starttoend * 8))
    image_blend = merge_colour(c_white, c_red, starttoend)
    if (window_get_width() == 960 && window_get_height() == 540 && (!window_get_fullscreen()))
        window_set_position((wx + random_range((-starttoend), starttoend)), (wy + random_range((-starttoend), starttoend)))
    draw_self()
    if (!audio_is_playing(mu_snickcbt))
    {
        if (!finished)
        {
            alarm[2] = (room_speed * 2)
            finished = 1
        }
        draw_set_font(fnt_font)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_set_colour(c_white)
        draw_set_alpha(image_alpha)
        showsnick = 0
        showintro = 0
    }
    if fadeout
        image_alpha -= 0.02
}
