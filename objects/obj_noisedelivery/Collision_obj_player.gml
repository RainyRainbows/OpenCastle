if global.panic
{
    showdialog = 1
    global.panic = 0
    obj_player.hsp = 0
    obj_player.vsp = 0
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    instance_destroy(obj_machtrail)
    obj_player.canmove = 0
    obj_player.xscale = 1
    obj_player.state = (0 << 0)
    obj_player.sprite_index = obj_player.spr_idle
    obj_player.x -= 20
    obj_hud.visible = false
    image_xscale = -1
    sprite_index = spr_playerN_taunt
}
