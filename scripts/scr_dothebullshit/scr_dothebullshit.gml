function scr_dothebullshit() //gml_Script_scr_dothebullshit
{
    ds_list_clear(global.saveroom)
    audio_stop_sound(sfx_pephurt)
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    audio_play_sound(sfx_pephurt, 0, false)
    with (obj_player)
    {
        hsp = 0
        vsp = 0
        xscale = 1
        state = (0 << 0)
        targetDoor = "A"
    }
    scr_sleep(500)
    room_goto(hardlevel_1)
}

