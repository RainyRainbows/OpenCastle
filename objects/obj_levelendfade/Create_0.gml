audio_stop_all()
global.panic = 0
global.snickchallenge = 0
obj_player.state = (4 << 0)
obj_player.sprite_index = obj_player.spr_rotate
obj_player.image_speed = 0.1
sfx_pizzatime_sound = audio_play_sound(sfx_pizzatime, 0, false)
audio_play_sound(sfx_secretfound, 0, false)
camera_set_view_target(view_camera[0], -4)
fade = 0
depth = -10000
obj_player.vsp = 2
obj_player.image_index = 0
missedbullet = 0
if (instance_exists(obj_snickchallenge) && obj_snickchallenge.missedbullet)
    missedbullet = 1
