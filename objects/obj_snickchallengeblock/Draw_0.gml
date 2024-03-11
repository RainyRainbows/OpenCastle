draw_self()
repeat (3)
{
    if (irandom_range(0, 10) == 5)
        draw_sprite_ext(spr_snickexe, 0, (x + random(sprite_width)), (y + random(sprite_height)), random_range(-0.25, 0.25), random_range(-0.25, 0.25), image_angle, image_blend, 0.5)
}
