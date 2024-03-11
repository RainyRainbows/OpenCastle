if (obj_player.state == (4 << 0))
    return;
x = median((x - maxspeed), obj_player.x, (x + maxspeed))
y = median((y - maxspeed), obj_player.y, (y + maxspeed))
if (x != obj_player.x)
    image_xscale = (-(sign((x - obj_player.x))))
if (obj_player.state != (3 << 0) && obj_player.state != (7 << 0))
{
    obj_hud.visible = false
    camera_set_view_target(view_camera[0], -4)
    camx = (lerp(x, obj_player.x, 0.5) - (camera_get_view_width(view_camera[0]) / 2))
    camy = (lerp(y, obj_player.y, 0.5) - (camera_get_view_height(view_camera[0]) / 2))
    shakex = (max((100 - distance_to_object(obj_player)), 0) / 10)
    shakey = shakex
    image_blend = merge_colour(c_white, c_red, (shakex / 10))
    camera_set_view_size(view_camera[0], (camera_get_view_width(view_camera[0]) - 0.4), (camera_get_view_height(view_camera[0]) - 0.225))
    camx = clamp(camx, 0, (room_width - camera_get_view_width(view_camera[0])))
    camy = clamp(camy, 0, (room_height - camera_get_view_height(view_camera[0])))
    camera_set_view_pos(view_camera[0], (camx + random_range((shakex / 2), (-((shakex / 2))))), (camy + random_range((shakex / 2), (-((shakex / 2))))))
}
