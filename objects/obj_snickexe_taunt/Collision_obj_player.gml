if ((!instance_exists(obj_tempstatic)) && con < 10)
{
    con++
    if (con >= 10)
    {
        with (instance_create_depth(0, 0, 0, obj_tempstatic))
            alarm[0] = (room_speed * 2)
        x = (camera_get_view_x(view_camera[(0 << 0)]) + (camera_get_view_width(view_camera[(0 << 0)]) / 2))
    }
    else
    {
        with (instance_create_depth(0, 0, 0, obj_tempstatic))
            alarm[0] = 5
        side = (!side)
    }
}
