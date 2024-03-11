if (keyboard_check_pressed(ord("Z")) && showdialog)
{
    obj_player.burger = 0
    showdialog = 0
    path_start(path_noise, 12, path_action_stop, 0)
    audio_stop_all()
}
