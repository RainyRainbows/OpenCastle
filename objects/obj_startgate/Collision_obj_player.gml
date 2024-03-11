if (keyboard_check(vk_up) && place_meeting(x, y, other) && other.state != (3 << 0) && other.state != (4 << 0))
{
    audio_stop_all()
    other.targetDoor = "A"
    global.roomfrom = room
    global.xfrom = other.x
    global.yfrom = other.y
    other.hsp = 0
    other.vsp = 0
    other.state = (0 << 0)
    switch level
    {
        case "scape":
            global.panic = 1
            global.minutes = 2
            global.seconds = 59
            other.alarm[0] = room_speed
            room_goto(escape_1)
            break
        case "cheese":
            other.targetDoor = "B"
            room_goto(cheese_1)
            break
        case "sauce":
            room_goto(sauce_1)
            break
        case "snic kchallenge":
            audio_stop_all()
            room_goto(snick_challenge)
            break
        case "oregan":
            room_goto(desert_room2_1)
            break
    }

}
