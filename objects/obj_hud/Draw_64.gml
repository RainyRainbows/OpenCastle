if (pause && (!blackscreen))
{
    draw_set_colour(c_black)
    draw_rectangle(0, 0, 960, 540, false)
    draw_set_font(fnt_font)
    draw_set_colour(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_text(480, 270, "paused")
}
if blackscreen
{
    draw_set_colour(c_black)
    draw_rectangle(0, 0, 960, 540, false)
}
if (room == levelselect || room == snick_challenge || room == hubroom_cbt || room == snick_challengeend4 || room == snick_challengeend8 || instance_exists(obj_levelendfade) || pause || blackscreen)
    return;
draw_set_font(global.font)
draw_set_color(c_white)
draw_set_valign(fa_top)
if (room != enter_bossfight)
{
    if (!instance_exists(obj_snickmessage))
    {
        draw_sprite_ext(spr_tvdefault, -1, 832, 74, 1, 1, 1, c_white, 1)
        if (room == sauce_1 || room == sewer_gustavo)
            draw_sprite_ext(spr_hudoverlay, 0, 480, 270, (1 + random_range(0, 0.01)), (1 + random_range(0, 0.01)), 0, c_white, random_range(0.8, 1))
        if showtext
            ty = min((ty + 5), 10)
        else
            ty = max((ty - 1), -100)
        if (instance_exists(obj_player) && obj_player.state != (3 << 0))
        {
            pal_swap_set(obj_player.spr_palette, obj_player.paletteselect, 0)
            if (obj_player.character == "P")
            {
                if (room != snick_challengeend3)
                    draw_sprite(((!obj_player.scared) ? spr_pepinoHUD : spr_pepinoHUDscared), -1, 125, 100)
                else
                    draw_sprite(spr_pepinoHUDhurt, -1, 125, 100)
            }
            if (obj_player.character == "N")
                draw_sprite(spr_noiseHUD, -1, 125, 100)
            if (obj_player.character == "V")
                draw_sprite(spr_vigiHUD, -1, 125, 100)
            if (obj_player.character == "S")
                draw_sprite_ext(spr_playerS_idle, -1, 125, 100, -1, 1, 0, c_white, 1)
            pal_swap_reset()
        }
        draw_set_halign(fa_center)
        if (cbtfade <= 0)
            draw_text(832, 60, string_hash_to_newline(global.collect))
    }
    draw_set_alpha(cbtfade)
    draw_set_colour(c_black)
    draw_rectangle(0, 0, 960, 540, false)
    draw_set_alpha(1)
    draw_set_halign(fa_center)
    draw_set_colour(c_white)
    draw_text((tx + random_range(-1, 1)), ty, message)
}
draw_set_halign(fa_left)
if (global.panic || global.snickchallenge)
{
    draw_set_halign(fa_center)
    draw_set_font(global.font)
    if (global.minutes <= 0 && global.seconds <= 30)
    {
        draw_set_colour(c_red)
        draw_text((480 + random_range(-5, 5)), (6 + random_range(-5, 5)), ((string(global.minutes) + ":") + string(global.seconds)))
    }
    else
    {
        draw_set_colour(c_white)
        draw_text((480 + random_range(-1, 1)), (6 + random_range(-1, 1)), ((string(global.minutes) + ":") + string(global.seconds)))
    }
    draw_set_halign(fa_left)
}
if transition
{
    if (!audio_is_playing(sfx_transition))
        transaudio = audio_play_sound(sfx_transition, 0, false)
    transx = (960 - (((audio_sound_get_track_position(transaudio) / (audio_sound_length(transaudio) - 0.25)) * 960) * 2))
    if (transx <= -960)
        transition = 0
    draw_sprite(bg_transition, 0, transx, 0)
}
