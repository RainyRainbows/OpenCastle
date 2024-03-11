audio_play_sound(sfx_killenemy, 0, false)
global.collect += 50
with (instance_create_depth(x, y, depth, obj_collectloss))
{
    sprite_index = other.sprite_index
    vspeed = -10
    image_angle = random_range(0, 360)
    image_blend = merge_colour(c_white, c_red, 0.75)
}
ds_list_add(global.saveroom, id)
