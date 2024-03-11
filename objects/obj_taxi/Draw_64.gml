if showdialog
{
    obj_hud.visible = false
    if (room != scare_6)
    {
        draw_set_colour(c_white)
        draw_rectangle(486, 66, 920, 270, false)
        draw_set_colour(c_black)
        draw_rectangle(489, 69, 917, 267, false)
    }
    else
    {
        draw_set_colour(c_white)
        draw_rectangle(486, 66, 1000, 600, false)
        draw_set_colour(c_black)
        draw_rectangle(489, 69, 1000, 600, false)
    }
    draw_set_colour(c_white)
    draw_set_font(fnt_font)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_text(508, 76, message)
    draw_set_halign(fa_right)
    for (var i = (array_length_1d(destinations) - 1); i > -1; i--)
    {
        var desttext = string(destinations[i])
        if (destinations[i] == 28)
            desttext = "taxi stop"
        if (destinations[i] == "killnoise")
        {
            if (obj_player.character == "P")
                desttext = "follow that yellow bastard"
            if (obj_player.character == "N")
                desttext = "follow my clone!!!"
            if (obj_player.character == "V")
                desttext = "follow that yellow guy"
            if (obj_player.character == "S")
                desttext = "fly or cbt"
        }
        draw_set_colour(c_black)
        draw_text(920, (288 + (i * 36)), desttext)
        draw_set_colour(c_white)
        if (sel == i)
            draw_set_colour(c_red)
        draw_text(920, (286 + (i * 36)), desttext)
    }
}
draw_set_colour(c_white)
draw_set_alpha(fadeout)
draw_rectangle(0, 0, 960, 540, false)
draw_set_alpha(1)
