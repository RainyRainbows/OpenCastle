function scr_hurtplayer(argument0, argument1) //gml_Script_scr_hurtplayer
{
    var player = argument1
    if (player.canmove && player.state != (11 << 0))
    {
        if (!audio_is_playing(sfx_pephurt))
            audio_play_sound(sfx_pephurt, 0, false)
        player.hsp = ((-player.xscale) * 50)
        player.vsp = -10
        player.sprite_index = player.spr_hurt
        global.collect = max((global.collect - argument0), 0)
    }
}

