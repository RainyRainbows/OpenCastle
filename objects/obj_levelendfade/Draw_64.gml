draw_set_colour(c_white)
if missedbullet
    draw_set_colour(c_red)
draw_set_alpha((fade / (missedbullet + 1)))
draw_rectangle(-10, -10, 970, 550, false)
draw_set_alpha(1)
