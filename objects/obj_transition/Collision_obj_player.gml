if (obj_player.state != (3 << 0) && obj_player.state != (4 << 0))
{
    obj_player.targetDoor = targetDoor
    room_goto(targetRoom)
}
