if drawself
    draw_self()
if (distance_to_object(obj_player) < 40)
{
    draw_sprite_ext(spr_uparrow, 0, obj_player.x, ((y - 42) + (sin(sin_value) * 32)), (abs(sin((sin_value + (2 * pi)))) * 2), 1, 0, c_white, 1)
    draw_set_colour(c_black)
    draw_set_font(fnt_font)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text((x + (sin(sin_value) * 12)), y, level)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
}
