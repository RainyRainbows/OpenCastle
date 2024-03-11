var telep = 0
if (instance_number(obj_player) > 1)
{
    with (obj_player)
    {
        if (state != (3 << 0) && state != (7 << 0))
        {
            other.x = x
            other.y = y
            telep = 1
        }
    }
}
if (!telep)
    room_restart()
state = (1 << 0)
canmove = 1
visible = true
scr_hurtplayer(100, self)
hsp = 0
vsp = 0
audio_stop_sound(sfx_pephurt)
xscale = 1
mask_index = spr_player_mask
