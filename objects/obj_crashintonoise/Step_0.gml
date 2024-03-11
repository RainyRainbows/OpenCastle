if ((!dead) && instance_exists(obj_player) && sprite_index == spr_playerN_idle)
{
    if (obj_player.x < x)
        image_xscale = -1
    else
        image_xscale = 1
}
scr_collide()
if ((place_meeting(x, y, obj_player) && obj_player.state == (2 << 0)) || place_meeting(x, y, obj_shotgunbullet))
{
    if (!dead)
        event_user(0)
}
