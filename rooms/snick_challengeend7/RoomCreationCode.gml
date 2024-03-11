global.snickchallenge = 0
with (obj_player)
{
    hsp = 0
    xscale = 1
    character = "V"
    scr_characterspr()
    canmove = 0
    state = (0 << 0)
    sprite_index = spr_idle
    canmach = 0
}
with (obj_hud)
{
    cbtfade = 10
    message = "..."
    showtext = 1
    alarm[0] = (room_speed * 3)
}
