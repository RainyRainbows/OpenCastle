switch _id
{
    case 0:
        if place_meeting(x, y, obj_player)
        {
            fadealpha = (max((obj_player.x - x), 0) / sprite_width)
            audio_group_set_gain(0, (1 - fadealpha), 0)
        }
        break
    case 1:
        if place_meeting(x, y, obj_player)
        {
            with (100015)
                image_xscale += 32
            with (100017)
                image_xscale += 32
            with (100023)
                x += 1024
            var prevroomwidth = room_width
            room_width += 1024
            x += 1024
            var lay_id = layer_get_id("Assets_1")
            var s = layer_sprite_get_id(lay_id, "graphic_topblacktile")
            layer_sprite_xscale(s, (layer_sprite_get_xscale(s) + 32))
            s = layer_sprite_get_id(lay_id, "graphic_bottomblacktile")
            layer_sprite_xscale(s, (layer_sprite_get_xscale(s) + 32))
            for (i = 0; i < 1024; i += 32)
            {
                s = layer_sprite_create(lay_id, (prevroomwidth + i), 128, 141)
                layer_sprite_yscale(s, -1)
                layer_sprite_create(lay_id, (prevroomwidth + i), 448, 141)
            }
        }
        break
    case 2:
        if place_meeting(x, y, obj_player)
        {
            audio_stop_all()
            audio_play_sound(sfx_cbt, 0, false)
            instance_create_depth(((camera_get_view_x(view_camera[(0 << 0)]) - 174) + 115), obj_player.y, (obj_player.depth - 1), obj_snickexe_hideandseek)
            instance_destroy()
        }
        break
    case 3:
        if place_meeting(x, y, obj_player)
        {
            instance_create_depth(0, 0, 0, obj_tempstatic)
            instance_destroy()
        }
        break
    case 4:
        if place_meeting(x, y, obj_player)
        {
            with (obj_player)
            {
                var j = 0
                i = y
                while (i < room_height)
                {
                    j += 1
                    if scr_solid_player(x, (i + 1))
                    {
                        y = i
                        break
                    }
                    else
                    {
                        i++
                        continue
                    }
                }
            }
            instance_create_depth(0, 0, 0, obj_tempstatic2)
            instance_destroy()
        }
        break
    case 5:
        if place_meeting(x, y, obj_player)
        {
            audio_stop_all()
            audio_play_sound(sfx_machpunch, 0, false)
            obj_player.canmove = 0
            obj_player.sprite_index = obj_player.spr_idle
            obj_player.image_speed = 0.35
            obj_player.hsp = 0
            obj_player.vsp = 0
            obj_player.grav = 0
            obj_player.state = (0 << 0)
            obj_player.xscale = 1
            instance_create_depth((obj_player.x + 150), (obj_player.y - 10), (obj_player.depth - 1), obj_snickexe_scare)
            instance_destroy()
        }
        break
    case 6:
        if place_meeting(x, y, obj_player)
        {
            var lay = layer_get_id("Assets_1")
            var asset = layer_sprite_get_id(lay, "graphic_petergriffin")
            layer_sprite_x(asset, 128)
            instance_destroy()
        }
        break
    case 7:
        if place_meeting(x, y, obj_player)
        {
            obj_player.scared = 1
            audio_stop_sound(global.music)
            instance_destroy()
        }
        break
}

