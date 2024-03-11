draw_set_colour(c_black)
draw_set_alpha(fadea)
draw_rectangle(0, 0, 960, 540, false)
with (obj_enterbossfight_player)
    draw_self()
draw_set_alpha(1)
if showintro
{
    draw_set_font(fnt_font)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_colour(c_white)
    draw_text(480, 270, "OBJECTIVE:\nKILL THAT YELLOW BASTARD")
}
