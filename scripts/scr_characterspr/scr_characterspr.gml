function scr_characterspr() //gml_Script_scr_characterspr
{
    spr_palette = spr_peppalette
    paletteselect = 1
    spr_idle = spr_player_idle
    spr_move = spr_player_move
    spr_jump = spr_player_jump
    spr_mach2 = spr_player_mach2
    spr_mach = spr_player_mach4
    spr_fall = spr_player_fall
    spr_rotate = spr_player_rotate
    spr_crouch = spr_player_crouch
    spr_crouchjump = spr_player_crouchjump
    spr_crouchfall = spr_player_crouchfall
    spr_crawl = spr_player_crawl
    spr_hurt = spr_player_hurt
    spr_doublejump = spr_player_jump
    spr_doublejumpfall = spr_player_fall
    spr_revolvershoot = spr_player_idle
    spr_taunt = spr_petah
    machspd = 16
    if (character == "N")
    {
        spr_palette = spr_noisepalette
        paletteselect = 0
        spr_idle = spr_playerN_idle
        spr_move = spr_playerN_move
        spr_jump = spr_playerN_jump
        spr_mach = spr_playerN_mach4
        spr_mach2 = spr_playerN_mach4
        spr_fall = spr_playerN_fall
        spr_rotate = spr_playerN_rotate
        spr_crouch = spr_playerN_crouch
        spr_crouchjump = spr_playerN_crouchjump
        spr_crouchfall = spr_playerN_crouchfall
        spr_crawl = spr_playerN_crawl
        spr_hurt = spr_playerN_hurt
        spr_doublejump = spr_playerN_doublejump
        spr_doublejumpfall = spr_playerN_doublejumpfall
        spr_revolvershoot = spr_playerN_idle
        spr_taunt = spr_playerN_taunt
        machspd = 6
    }
    if (character == "V")
    {
        spr_palette = -1
        paletteselect = 0
        spr_idle = spr_playerV_idle
        spr_move = spr_playerV_move
        spr_jump = spr_playerV_jump
        spr_mach = spr_playerV_mach3
        spr_mach2 = spr_playerV_bootsmove
        spr_fall = spr_playerV_fall
        spr_rotate = spr_playerV_rotate
        spr_crouch = spr_playerV_crouch
        spr_crouchjump = spr_playerV_crouchjump
        spr_crouchfall = spr_playerV_crouchfall
        spr_crawl = spr_playerV_crouchmove
        spr_hurt = spr_playerV_hurt
        spr_doublejump = spr_playerV_jump
        spr_doublejumpfall = spr_playerV_fall
        spr_revolvershoot = spr_playerV_revolvershoot
        spr_taunt = spr_playerV_rotate
    }
    if (character == "S")
    {
        spr_palette = -1
        paletteselect = 0
        spr_idle = spr_playerS_idle
        spr_move = spr_playerS_move
        spr_jump = spr_playerS_jump
        spr_mach = spr_playerS_mach4
        spr_mach2 = spr_playerS_move
        spr_fall = spr_playerS_fall
        spr_rotate = spr_playerS_rotate
        spr_crouch = spr_playerS_crouch
        spr_crouchjump = spr_playerS_crouchjump
        spr_crouchfall = spr_playerS_idle
        spr_crawl = spr_playerS_crawl
        spr_hurt = spr_playerS_hurt
        spr_doublejump = spr_playerS_jump
        spr_doublejumpfall = spr_playerS_fall
        spr_revolvershoot = spr_playerS_idle
        spr_taunt = spr_playerS_rotate
        machspd = 32
    }
}

