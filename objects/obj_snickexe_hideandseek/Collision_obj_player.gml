if (obj_player.state == (4 << 0))
    return;
if (obj_player.state != (7 << 0))
{
    obj_hud.visible = true
    camera_set_view_size(view_camera[0], 960, 540)
    camera_set_view_pos(view_camera[0], (obj_player.x - 480), 0)
    instance_create_depth(0, 0, 0, obj_levelendfade)
    visible = false
    global.roomfrom = 85
}
