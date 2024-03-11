if (!(place_meeting(x, y, obj_chandetrigger)))
    falling = 1
if falling
    gravity = 0.5
if (vspeed > 10)
    vspeed = 10
if (place_meeting(x, y, obj_solid) && falling)
    instance_destroy()
