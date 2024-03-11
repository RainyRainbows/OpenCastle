if global.panic
{
    if (room != enter_bossfight)
    {
        if (escapesong == mu_pizzatime)
        {
            if (obj_player.character == "P" || obj_player.character == "V")
            {
                if (!audio_is_playing(mu_pizzatime))
                {
                    audio_stop_sound(global.music)
                    global.music = audio_play_sound(mu_pizzatime, 0, true)
                }
            }
            if (obj_player.character == "N")
            {
                if (!audio_is_playing(mu_noiseescape))
                {
                    audio_stop_sound(global.music)
                    global.music = audio_play_sound(mu_noiseescape, 0, true)
                }
            }
            if (obj_player.character == "S")
            {
                if (!audio_is_playing(mu_snickchallenge))
                {
                    audio_stop_sound(global.music)
                    global.music = audio_play_sound(mu_snickchallenge, 0, true)
                }
            }
        }
        else if (!audio_is_playing(escapesong))
        {
            audio_stop_sound(global.music)
            global.music = audio_play_sound(escapesong, 0, true)
        }
    }
    else if (!audio_is_playing(mu_miniboss))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_miniboss, 0, true)
    }
}
if (global.snickchallenge && (!((global.minutes <= 0 && global.seconds <= 0))))
{
    if (!audio_is_playing(mu_leaningnightmare))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_leaningnightmare, 0, true)
    }
}
