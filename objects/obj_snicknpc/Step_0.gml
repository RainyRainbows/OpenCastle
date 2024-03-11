if (!instance_exists(obj_player))
    return;
if (obj_player.x > x)
    image_xscale = -1
else
    image_xscale = 1
if (obj_player.character == "S")
{
    visible = false
    message = ""
    advance = 0
    return;
}
if place_meeting(x, y, obj_player)
{
    if keyboard_check_pressed(vk_up)
        advance += 1
    switch advance
    {
        case 1:
            if (obj_player.character == "P")
                message = "welcome pepino to hub"
            if (obj_player.character == "N")
                message = "welcome sound to hub"
            if (obj_player.character == "V")
                message = "welcome gun guy to hub"
            break
        case 2:
            message = "enjoy game in right"
            break
        case 3:
            message = "fun. !"
            break
        default:
            message = ""
            advance = 0
            break
    }

}
else
{
    advance = 0
    message = ""
}
