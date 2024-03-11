var player = instance_place(x, y, obj_player)
if player
{
    audio_stop_sound(sfx_scream5)
    audio_play_sound(sfx_scream5, 0, false)
    var hsp = lengthdir_x(20, (image_angle + 90))
    var vsp = lengthdir_y(20, (image_angle + 90))
    if (hsp != 0)
    {
        player.hsp = hsp
        player.xscale = sign(hsp)
    }
    if (vsp != 0)
    {
        player.vsp = vsp
        player.canceljump = 0
        player.grounded = 0
    }
    player.canceljump = 0
}
