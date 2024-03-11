if (obj_player.x < x)
    image_xscale = -1
else
    image_xscale = 1
var player = instance_place(x, y, obj_player)
if player
{
    if (player.state == (2 << 0))
    {
        with (player)
        {
            if (!grounded)
                vsp = (-12 * sign(grav))
        }
        instance_destroy()
        return;
    }
    if (!audio_is_playing(sfx_pephurt))
        scr_hurtplayer(50, player)
}
scr_collide()
