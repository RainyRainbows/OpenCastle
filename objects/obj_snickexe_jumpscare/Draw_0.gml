obj_player.canmove = 0
draw_set_font(fnt_font)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if showsnick
{
    if (image_alpha < 1 && (!fadeout))
        image_alpha += 0.1
    starttoend += 0.015
    xoffset = random_range(-10, 10)
    yoffset = random_range(-10, 10)
    x = ((room_width / 2) + xoffset)
    y = ((room_height / 2) + yoffset)
    image_xscale += (starttoend / 2)
    image_yscale += (starttoend / 2)
    image_blend = merge_colour(c_white, c_red, min(starttoend, 1))
    draw_self()
    if fadeout
        image_alpha -= 0.02
}
