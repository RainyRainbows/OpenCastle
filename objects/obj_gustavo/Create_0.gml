audio_stop_all()
con = 0
showdialogue = 1
sel = 0
image_speed = 0.35
dialogue = [""]
answers = [""]
switch global.gustavocon
{
    case 0:
        image_blend = c_black
        image_speed = 0
        dialogue = ["Hello Pepino.", "I've been waiting\nfor you.", "it is i Gusano", "i need you to\ndeliver something", "are you up to\nthe task?", "thank you", "i need you to\ndeliver this", "hamburger", "", "what? pizza?", "i work at burger\ntower now", "i need you to deliver\nthis to the castle", "good luck!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        answers = [[""], [""], [""], [""], ["yes", "sure", "absolutely", "alright"], [""], [""], [""], [""], [""], [""], [""], ["ok bye"]]
        break
    case 1:
        if (!audio_is_playing(mu_gustavo))
            global.music = audio_play_sound(mu_gustavo, 0, true)
        dialogue = ["you're back!", "the customer is satisfied", "thank you pepino", "wait", "it seems another\ncustomer wants burger", "i need you to deliver\nthis to the mountain", "good luck!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        answers = [[""], [""], [""], [""], [""], [""], ["ok bye"]]
        break
    case 2:
        if (!audio_is_playing(mu_gustavo))
            global.music = audio_play_sound(mu_gustavo, 0, true)
        dialogue = ["sorry it's unfinished"]
        answers = [[""]]
        break
    case 666:
        dialogue = ["You have failed."]
        answers = [""]
        break
}

burgery = -50
depth = (obj_player.depth - 1)
targetRoom = 26
