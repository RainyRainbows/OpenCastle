draw_set_font(fnt_font)
draw_set_colour(c_white)
draw_set_halign(fa_left)
if (!((global.minutes <= 0 && global.seconds <= 0)))
{
    if (hp != 0)
        draw_text(0, 0, ("BOSS HP: " + string(hp)))
    else
    {
        draw_set_halign(fa_center)
        draw_text(480, 8, "YOU WON...")
    }
}
else
{
    draw_set_halign(fa_center)
    draw_text(480, 8, "YOU LOSE...")
}
