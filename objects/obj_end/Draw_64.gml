/// @description Insert description here
// You can write your code in this editor
windowWidth = 160
windowHeight = 144



highscore = global.san*global.day
draw_text_scribble(windowWidth/2,40,"[#306230][scale,1.5]You die")

draw_text_scribble(windowWidth/2,windowHeight/2,"[scale,1][#306230]Your highscore was " + string(highscore) + "!")
timer += 1

if ((timer > 60) and (input_check_pressed("action")))
{
	game_restart();
}

