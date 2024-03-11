var bgl = layer_get_id("Background")
var bg = layer_background_get_id(bgl)
layer_background_sprite(bg, 94)
with (instance_create_depth(0, 0, 0, obj_tempstatic))
    alarm[0] = room_speed
alarm[1] = (room_speed * 2)
