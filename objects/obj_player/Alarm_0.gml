if (global.panic || global.snickchallenge)
{
    if (!((global.minutes <= 0 && global.seconds <= 0)))
    {
        global.seconds -= 1
        global.collect -= 5
        if (global.collect < 0)
            global.collect = 0
        if (global.seconds < 0)
        {
            global.seconds += 60
            global.minutes -= 1
        }
    }
    if (global.minutes <= 0 && global.seconds <= 0 && room != enter_bossfight && (!global.snickchallenge))
    {
        if (global.gustavocon > 0)
        {
            global.gustavocon = 666
            global.panic = 0
            burger = 0
            room_goto(sewer_gustavo)
            return;
        }
        else
            game_restart()
    }
}
alarm[0] = room_speed
