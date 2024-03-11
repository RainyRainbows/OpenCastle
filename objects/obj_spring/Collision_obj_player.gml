if other.visible
{
    image_index = 1
    image_speed = 0.1
    var impulse = 12
    if (keyboard_check(ord("Z")) || other.state == (2 << 0))
        impulse = 20
    var hsp = lengthdir_x(impulse, (image_angle + 90))
    var vsp = lengthdir_y(impulse, (image_angle + 90))
    if (hsp != 0)
    {
        other.hsp = hsp
        other.xscale = sign(hsp)
    }
    if (vsp != 0)
    {
        other.vsp = vsp
        other.canceljump = 0
        other.grounded = 0
    }
}
