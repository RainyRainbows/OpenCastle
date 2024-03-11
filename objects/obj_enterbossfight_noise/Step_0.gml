if (macht <= 0 && (!inv))
{
    with (instance_create_depth(x, y, (depth + 1), obj_notplayermachtrail))
    {
        image_xscale = other.image_xscale
        image_index = other.image_index
        sprite_index = other.sprite_index
        hspeed = -24
    }
    macht = 5
}
else
    macht -= 1
vspeed = ((abs((100 - hp)) / 90) * yscale)
if (hp <= 0)
{
    if global.panic
    {
        global.panic = 0
        audio_stop_all()
        audio_play_sound(sfx_killenemy, 0, false)
        alarm[1] = room_speed
        obj_enterbossfight_player.canmove = 0
    }
    hp = 0
    inv = 1
    image_angle += 10
    vspeed = 10
}
else
{
    if (y >= (room_height - 50))
        yscale = -1
    if (y <= 50)
        yscale = 1
}
