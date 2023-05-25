var p = obj_player


if runGame = true
{
	draw_sprite_ext(spr_uiFade,0,0,0,p.windowWidth/16,p.windowHeight/16,0,-1,1)
	draw_sprite_ext(spr_UI_window,0,p.windowWidth/2,p.windowHeight/2,1,1,0,-1,1)
	draw_text_scribble(p.windowWidth/2,20,"[fa_center][#0f380f][scale,0.5]Sleep for the night?")



	dif = 0
	draw_text_scribble(p.windowWidth/2,64+(10*0),"[scale,0.5][#0f380f]YES")
	draw_text_scribble(p.windowWidth/2,64+(10*1),"[scale,0.5][#0f380f]NO")
	
	
	if input_check_pressed("up")
	{
		qSel -= 1
		if qSel = -1
		{
			qSel = 1
		}
	}
	if input_check_pressed("down")
	{
		qSel +=1
		if qSel = 2
		{
			qSel = 0
		}
	}
	draw_text_scribble(24,64+(10*qSel),"[scale,0.5][#0f380f]>")
	
	
	if ((input_check_pressed("action")) and (qSel = 0))
	{
		runGame = false
		obj_player.state = _state.sleep
		//global.hour = 4
	}
	if ((input_check_pressed("action")) and (qSel = 1))
	{
		runGame = false
		p.state = _state.generic
	}
}