repeat abs(hsp)
{
    if (scr_solid_player((x + sign(hsp)), y) && (!(scr_solid_player((x + sign(hsp)), (y - 1)))))
        y--
    if ((!(scr_solid_player((x + sign(hsp)), y))) && (!(scr_solid_player((x + sign(hsp)), (y + 1)))) && scr_solid_player((x + sign(hsp)), (y + 2)))
        y++
    x += sign(hsp)
}
