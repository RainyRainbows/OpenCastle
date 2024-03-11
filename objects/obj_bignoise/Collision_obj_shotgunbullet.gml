if (!dead)
{
    camera_set_view_target(view_camera[(0 << 0)], 9)
    hsp = 0
    vsp = 0
    con = 3
    audio_stop_sound(global.music)
    audio_play_sound(sfx_killenemy, 0, false)
    image_yscale *= 0.35
    image_xscale *= 1.35
    image_speed = 0
    dead = 1
    sprite_index = spr_playerN_idle
}
