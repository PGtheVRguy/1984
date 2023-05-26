if input_check_pressed("right")
{
	uiSel += 1
	if uiSel = 2
	{
		uiSel = 0
	}
}
if input_check_pressed("left")
{
	uiSel -= 1
	if uiSel = -1
	{
		uiSel = 1
	}
}

draw_text_scribble((160/2)-1,16+1,"[fa_center][#8bac0f][scale,1.5][fo_main]1984")
draw_text_scribble(160/2,16,"[fa_center][#0f380f][scale,1.5][fo_main]1984")


draw_text_scribble((32+(64*uiSel))-1,120+1,"[#8bac0f][scale,0.5][fo_main]>")
draw_text_scribble(32+(64*uiSel),120,"[#0f380f][scale,0.5][fo_main]>")


draw_text_scribble(48-1,120+1,"[#8bac0f][scale,0.5][fo_main]play")
draw_text_scribble(48,120,"[#0f380f][scale,0.5][fo_main]play")


draw_text_scribble(48+64-1,120+1,"[#8bac0f][scale,0.5][fo_main]quit")
draw_text_scribble(48+64,120,"[#0f380f][scale,0.5][fo_main]quit")


if input_check_pressed("action")
{
	if uiSel = 0{room = rm_home}
	if uiSel = 1{game_end()}
	
}