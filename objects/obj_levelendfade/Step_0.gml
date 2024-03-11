fade += 0.01
if (fade >= 2)
{
    obj_player.targetDoor = "none"
    obj_player.hsp = 0
    obj_player.vsp = 0
    obj_player.xscale = 1
    obj_player.x = global.xfrom
    obj_player.y = global.yfrom
    obj_player.state = (0 << 0)
    obj_player.canmove = 1
    global.collect = 0
    ds_list_clear(global.saveroom)
    audio_stop_all()
    room_goto(global.roomfrom)
}
if (!missedbullet)
    camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), (camera_get_view_y(view_camera[0]) - 1))
if missedbullet
    audio_sound_pitch(sfx_pizzatime_sound, (audio_sound_get_pitch(sfx_pizzatime_sound) - 0.01))
if (fade >= 0.5 && missedbullet)
{
    audio_sound_pitch(sfx_pizzatime_sound, 1)
    audio_stop_all()
    scr_sleep(1000)
    global.snickchallenge = 1
    global.minutes = 0
    global.seconds = 59
    global.collect = 10000
    obj_player.canmove = 1
    obj_player.state = (0 << 0)
    obj_player.targetDoor = "A"
    room_goto(escape_1)
}
