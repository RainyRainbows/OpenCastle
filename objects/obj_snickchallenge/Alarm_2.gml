with (obj_player)
{
    x = (room_width / 2)
    y = (room_height + 50)
}
instance_create_depth((room_width / 2), (room_height / 2), 0, obj_levelendfade)
alarm[0] = -1
showintro = 1
fadeout = 1
