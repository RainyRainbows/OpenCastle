repeat (10)
    instance_create_depth((x + random_range(-50, 50)), (y + random_range(-50, 50)), depth, obj_snickparticle)
event_perform(ev_other, ev_room_start)
