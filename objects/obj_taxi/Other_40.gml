if (go && (!telep))
{
    if (destinations[sel] == obj_stopsign)
    {
        obj_player.x = destinations[sel].x
        obj_player.y = destinations[sel].y
        camera_set_view_pos(view_camera[0], clamp((obj_player.x - (camera_get_view_width(view_camera[0]) / 2)), 0, (room_width - camera_get_view_width(view_camera[0]))), clamp((obj_player.y - (camera_get_view_height(view_camera[0]) / 2)), 0, (room_height - camera_get_view_height(view_camera[0]))))
        y = destinations[sel].y
        x = ((obj_player.x - 480) - 50)
        hspeed = 8
        telep = 1
        with (obj_bignoise)
        {
            if (!dead)
                followme = 1
        }
    }
}
else if (!go)
{
    x = xstart
    y = ystart
    sprite_index = spr_taxiidle
    hspeed = 0
}
