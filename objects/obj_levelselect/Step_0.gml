with (obj_wc)
{
    if WC_consoleopen
        return;
}
if keyboard_check_pressed(ord("Z"))
{
    obj_player.targetDoor = "A"
    obj_player.scared = 0
    with (obj_player)
    {
        switch other.char
        {
            case 0:
                character = "P"
                break
            case 1:
                character = "N"
                break
            case 2:
                character = "V"
                break
            case 3:
                character = "S"
                break
        }

        scr_characterspr()
    }
    switch sel
    {
        case 0:
            audio_stop_all()
            room_goto(enter_1)
            break
        case 1:
            audio_stop_all()
            global.panic = 1
            global.minutes = 2
            global.seconds = 59
            obj_player.alarm[0] = room_speed
            room_goto(escape_1)
            break
        case 2:
            audio_stop_all()
            room_goto(cheese_1)
            break
        case 3:
            audio_stop_all()
            room_goto(sauce_1)
            break
        case 4:
            audio_stop_all()
            room_goto(snick_challenge)
            break
        case 5:
            if (char != 1)
                onlyplayasnoise = 1
            else
            {
                audio_stop_all()
                room_goto(scare_1)
                with (obj_player)
                    paletteselect = 1
            }
            break
        case 6:
            audio_stop_all()
            room_goto(strongcold_7)
            break
        case 7:
            audio_stop_all()
            room_goto(hubroom)
            break
        case 8:
            audio_stop_all()
            room_goto(testroom)
            break
        case 9:
            audio_stop_all()
            room_goto(desert_room2_1)
            break
        case 10:
            audio_stop_all()
            room_goto(hardlevel_1)
            break
        case 11:
            audio_stop_all()
            room_goto(freezer_1)
            break
        case 12:
            audio_stop_all()
            room_goto(sewer_1)
            break
        case 13:
            audio_stop_all()
            room_goto(space_1)
            break
    }

}
if keyboard_check_pressed(vk_down)
    sel += 1
if keyboard_check_pressed(vk_up)
    sel -= 1
if (sel > 13)
    sel = 0
if (sel < 0)
    sel = 13
if keyboard_check_pressed(vk_right)
    char += 1
if keyboard_check_pressed(vk_left)
    char -= 1
char = clamp(char, 0, (2 + unlocksnick))
if (0 && keyboard_check_pressed(ord("S")) && object_index != obj_levelselect_fake)
{
    with (instance_create_depth(0, 0, 0, obj_levelendfade))
        missedbullet = 1
}
