if image_index > sprite_get_number(spr_intro)-1
{
	image_speed = 0
	room = chooseRoom
}
else
{
	image_speed = 0.75
}

if((image_index > 13) and (playedAudio = false))
{
	audio_play_sound(snd_intro,true,false)
	playedAudio = true
}
//show_debug_message(string(image_index) + "/" + string(sprite_get_number(spr_intro)))