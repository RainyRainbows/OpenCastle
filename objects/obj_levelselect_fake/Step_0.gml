if (keyboard_check_pressed(ord("Z")) && (!instance_exists(obj_snickexe_jumpscare)))
{
    sel = 4
    char = 1
    obj_player.targetDoor = "A"
    with (obj_player)
    {
        character = "N"
        scr_characterspr()
    }
    audio_stop_all()
    instance_create_depth(0, 0, 0, obj_snickexe_jumpscare)
}
