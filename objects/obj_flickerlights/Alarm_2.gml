nobg = 0
layerbg = layer_get_id("Background")
bgfromlayer = layer_background_get_id(layerbg)
layer_background_sprite(bgfromlayer, -1)
layer_background_alpha(bgfromlayer, 0)
layer_background_blend(bgfromlayer, c_black)
audio_sound_pitch(global.music, 0.1)
