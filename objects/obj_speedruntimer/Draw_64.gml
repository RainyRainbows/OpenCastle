draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_set_font(fnt_font)
if (room != hardlevel_4)
{
    var sex = floor((get_timer() / 1000000))
    seconds = sex
    draw_set_colour(c_white)
}
else
    draw_set_colour(c_yellow)
draw_text_transformed(954, 538, (((((seconds >= 60 ? "sorry no fix\n " : "") + string(minutes)) + ":") + (seconds >= 10 ? "" : "0")) + string(seconds)), 0.5, 0.5, -7)
