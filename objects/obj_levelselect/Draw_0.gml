obj_player.canmove = 0
draw_set_font(fnt_font)
draw_set_colour(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if (sel == 0)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 0)), "Enter")
draw_set_colour(c_white)
if (sel == 1)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 1)), "Scape")
draw_set_colour(c_white)
if (sel == 2)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 2)), "Cheese")
draw_set_colour(c_white)
if (sel == 3)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 3)), "Sauce")
draw_set_colour(c_white)
if (sel == 4)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 4)), "Snic Kchallenge")
draw_set_colour(c_white)
if (sel == 5)
    draw_set_colour(c_red)
if onlyplayasnoise
    draw_text(540, (20 + (textsep * 5)), "only play as the Sound!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
else
    draw_text(540, (20 + (textsep * 5)), "Scare")
draw_set_colour(c_white)
if (sel == 6)
    draw_set_colour(c_red)
draw_text(500, (20 + (textsep * 6)), "strongcold")
draw_set_colour(c_white)
if (sel == 7)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 7)), "HUB ROOM")
draw_set_colour(c_white)
if (sel == 8)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 8)), "testroom")
draw_set_colour(c_white)
if (sel == 9)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 9)), "desert")
draw_set_colour(c_white)
if (sel == 10)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 10)), "hard level")
draw_set_colour(c_white)
if (sel == 11)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 11)), "Fridge")
draw_set_colour(c_white)
if (sel == 12)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 12)), "pipes")
draw_set_colour(c_white)
if (sel == 13)
    draw_set_colour(c_red)
draw_text(540, (20 + (textsep * 13)), "the moon")
draw_set_color(c_white)
var chardisplay = "unknown"
switch char
{
    case 0:
        chardisplay = "Pepino"
        break
    case 1:
        chardisplay = "the Sound"
        break
    case 2:
        chardisplay = "Vigilacio"
        break
    case 3:
        chardisplay = "Snic K"
        break
}

draw_text(4, 486, ("Player: " + chardisplay))
