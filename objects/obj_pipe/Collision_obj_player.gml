with (other)
{
    if (state == (0 << 0) || state == (2 << 0) || state == (1 << 0) || state == (11 << 0))
    {
        switch other.action
        {
            case (0 << 0):
                state = (11 << 0)
                if (vspeed == 0)
                {
                    x = (other.x + 32)
                    y = (other.y + 16)
                }
                hspeed = 0
                vspeed = (-other.spd)
                break
            case (1 << 0):
                state = (11 << 0)
                if (vspeed == 0)
                {
                    x = (other.x + 32)
                    y = (other.y + 16)
                }
                hspeed = 0
                vspeed = other.spd
                break
            case (3 << 0):
                state = (11 << 0)
                if (hspeed == 0)
                {
                    x = (other.x + 32)
                    y = (other.y + 16)
                }
                hspeed = other.spd
                vspeed = 0
                break
            case (2 << 0):
                state = (11 << 0)
                if (hspeed == 0)
                {
                    x = (other.x + 32)
                    y = (other.y + 16)
                }
                hspeed = (-other.spd)
                vspeed = 0
                break
            case (4 << 0):
                if (state == (11 << 0))
                {
                    image_angle = 0
                    state = (2 << 0)
                    hsp = hspeed
                    vsp = vspeed
                    hspeed = 0
                    vspeed = 0
                }
                break
        }

    }
}
