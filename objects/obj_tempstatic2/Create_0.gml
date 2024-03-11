audio_stop_all()
obj_player.canmove = 0
obj_player.image_speed = 0
obj_player.hsp = 0
audio_play_sound(sfx_static, 0, false)
alarm[0] = (room_speed * 3)
depth = (obj_hud.depth - 1)
