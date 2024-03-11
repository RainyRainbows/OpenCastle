var _temp_local_var_3;
function scr_collide_player() //gml_Script_scr_collide_player
{
    grounded = 0
    var _temp_local_var_3 = abs(vsp)
    if (abs(vsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (!(scr_solid_player(x, (y + sign(vsp)))))
            {
                y += sign(vsp)
                var _temp_local_var_3 = (abs(vsp) - 1)
                if (abs(vsp) - 1)
                    continue
                break
            }
            else
                vsp = 0
        }
    }
    var _temp_local_var_3 = abs(hsp)
    if (abs(hsp) <= 0)
    {
    }
    else
    {
        while (true)
        {
            if (scr_solid_player((x + sign(hsp)), y) && (!(scr_solid_player((x + sign(hsp)), (y - (1 * sign(grav)))))))
                y -= sign(grav)
            if ((!(scr_solid_player((x + sign(hsp)), y))) && (!(scr_solid_player((x + sign(hsp)), (y + (1 * sign(grav)))))) && scr_solid_player((x + sign(hsp)), (y + (2 * sign(grav)))))
                y += sign(grav)
            if (!(scr_solid_player((x + sign(hsp)), y)))
            {
                x += sign(hsp)
                var trans = instance_place(x, y, obj_door)
                if trans
                {
                    with (trans)
                        event_perform(ev_collision, obj_player)
                }
                trans = instance_place(x, y, obj_transition)
                if trans
                {
                    with (trans)
                        event_perform(ev_collision, obj_player)
                }
                trans = instance_place(x, y, obj_deathtrigger)
                if trans
                {
                    with (trans)
                        event_perform(ev_collision, obj_player)
                }
                var _temp_local_var_3 = (abs(hsp) - 1)
                if (abs(hsp) - 1)
                    continue
                break
            }
            else
                hsp = 0
        }
    }
    if (!(string_startswith(room_get_name(room), "space")))
    {
        if (sign(grav) == 1)
        {
            if (vsp < 20)
                vsp += grav
        }
        else if (vsp > -20)
            vsp += grav
    }
    grounded |= scr_solid_player(x, (y + sign(grav)))
    grounded |= ((!(place_meeting(x, y, obj_platform))) && place_meeting(x, (y + sign(grav)), obj_platform))
}

