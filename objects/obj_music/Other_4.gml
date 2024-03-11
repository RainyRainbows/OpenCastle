if ((!global.panic) && (!global.snickchallenge))
{
    var playback = 0
    if audio_is_playing(global.music)
        playback = audio_sound_get_track_position(global.music)
    var roomname = room_get_name(room)
    var roomnum = 0
    if ((room == levelselect || room == snick_challengeend4) && (!audio_is_playing(mu_titlescreen)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_titlescreen, 0, true)
    }
    if (string_startswith(roomname, "hubroom") && room != hubroom_cbt && (!audio_is_playing(mu_hub)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_hub, 0, true)
        global.musicalt = audio_play_sound(mu_hubreverb, 0, true)
        audio_sound_gain(global.musicalt, 0, 0)
    }
    if ((string_startswith(roomname, "PP") || room == testroom) && (!audio_is_playing(mu_tutorial)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_tutorial, 0, true)
    }
    if string_startswith(roomname, "cheese")
    {
        audio_stop_sound(global.music)
        roomnum = string_digits(string_replace(roomname, "cheese_", ""))
        if (roomnum != "")
            roomnum = real(roomnum)
        if (roomnum >= 6 && (!audio_is_playing(mu_ruinremix)))
            global.music = audio_play_sound(mu_ruinremix, 0, true)
        else if (!audio_is_playing(mu_ruin))
            global.music = audio_play_sound(mu_ruin, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if string_startswith(roomname, "sauce")
    {
        audio_stop_sound(global.music)
        roomnum = string_digits(string_replace(roomname, "sauce_", ""))
        if (roomnum != "")
            roomnum = real(roomnum)
        if (roomnum >= 7 && (!audio_is_playing(mu_scary)))
            global.music = audio_play_sound(mu_scary, 0, true)
        else if (!audio_is_playing(mu_dungeon))
            global.music = audio_play_sound(mu_dungeon, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "strongcold") && room != strongcold_bossfight && room != strongcold_bossfight2)
    {
        audio_stop_sound(global.music)
        roomnum = string_digits(string_replace(roomname, "strongcold_", ""))
        if (roomnum != "")
            roomnum = real(roomnum)
        if (roomnum >= 6 && (!audio_is_playing(mu_scary)))
            global.music = audio_play_sound(mu_scary, 0, true)
        else if (!audio_is_playing(mu_strongcold))
            global.music = audio_play_sound(mu_strongcold, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "enter") && room != enter_bossfight && room != enter_9)
    {
        audio_stop_sound(global.music)
        if ((!audio_is_playing(mu_entrance)) && obj_player.character != "N")
            global.music = audio_play_sound(mu_entrance, 0, true)
        if ((!audio_is_playing(mu_noiseentrance)) && obj_player.character == "N")
            global.music = audio_play_sound(mu_noiseentrance, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "scare") && (!audio_is_playing(mu_scare)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_scare, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "desert") && room != desert_room2_4)
    {
        audio_stop_sound(global.music)
        if (room == desert_room2_3 && (!audio_is_playing(mu_desertreverse)))
            global.music = audio_play_sound(mu_desertreverse, 0, true)
        else if (!audio_is_playing(mu_desert))
            global.music = audio_play_sound(mu_desert, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "hardlevel") && room != hardlevel_4 && (!audio_is_playing(mu_megalovania)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_megalovania, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "sewer") && (!audio_is_playing(mu_sewer)) && room != sewer_gustavo)
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_sewer, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "space") && (!audio_is_playing(mu_space)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_space, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if string_startswith(roomname, "freezer")
    {
        audio_stop_sound(global.music)
        roomnum = string_digits(string_replace(roomname, "freezer_", ""))
        if (roomnum != "")
            roomnum = real(roomnum)
        if (roomnum >= 9 && (!audio_is_playing(mu_freezer2)))
            global.music = audio_play_sound(mu_freezer2, 0, true)
        else if (!audio_is_playing(mu_freezer))
            global.music = audio_play_sound(mu_freezer, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "cheese_secret") && (!audio_is_playing(mu_secretcheese)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_secretcheese, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "sauce_secret") && (!audio_is_playing(mu_secretsauce)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_secretsauce, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (string_startswith(roomname, "freezer_secret") && (!audio_is_playing(mu_secretfreezer)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_secretfreezer, 0, true)
        audio_sound_set_track_position(global.music, playback)
    }
    if (room == snick_challengeend && (!audio_is_playing(mu_spaghetti)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_spaghetti, 0, true)
    }
    if (room == snick_challengeend3 && (!audio_is_playing(mu_spaghettireverse)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_spaghettireverse, 0, true)
    }
    if (room == snick_challengeend5 && (!audio_is_playing(mu_scary)))
    {
        audio_stop_sound(global.music)
        global.music = audio_play_sound(mu_scary, 0, true)
    }
}
