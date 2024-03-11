with (obj_hud)
{
    if (transition && transx <= 0)
    {
        room_goto(escape_1)
        global.panic = 1
        global.minutes = 0
        global.seconds = 59
        obj_music.escapesong = 63
    }
}
if showdialogue
{
    if (keyboard_check_pressed(ord("Z")) && con != 8)
    {
        con++
        sel = 0
        if (con >= array_length(dialogue))
        {
            showdialogue = 0
            obj_hud.visible = true
            switch global.gustavocon
            {
                case 0:
                    global.gustavocon = 1
                    with (obj_hud)
                    {
                        visible = true
                        transition = 1
                        transx = 960
                    }
                    break
                case 1:
                    global.gustavocon = 2
                    room_goto(cheese_1)
                    global.panic = 1
                    global.minutes = 0
                    global.seconds = 59
                    obj_music.escapesong = 63
                    break
                case 2:
                    game_restart()
                    break
                case 666:
                    game_restart()
                    break
            }

            return;
        }
    }
    obj_player.hsp = 0
    obj_player.vsp = 0
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    instance_destroy(obj_machtrail)
    obj_player.canmove = 0
    obj_player.xscale = 1
    obj_player.state = (0 << 0)
    obj_player.sprite_index = obj_player.spr_idle
    obj_hud.visible = false
    if keyboard_check_pressed(vk_down)
        sel++
    if keyboard_check_pressed(vk_up)
        sel--
    sel = clamp(sel, 0, (array_length(answers[con]) - 1))
    if (global.gustavocon == 0)
    {
        if (con >= 2)
        {
            image_blend = c_white
            image_speed = 0.35
            if (!audio_is_playing(mu_gustavo))
                global.music = audio_play_sound(mu_gustavo, 0, true)
        }
        if (con == 8)
        {
            audio_pause_sound(mu_gustavo)
            burgery += 2
            if (burgery >= obj_player.y)
            {
                obj_player.burger = 1
                con = 9
            }
        }
        if (con == 9)
            audio_resume_sound(mu_gustavo)
        if (con == 10)
        {
            var bgl = layer_get_id("Background")
            var bg = layer_background_get_id(bgl)
            layer_background_sprite(bg, 101)
        }
    }
    if (global.gustavocon == 1)
    {
        if (con == 5)
            obj_player.burger = 1
    }
}
