if drawself
    draw_self()
if (distance_to_object(obj_player) < 40)
    draw_sprite_ext(spr_uparrow, 0, obj_player.x, ((y - 42) + (sin(sin_value) * 32)), (abs(sin((sin_value + (2 * pi)))) * 2), 1, 0, c_white, 1)
