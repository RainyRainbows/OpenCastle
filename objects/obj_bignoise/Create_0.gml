obj_player.hsp = 0
obj_player.vsp = 0
depth = (obj_player.depth + 1)
audio_stop_sound(global.music)
audio_stop_sound(sfx_mach2)
audio_stop_sound(sfx_mach3)
instance_destroy(obj_machtrail)
con = 0
image_speed = 0.35
sel = 0
if (obj_player.character == "P")
{
    destinations[0] = choose("no", "OH NO!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", "oh no", "sound no stop", "nononononon", "why", "how", "sound why")
    message = "hey peppino im\nfrikin huuuuge\nwanna run ? ?? ?? ???"
}
else if (obj_player.character == "V")
{
    destinations[0] = "cheese sounds"
    message = "hey cheese thing im\nfrikin huuuuge\nwanna run ? ?? ?? ???"
}
else if (obj_player.character == "N")
{
    destinations[0] = "yes!!!!!!!"
    message = "hey myself im\nfrikin huuuuge\nwanna run ? ?? ?? ???"
}
else if (obj_player.character == "S")
{
    destinations[0] = "cbt time"
    message = "hey snic kim\nfrikin huuuuge\nwanna run ? ?? ?? ???"
}
hsp = 0
vsp = 0
grav = 0.5
dead = 0
grounded = 1
xscale = 1
camshake = 0
crouching = 0
lockcamera = 1
playmusic = 1
followme = 0
image_xscale = 6
image_yscale = 6
