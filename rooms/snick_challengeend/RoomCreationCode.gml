global.collect = 0
with (obj_player)
{
    canmove = 0
    state = (0 << 0)
    hsp = 0
    character = "P"
    scr_characterspr()
    sprite_index = spr_idle
    canmach = 0
}
audio_stop_all()
scr_sleep(2000)
global.snickchallenge = 0
with (obj_hud)
{
    cbtfade = 10
    message = "SCAPE"
    showtext = 1
    alarm[0] = (room_speed * 3)
}
