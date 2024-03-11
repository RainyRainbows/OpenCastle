if ((!canmove) && (!fall))
{
    x = lerp(x, 96, 0.05)
    y = lerp(y, 256, 0.05)
}
else if (!fall)
{
    if keyboard_check(vk_up)
        y -= 5
    if keyboard_check(vk_down)
        y += 5
    if keyboard_check(vk_left)
        x -= 5
    if keyboard_check(vk_right)
        x += 5
    x = clamp(x, 0, room_width)
    y = clamp(y, 0, room_height)
    if keyboard_check(ord("X"))
    {
        with (instance_create_depth(x, y, (depth - 1), obj_shotgunbullet))
        {
            image_xscale = 1
            spd = (image_xscale * 25)
        }
    }
}
if fall
{
    gravity = 0.25
    hspeed = 5
    var layerid = layer_get_id("Background")
    var bg = layer_background_get_id(layerid)
    layer_background_speed(bg, 0)
    obj_enterbossfight.fadea += 0.01
    if (obj_enterbossfight.fadea >= 1.25)
    {
        obj_hud.visible = true
        room_goto(enter_9)
        obj_player.canmove = 1
    }
}
if (global.minutes <= 0 && global.seconds <= 0 && global.panic)
{
    canmove = 0
    gravity = 0.25
    hspeed = 5
    obj_enterbossfight_noise.hp = 100
    obj_enterbossfight_noise.hspeed = 5
    obj_enterbossfight_noise.vspeed = -2.5
    layerid = layer_get_id("Background")
    bg = layer_background_get_id(layerid)
    layer_background_speed(bg, 0)
    if (y >= (room_height + 100))
    {
        global.panic = 0
        audio_stop_all()
        room_goto(enter_7)
        global.music = audio_play_sound(mu_entrance, 0, true)
        obj_player.canmove = 1
    }
}
