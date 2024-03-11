if (sprite_index == spr_jump)
{
    sprite_index = spr_fall
    image_index = 0
}
if (sprite_index == spr_crouchjump)
{
    sprite_index = spr_crouchfall
    image_index = 0
}
if (sprite_index == spr_doublejump)
    sprite_index = spr_doublejumpfall
if (sprite_index == spr_revolvershoot)
    state = (0 << 0)
