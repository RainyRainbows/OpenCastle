pal_swap_init_system(0)
if (targetDoor == "A")
{
    x = obj_doorA.x
    y = obj_doorA.y
}
if (targetDoor == "B")
{
    x = obj_doorB.x
    y = obj_doorB.y
}
if (targetDoor == "C")
{
    x = obj_doorC.x
    y = obj_doorC.y
}
canmove = 1
visible = true
depth = -6
if (state == (3 << 0))
    state = (0 << 0)
var j = 0
i = y
while (i < room_height)
{
    j += 1
    if (j >= 64)
        break
    else if scr_solid_player(x, (i + 1))
    {
        y = i
        break
    }
    else
    {
        i++
        continue
    }
}
