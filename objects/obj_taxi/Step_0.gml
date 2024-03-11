if (obj_player.state == (3 << 0))
{
    showdialog = 0
    obj_player.grav = gravstore
    if (!instance_exists(obj_bignoise))
        camera_set_view_target(view_camera[0], 9)
    obj_hud.visible = true
}
if (keyboard_check_pressed(ord("Z")) && showdialog)
{
    if (sel == 0)
    {
        showdialog = 0
        if (!instance_exists(obj_bignoise))
            camera_set_view_target(view_camera[0], 9)
        obj_player.canmove = 1
        obj_player.grav = gravstore
        obj_hud.visible = true
    }
    else
    {
        with (obj_bignoise)
        {
            audio_stop_sound(global.music)
            lockcamera = 0
            playmusic = 0
        }
        if (destinations[sel] == obj_stopsign)
        {
            obj_player.visible = false
            showdialog = 0
            obj_hud.visible = true
            sprite_index = spr_taximove
            go = 1
            hspeed = 0.5
            audio_play_sound(sfx_taxi2, 0, false)
            telep = 0
        }
        if (destinations[sel] == "killnoise")
        {
            obj_player.visible = false
            showdialog = 0
            sprite_index = spr_taximove
            go = 1
            vspeed = -0.5
            audio_play_sound(sfx_taxi2, 0, false)
        }
    }
}
if (keyboard_check_pressed(vk_down) && showdialog)
    sel++
if (keyboard_check_pressed(vk_up) && showdialog)
    sel--
sel = clamp(sel, 0, (array_length_1d(destinations) - 1))
if go
{
    if (destinations[sel] == "killnoise")
    {
        fadeout += 0.005
        audio_sound_gain(global.music, 0, 2500)
        vspeed -= 0.2
        vspeed = max(vspeed, -8)
        camera_set_view_target(view_camera[0], -4)
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), y)
        camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), min(camera_get_view_y(view_camera[0]), (room_height - camera_get_view_height(view_camera[0]))))
        if (fadeout >= 1.25)
        {
            obj_player.grav = gravstore
            obj_player.visible = true
            obj_player.canmove = 1
            if strongcold
            {
                obj_player.targetDoor = "A"
                room_goto(strongcold_bossfight)
            }
            else
                room_goto(enter_bossfight)
        }
    }
    else
    {
        hspeed += 0.2
        hspeed = min(hspeed, 8)
    }
}
if (destinations[sel] == obj_stopsign && go && place_meeting(x, y, destinations[sel]))
{
    if (gravstore == 0)
        obj_player.grav = 0.5
    else
        obj_player.grav = gravstore
    obj_player.x = destinations[sel].x
    obj_player.y = destinations[sel].y
    obj_player.visible = true
    if ((!instance_exists(obj_bignoise)) || obj_bignoise.dead)
    {
        obj_player.canmove = 1
        camera_set_view_target(view_camera[0], 9)
    }
    audio_play_sound(sfx_taxi1, 0, false)
    go = 0
}
