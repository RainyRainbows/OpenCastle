function scr_drawuparrow(argument0, argument1) //gml_Script_scr_drawuparrow
{
    if (!(variable_instance_exists(self, "sin_value")))
        sin_value = 0
    if (!(variable_instance_exists(self, "steps_per_cycle")))
        steps_per_cycle = 5
    sin_value += ((2 * pi) / steps_per_cycle)
    if (sin_value >= (2 * pi))
        sin_value = 0
    draw_sprite_ext(spr_uparrow, 0, argument0, (argument1 + (sin(sin_value) * 32)), (abs(sin((sin_value + (2 * pi)))) * 2), 1, 0, c_white, 1)
}

