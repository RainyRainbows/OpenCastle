if (canmove && state != (11 << 0))
{
    move = ((-keyboard_check(vk_left)) + keyboard_check(vk_right))
    if (move != 0)
    {
        if ((move == 1 && hsp < 0) || (move == -1 && hsp > 0))
            hsp += (0.5 * move)
        xscale = move
        if (state == (0 << 0) && grounded)
            sprite_index = spr_move
        if (state == (5 << 0) && grounded)
            sprite_index = spr_crawl
        if (state != (2 << 0))
        {
            if ((move == 1 && hsp < normalspd) || (move == -1 && hsp > (-normalspd)))
                hsp += (0.5 * move)
            else if (state != (6 << 0))
                hsp -= (0.5 * move)
        }
        else if ((move == 1 && hsp < machspd) || (move == -1 && hsp > (-machspd)))
            hsp += (0.5 * move)
        else if (character != "N")
            hsp -= (0.5 * move)
    }
    else if (state != (8 << 0))
    {
        if (state == (0 << 0))
            sprite_index = spr_idle
        if (state == (5 << 0))
            sprite_index = spr_crouch
        if (abs(hsp) > 1)
            hsp += (0.5 * (sign(hsp) * -1))
        else
            hsp = 0
    }
    if (keyboard_check(vk_shift) && (move != 0 || character == "N") && canmach)
    {
        if (state == (0 << 0))
        {
            sprite_index = spr_mach2
            state = (2 << 0)
        }
    }
    else if (state == (2 << 0))
    {
        audio_stop_sound(sfx_mach2)
        audio_stop_sound(sfx_mach3)
        state = (0 << 0)
        image_blend = c_white
    }
    if (keyboard_check_pressed(ord("Z")) && character == "N" && (sprite_index == spr_jump || sprite_index == spr_fall))
    {
        sprite_index = spr_doublejump
        image_index = 0
        image_speed = 0.35
        audio_play_sound(sfx_woosh, 0, false)
        vsp = (-9 * sign(grav))
    }
    if (keyboard_check_pressed(ord("Z")) && grounded && state != (1 << 0) && room != snick_challengeend7)
    {
        if (!((character == "N" && state == (2 << 0))))
        {
            canceljump = 1
            sprite_index = spr_jump
            if (state == (5 << 0))
                sprite_index = spr_crouchjump
            image_index = 0
            image_speed = 0.35
            grounded = 0
            vsp = (-11 * sign(grav))
            if (state == (5 << 0))
                vsp = (-8 * sign(grav))
            if (state != (2 << 0))
                state = (1 << 0)
            else
                vsp = (-14 * sign(grav))
            audio_play_sound(sfx_jump, 0, false)
        }
    }
    if grounded
        canceljump = 1
    if (grounded && state == (1 << 0))
    {
        state = (0 << 0)
        normalspd = 6
    }
    if ((!grounded) && state == (0 << 0))
    {
        state = (1 << 0)
        if (sprite_index != spr_jump && sprite_index != spr_hurt)
            sprite_index = spr_fall
    }
    if ((keyboard_check_pressed(ord("X")) ? 1 : (keyboard_check(ord("S")) ? 0 : 0)) && character == "V" && canmach)
    {
        audio_stop_sound(sfx_killingblow)
        audio_stop_sound(sfx_mach2)
        audio_stop_sound(sfx_mach3)
        sprite_index = spr_revolvershoot
        state = (6 << 0)
        image_index = 0
        if (!grounded)
            vsp = (-4 * sign(grav))
        audio_play_sound(sfx_killingblow, 0, false)
        instance_create_depth((x + (image_xscale * 20)), (y + 20), (depth + 1), obj_shotgunbullet)
    }
    if (keyboard_check_pressed(ord("C")) && (!taunting) && canmach)
    {
        audio_stop_sound(sfx_mach2)
        audio_stop_sound(sfx_mach3)
        audio_play_sound(sfx_taunt, 0, false)
        taunting = 1
        alarm[2] = 15
    }
}
if (!taunting)
{
    switch state
    {
        case (0 << 0):
            if (sprite_index == spr_idle)
                image_speed = 0.35
            else if (sprite_index == spr_move)
            {
                image_speed = (abs(hsp) / 10)
                image_speed = max(image_speed, 0.35)
            }
            mask_index = spr_player_mask
            if keyboard_check(vk_down)
            {
                state = (5 << 0)
                normalspd = 4
            }
            break
        case (1 << 0):
            image_speed = 0.35
            if ((!(((sign(grav) == 1 && vsp <= 0) || (sign(grav) == -1 && vsp >= 0)))) || round(abs(vsp)) == 0)
                canceljump = 0
            if ((!keyboard_check(ord("Z"))) && canceljump)
                vsp = 0
            break
        case (2 << 0):
            if (abs(hsp) < (machspd - 1))
            {
                sprite_index = spr_mach2
                image_speed = 0.35
            }
            else
            {
                sprite_index = spr_mach
                image_speed = 0.5
            }
            if (character != "N")
            {
                if ((!(((sign(grav) == 1 && vsp <= 0) || (sign(grav) == -1 && vsp >= 0)))) || round(abs(vsp)) == 0)
                    canceljump = 0
                if ((!keyboard_check(ord("Z"))) && canceljump)
                    vsp = 0
                if (abs(hsp) < (machspd - 1) || (!grounded))
                {
                    if (!audio_is_playing(sfx_mach2))
                        audio_play_sound(sfx_mach2, 0, false)
                    audio_stop_sound(sfx_mach3)
                }
                else
                {
                    if (!audio_is_playing(sfx_mach3))
                        audio_play_sound(sfx_mach3, 0, false)
                    audio_stop_sound(sfx_mach2)
                }
            }
            else if grounded
            {
                if (move != 0)
                    hsp += (3 * xscale)
                vsp = -7.5
                if (keyboard_check(ord("Z")) && canceljump)
                    vsp = -14
                if (keyboard_check(vk_down) && canceljump)
                    vsp = -3.5
                audio_play_sound(sfx_Npogo3, 0, false)
                grounded = 0
            }
            else if (move != 0 && abs(hsp) < 24)
                hsp += (0.1 * xscale)
            mask_index = spr_player_mask
            if (macht <= 0)
            {
                instance_create_depth(x, y, (depth + 1), obj_machtrail)
                macht = 5
            }
            else
                macht -= 1
            break
        case (3 << 0):
            hsp = 0
            vsp = 0
            canmove = 0
            visible = false
            mask_index = -1
            break
        case (4 << 0):
            canmove = 0
            vsp -= 0.2
            y += vsp
            image_speed = (vsp / 20)
            break
        case (6 << 0):
            sprite_index = spr_playerV_revolvershoot
            image_speed = 0.4
            break
        case (5 << 0):
            image_speed = 0.45
            mask_index = spr_crouchmask
            if (!keyboard_check(vk_down))
            {
                state = (0 << 0)
                normalspd = 6
                mask_index = spr_player_mask
            }
            break
        case (8 << 0):
            canmove = 0
            if (abs(hsp) > 1)
                hsp += (0.25 * (-xscale))
            else
                hsp = 0
            if (hsp == 0 || place_meeting(x, y, obj_lava))
            {
                if place_meeting(x, y, obj_lava)
                    vsp = -10
                canmove = 1
                state = (0 << 0)
                normalspd = 6
                mask_index = spr_player_mask
            }
            break
        case (11 << 0):
            sprite_index = spr_idle
            image_speed = 0
            image_index = 0
            xscale = 1
            image_angle = point_direction(x, y, (x + hspeed), (y + vspeed))
            break
    }

}
if (state != (4 << 0) && state != (7 << 0) && state != (3 << 0) && state != (11 << 0) && (!taunting))
    scr_collide_player()
if (sprite_index == spr_hurt && global.collect > 0 && irandom_range(0, 10) == 0)
{
    with (instance_create_depth(x, y, (depth + 1), obj_collectloss))
    {
        vspeed = random_range(0, -10)
        hspeed = random_range(-10, 10)
    }
}
if taunting
    image_index -= image_speed
if (keyboard_check_pressed(vk_f1) ? 0 : 0)
    instance_create_depth(0, 0, 0, obj_levelendfade)
if (keyboard_check_pressed(ord("R")) ? (!((global.snickchallenge && global.seconds <= 0 && global.minutes <= 0))) : 0)
{
    if (room != levelselect && room != snick_challengeend && room != snick_challengeend2 && room != snick_challengeend3 && room != snick_challengeend4 && room != snick_challengeend5 && room != snick_challengeend6 && room != snick_challengeend7 && room != snick_challengeend8 && (!instance_exists(obj_bignoise)) && room != enter_bossfight)
    {
        if keyboard_check(vk_control)
            game_restart()
        else if (grounded && canmove && (!(string_startswith(room_get_name(room), "hardlevel"))))
            room_restart()
    }
}
