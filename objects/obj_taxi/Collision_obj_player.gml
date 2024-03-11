if (keyboard_check(vk_up) && (!go) && hspeed == 0 && (!showdialog))
{
    sel = 0
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    obj_player.state = (0 << 0)
    obj_player.canmove = 0
    obj_player.sprite_index = obj_player.spr_idle
    showdialog = 1
    obj_player.hsp = 0
    obj_player.image_speed = 0.35
    gravstore = obj_player.grav
    obj_player.grav = 0
    obj_player.vsp = 0
    camera_set_view_target(view_camera[0], -4)
    if randomcancel
        destinations[0] = choose("no", "leave", "exit", "cancel", "no ride", "no thanks", "shut up", "bye", "love u bye", "ill think about it", "pass", "nah", "got better things to do", "not at the moment", "wait", "hold on", "not yet", "ehhh", "how about no", "No.", "can i speak to the manager", "no?", "NO!!!", "i wouldnt like to", "i respect your offer but", "not up for it", "i dont think so", "byebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebyebye", "eat my shoulder")
    if (other.x < x)
        other.xscale = 1
    else
        other.xscale = -1
}
