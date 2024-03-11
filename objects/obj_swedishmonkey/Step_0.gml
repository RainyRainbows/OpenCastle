image_index = choose(0, 0, 0, 1)
if instance_exists(obj_player)
{
    if (obj_player.x < x)
        image_xscale = -1
    if (obj_player.x > x)
        image_xscale = 1
    if (place_meeting(x, y, obj_player) && obj_player.state == (2 << 0))
    {
        with (obj_player)
        {
            if (!grounded)
                vsp = (-12 * sign(grav))
        }
        instance_destroy()
        return;
    }
}
scr_collide()
