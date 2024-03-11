if (!visible)
{
    visible = true
    drawself = 0
}
sin_value += ((2 * pi) / steps_per_cycle)
if (sin_value >= (2 * pi))
    sin_value = 0
if (canenter > 0)
    canenter -= 1
if (sprite_index == spr_doorglitched)
{
    image_speed = 0
    if (irandom_range(0, 20) == 5)
        image_index = choose(1, 2, 3, 4)
    else
        image_index = 0
}
