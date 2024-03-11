audio_play_sound(sfx_killenemy, 0, false)
with (instance_create_depth(x, y, depth, obj_collectloss))
{
    sprite_index = other.sprite_index
    vspeed = -10
    image_angle = random_range(0, 360)
    image_blend = merge_colour(c_white, c_red, 0.75)
}
audio_stop_sound(mu_leaningnightmare)
global.snickchallenge = 0
obj_player.scared = 0
