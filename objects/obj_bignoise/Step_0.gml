if (con == 0)
{
    obj_player.hsp = 0
    obj_player.vsp = 0
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    instance_destroy(obj_machtrail)
    obj_player.canmove = 0
    obj_player.xscale = -1
    obj_player.state = (0 << 0)
    obj_player.sprite_index = obj_player.spr_idle
    if keyboard_check_pressed(ord("Z"))
    {
        con = 1
        audio_play_sound(sfx_noisewoah, 0, false)
        obj_hud.visible = true
        obj_player.canmove = 1
    }
    if keyboard_check_pressed(vk_down)
        sel++
    if keyboard_check_pressed(vk_up)
        sel--
    sel = clamp(sel, 0, (array_length_1d(destinations) - 1))
}
if (con == 1)
{
    if lockcamera
    {
        camera_set_view_target(view_camera[(0 << 0)], -4)
        camera_set_view_pos(view_camera[(0 << 0)], (lerp(x, obj_player.x, 0.75) - (camera_get_view_width(view_camera[(0 << 0)]) / 2)), random_range((-camshake), camshake))
        camera_set_view_pos(view_camera[(0 << 0)], clamp(camera_get_view_x(view_camera[(0 << 0)]), 0, (room_width - camera_get_view_width(view_camera[(0 << 0)]))), camera_get_view_y(view_camera[(0 << 0)]))
        obj_player.scared = distance_to_object(obj_player) < (30 * image_xscale)
    }
    else
        obj_player.scared = 0
    if (obj_player.x > (camera_get_view_x(view_camera[(0 << 0)]) + camera_get_view_width(view_camera[(0 << 0)])))
    {
        lockcamera = 0
        camera_set_view_target(view_camera[(0 << 0)], 9)
    }
    if (camshake > 0)
        camshake -= 0.2
    if grounded
        sprite_index = spr_playerN_move
    else if (sprite_index != spr_playerN_jump)
        sprite_index = spr_playerN_fall
    if crouching
    {
        sprite_index = spr_playerN_crawl
        mask_index = spr_crouchmask
        if (!(scr_solid_player(((x + hsp) + 1), (y - 64))))
            crouching = 0
    }
    else
        mask_index = spr_player_mask
    if (alarm[0] == -1 && abs((obj_player.x - x)) > 50 && obj_player.visible)
    {
        if (obj_player.x < x)
            xscale = -1
        else
            xscale = 1
    }
    if ((!audio_is_playing(mu_chase)) && playmusic)
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_chase, 0, true)
    }
    hsp = 0
    if (place_meeting(x, (y + image_yscale), obj_solid) && obj_player.y > bbox_bottom && distance_to_object(obj_player) < 100)
    {
        var left = 0
        var right = 0
        while place_meeting((x + left), (y + image_yscale), obj_solid)
            left -= 1
        while place_meeting((x + right), (y + image_yscale), obj_solid)
            right += 1
        if (abs(left) >= right)
        {
            xscale = 1
            hsp += 16
        }
        else
        {
            xscale = -1
            hsp -= 16
        }
    }
    var signhsp = 1
    if (sign(hsp) != 0)
        signhsp = sign(hsp)
    if (!(scr_solid_player((x + signhsp), y)))
    {
        if (!crouching)
        {
            if lockcamera
                hsp += (clamp((abs(obj_player.hsp) + choose(0, 0, 0, 0, 1, 1, -1)), 8, 17) * xscale)
            else
                hsp += ((14 + choose(0, 0, 0, 0, 1, 1, -1)) * xscale)
        }
        else
            hsp += (4 * xscale)
        if ((x + sprite_xoffset) <= (camera_get_view_x(view_camera[(0 << 0)]) + (obj_player.hsp * 25)) && lockcamera)
            hsp += random_range(2, 7)
    }
    var groundedbefore = grounded
    var vspbefore = vsp
    if obj_player.taunting
        sprite_index = spr_playerN_taunt2
    else
        scr_collide()
    if ((!groundedbefore) && grounded && vspbefore > 4)
    {
        audio_stop_sound(sfx_groundpound)
        audio_play_sound(sfx_groundpound, 0, false)
        camshake = 10
        with (obj_forknight)
            vsp = -4
    }
    if (sprite_index == spr_playerN_taunt)
    {
        if (alarm[0] > -1)
            alarm[0]++
    }
    else if (scr_solid_player((x + xscale), y) && grounded)
    {
        mask_index = spr_crouchmask
        if scr_solid_player((x + xscale), y)
        {
            image_index = 0
            sprite_index = spr_playerN_jump
            image_speed = 0
            if (alarm[0] == -1)
                alarm[0] = 10
        }
        else
            crouching = 1
    }
    if (sprite_index == spr_playerN_move)
        image_speed = (abs(hsp) / 20)
    else if (alarm[0] == -1)
        image_speed = 0.35
}
else
    obj_player.scared = 0
if (obj_player.state == (4 << 0))
    con = 2
if (con == 2)
{
    alarm[0] = -1
    audio_stop_sound(global.music)
    scr_collide()
    if grounded
        sprite_index = spr_playerN_idle
    else if (sprite_index != spr_playerN_jump)
        sprite_index = spr_playerN_fall
    if (vsp < 0 && sprite_index == spr_playerN_jump)
        vsp = 0
    image_speed = 0.35
    if (abs(hsp) > 1)
        hsp += (1 * (sign(hsp) * -1))
    else
        hsp = 0
}
if (con == 3)
{
    alarm[0] = -1
    image_speed = 0
    scr_collide()
}
if followme
{
    camera_set_view_target(view_camera[(0 << 0)], -4)
    camera_set_view_pos(view_camera[(0 << 0)], (x - (camera_get_view_width(view_camera[(0 << 0)]) / 2)), random_range((-camshake), camshake))
    camera_set_view_pos(view_camera[(0 << 0)], clamp(camera_get_view_x(view_camera[(0 << 0)]), 0, (room_width - camera_get_view_width(view_camera[(0 << 0)]))), camera_get_view_y(view_camera[(0 << 0)]))
}
