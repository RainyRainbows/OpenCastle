audio_stop_all()
global.panic = 0
global.snickchallenge = 0
audio_play_sound(sfx_secretfound, 0, false)
url_open("https://bit.ly/30X9uD5")
instance_destroy()
