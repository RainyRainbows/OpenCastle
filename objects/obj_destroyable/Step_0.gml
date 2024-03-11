if (obj_player.state == (2 << 0))
{
    if (place_meeting((x - 8), y, obj_player) || place_meeting(((x + 32) + 8), y, obj_player))
        instance_destroy()
}
