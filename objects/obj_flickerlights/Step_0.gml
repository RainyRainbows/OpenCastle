if (irandom_range(0, 100) == 5 && alarm[0] == -1)
{
    twitch = 1
    alarm[3] = 5
}
if twitch
    camera_set_view_angle(view_camera[0], random_range(1, 5))
