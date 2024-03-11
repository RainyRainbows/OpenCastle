if decrease
{
    image_xscale -= 0.05
    image_yscale -= 0.05
    vsp -= random_range(5, 10)
    y += vsp
    if (image_xscale <= 0 || image_yscale <= 0)
        instance_destroy()
}
