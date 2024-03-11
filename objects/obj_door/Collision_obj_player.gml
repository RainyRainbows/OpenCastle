if (keyboard_check(vk_up) && place_meeting(x, y, obj_player) && obj_player.state != (3 << 0) && obj_player.state != (4 << 0) && canenter <= 0)
{
    audio_stop_sound(sfx_door)
    audio_play_sound(sfx_door, 0, false)
    obj_player.targetDoor = targetDoor
    room_goto(targetRoom)
}
