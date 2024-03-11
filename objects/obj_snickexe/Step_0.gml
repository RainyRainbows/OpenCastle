x = median((x - maxspeed), obj_player.x, (x + maxspeed))
y = median((y - maxspeed), obj_player.y, (y + maxspeed))
if (x != obj_player.x)
    image_xscale = (-(sign((x - obj_player.x))))
if (!global.snickchallenge)
{
    instance_destroy(self, false)
    return;
}
else if (global.seconds <= 0 && global.minutes <= 0 && obj_player.state != (3 << 0))
{
    if (obj_player.state != (7 << 0))
    {
        if ((x + sprite_width) < camera_get_view_x(view_camera[0]))
            x = (camera_get_view_x(view_camera[0]) - sprite_width)
        if ((x - sprite_width) > (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])))
            x = (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))
        if ((y + sprite_height) < camera_get_view_y(view_camera[0]))
            y = (camera_get_view_y(view_camera[0]) - sprite_height)
        if ((y - sprite_height) > (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
            y = (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]))
    }
    obj_hud.visible = false
    if (audio_sound_get_pitch(global.music) > 0)
        audio_sound_pitch(global.music, (audio_sound_get_pitch(global.music) - 0.005))
    else
        audio_stop_sound(global.music)
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    obj_player.canmove = 0
    obj_player.state = (7 << 0)
    obj_player.image_speed = 0
    maxspeed = 1
    camera_set_view_target(view_camera[0], -4)
    camx = (lerp(x, obj_player.x, 0.5) - (camera_get_view_width(view_camera[0]) / 2))
    camy = (lerp(y, obj_player.y, 0.5) - (camera_get_view_height(view_camera[0]) / 2))
    shakex = (max((100 - distance_to_object(obj_player)), 0) / 10)
    shakey = shakex
    image_blend = merge_colour(c_white, c_red, (shakex / 10))
    if (distance_to_object(obj_player) < 200)
    {
        maxspeed = 0.5
        camera_set_view_size(view_camera[0], (camera_get_view_width(view_camera[0]) - 0.8), (camera_get_view_height(view_camera[0]) - 0.45))
        camx = clamp(camx, 0, (room_width - camera_get_view_width(view_camera[0])))
        camy = clamp(camy, 0, (room_height - camera_get_view_height(view_camera[0])))
        camera_set_view_pos(view_camera[0], (camx + random_range((shakex / 2), (-((shakex / 2))))), (camy + random_range((shakex / 2), (-((shakex / 2))))))
    }
}
obj_player.scared = 1
var player = instance_place(x, y, obj_player)
if player
{
    if (player.state != (4 << 0))
    {
        if (player.state != (7 << 0))
        {
            if (player.state != (3 << 0) && player.alarm[1] == -1)
            {
                audio_stop_sound(sfx_mach2)
                audio_stop_sound(sfx_mach3)
                audio_play_sound(sfx_pephurt, 0, false)
                global.collect -= 200
                global.collect = max(global.collect, 0)
                player.alarm[1] = (room_speed / 2)
                repeat (10)
                    instance_create_depth((x + random_range(-50, 50)), (y + random_range(-50, 50)), depth, obj_snickparticle)
                y = -62000
            }
            player.taunting = 0
            player.state = (3 << 0)
        }
        else if (alarm[0] == -1)
        {
            obj_hud.visible = true
            obj_hud.blackscreen = 1
            audio_stop_all()
            audio_play_sound(sfx_pephurt, 0, false)
            alarm[0] = 1
        }
    }
}
