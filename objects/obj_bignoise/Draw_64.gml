if (con == 0)
{
    obj_hud.visible = false
    draw_set_colour(c_white)
    draw_rectangle(486, 66, 920, 270, false)
    draw_set_colour(c_black)
    draw_rectangle(489, 69, 917, 267, false)
    draw_set_colour(c_white)
    draw_set_font(fnt_font)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_text(508, 76, message)
    draw_set_halign(fa_right)
    for (var i = (array_length_1d(destinations) - 1); i > -1; i--)
    {
        var desttext = string(destinations[i])
        draw_set_colour(c_black)
        draw_text(920, (288 + (i * 36)), desttext)
        draw_set_colour(c_white)
        if (sel == i)
            draw_set_colour(c_red)
        draw_text(920, (286 + (i * 36)), desttext)
    }
}
