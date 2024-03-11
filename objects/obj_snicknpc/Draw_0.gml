draw_self()
if place_meeting(x, y, obj_player)
{
    scr_drawuparrow(obj_player.x, (y - 82))
    draw_set_font(fnt_font)
    draw_set_colour(c_white)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text(x, y, message)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}
else
{
    message = ""
    advance = 0
}
