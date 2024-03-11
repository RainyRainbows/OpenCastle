obj_player.canmove = 0
obj_player.state = (0 << 0)
audio_stop_sound(sfx_mach2)
audio_stop_sound(sfx_mach3)
instance_destroy(obj_machtrail)
with (obj_taxi)
{
    message = "youre not meant to\ntalk to me"
    destinations[1] = 28
    sel = 1
    obj_player.visible = false
    obj_player.canmove = 0
    obj_hud.visible = true
    sprite_index = spr_taximove
    go = 1
    hspeed = 0.5
    obj_player.x = destinations[1].x
    obj_player.y = destinations[1].y
    x = ((obj_player.x - 480) - 50)
    y = destinations[1].y
    hspeed = 8
    telep = 1
}
