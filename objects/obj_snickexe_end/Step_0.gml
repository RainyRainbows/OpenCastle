if (alarm[0] > -1)
    return;
if (obj_player.x >= (x - 500) && con == 0)
{
    obj_hud.visible = false
    camera_set_view_target(view_camera[(0 << 0)], -4)
    audio_stop_all()
    audio_stop_sound(sfx_mach3)
    audio_stop_sound(sfx_mach2)
    obj_player.move = 1
    obj_player.xscale = 1
    obj_player.hsp = 0
    obj_player.state = (0 << 0)
    obj_player.canmove = 0
    obj_player.sprite_index = obj_player.spr_idle
    obj_player.taunting = 0
    alarm[0] = (room_speed * 2)
}
if (con == 1)
{
    obj_player.canmove = 0
    camera_set_view_pos(view_camera[(0 << 0)], (camera_get_view_x(view_camera[(0 << 0)]) + 2), camera_get_view_y(view_camera[(0 << 0)]))
    if ((camera_get_view_x(view_camera[(0 << 0)]) + camera_get_view_width(view_camera[(0 << 0)])) >= room_width)
        con = 2
}
if (con == 2)
{
    obj_player.canmove = 0
    alarm[0] = (room_speed * 3)
    _static = audio_play_sound(sfx_static, 0, true)
    audio_sound_gain(_static, 0, 0)
}
if (con == 3)
{
    obj_player.canmove = 0
    with (obj_player)
    {
        hsp = 1
        sprite_index = spr_move
        image_speed = 0.15
        if (place_meeting(x, y, other) || camera_get_view_width(view_camera[(0 << 0)]) <= 0)
        {
            obj_hud.visible = true
            obj_hud.blackscreen = 1
            other.con = 4
            audio_stop_all()
        }
    }
    if (!(variable_instance_exists(self, "camx")))
    {
        camx = camera_get_view_x(view_camera[(0 << 0)])
        camy = camera_get_view_y(view_camera[(0 << 0)])
    }
    camx = (lerp(x, obj_player.x, 0.5) - (camera_get_view_width(view_camera[0]) / 2))
    camy = (lerp(y, obj_player.y, 0.5) - (camera_get_view_height(view_camera[0]) / 2))
    camera_set_view_size(view_camera[0], (camera_get_view_width(view_camera[0]) - 0.8), (camera_get_view_height(view_camera[0]) - 0.45))
    camx = clamp(camx, 0, (room_width - camera_get_view_width(view_camera[0])))
    camy = clamp(camy, 0, (room_height - camera_get_view_height(view_camera[0])))
    var shake = (max((400 - distance_to_object(obj_player)), 0) / 50)
    audio_sound_gain(_static, (shake / 50), 0)
    camera_set_view_pos(view_camera[0], (camx + random_range((shake / 2), (-((shake / 2))))), (camy + random_range((shake / 2), (-((shake / 2))))))
    if (distance_to_object(obj_player) < 15)
        image_xscale = -1
}
if (con == 4)
    alarm[0] = (room_speed * 5)
if (con == 5)
    room_goto(snick_challengeend2)
