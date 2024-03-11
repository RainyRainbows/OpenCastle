siner++
if (!instance_exists(obj_player))
    return;
if (con >= 10 && (!instance_exists(obj_tempstatic2)))
{
    if (obj_player.x != x)
        image_xscale = sign((obj_player.x - x))
    x = (camera_get_view_x(view_camera[(0 << 0)]) + (camera_get_view_width(view_camera[(0 << 0)]) / 2))
    if (visible && place_meeting(x, y, obj_player))
    {
        visible = false
        with (instance_create_depth(obj_player.x, obj_player.y, obj_player.depth, obj_crashintonoise))
        {
            image_xscale = obj_player.xscale
            event_user(0)
        }
        obj_player.hsp = 0
        obj_player.vsp = 0
        obj_player.state = (3 << 0)
        obj_player.visible = false
        obj_player.canmove = 0
        alarm[0] = (room_speed / 2)
    }
}
else
{
    switch side
    {
        case 0:
            image_xscale = 1
            x = ((camera_get_view_x(view_camera[(0 << 0)]) + sprite_xoffset) + 10)
            break
        case 1:
            x = ((((camera_get_view_x(view_camera[(0 << 0)]) + camera_get_view_width(view_camera[(0 << 0)])) - abs(sprite_width)) + abs(sprite_xoffset)) - 50)
            image_xscale = -1
            break
    }

}
if (obj_player.x <= camera_get_view_x(view_camera[(0 << 0)]) || obj_player.x >= (camera_get_view_x(view_camera[(0 << 0)]) + camera_get_view_width(view_camera[(0 << 0)])))
{
    if (con < 10)
    {
        with (instance_create_depth(0, 0, 0, obj_tempstatic))
            alarm[0] = 5
        obj_player.x = (camera_get_view_x(view_camera[(0 << 0)]) + (camera_get_view_width(view_camera[(0 << 0)]) / 2))
    }
    else
        obj_player.x = clamp(obj_player.x, camera_get_view_x(view_camera[(0 << 0)]), (camera_get_view_x(view_camera[(0 << 0)]) + camera_get_view_width(view_camera[(0 << 0)])))
}
