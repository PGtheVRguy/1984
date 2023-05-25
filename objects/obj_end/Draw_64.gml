/// @description Insert description here
// You can write your code in this editor
windowWidth = 160
windowHeight = 144



highscore = global.san*global.day
draw_text_scribble(windowWidth/2,40,"[#306230][scale,0.5]You die")

draw_text_scribble(windowWidth/2,windowHeight/2,"[scale,0.25][#306230]Your highscore was " + string(highscore) + "!")