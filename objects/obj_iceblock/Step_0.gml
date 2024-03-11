var player = instance_place(x, (y - 16), obj_player)
if (player && player.grounded)
{
    audio_stop_sound(sfx_mach2)
    audio_stop_sound(sfx_mach3)
    with (player)
    {
        hsp = (max(abs(hsp), 10) * xscale)
        state = (8 << 0)
    }
}
