if taunting
    draw_sprite(spr_taunteffect, 0, round(x), round(y))
pal_swap_set(spr_palette, paletteselect, 0)
if taunting
    draw_sprite_ext(spr_taunt, 0, round(x), round(y), xscale, image_yscale, image_angle, image_blend, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, image_yscale, image_angle, image_blend, image_alpha)
pal_swap_reset()
if burger
    draw_sprite_ext(spr_burger, 0, x, ((y - 32) + sprite_get_bbox_top(sprite_index)), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
