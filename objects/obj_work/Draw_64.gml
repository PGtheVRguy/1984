var p = obj_player


if runGame = true
{
	if newQuestion = true
	{
		question = irandom_range(1,maxQuestions)
		show_debug_message(ds_list_find_index(questionedUsed,question))
		if ds_list_find_index(questionedUsed,question) = -1
		{
			
			newQuestion = false
		}
		else
		{
			failedNewCounter += 1
			if failedNewCounter > 9
			{
				runGame = false
				p.state = _state.generic
			}
		}
	}
	draw_sprite_ext(spr_uiFade,0,0,0,p.windowWidth/16,p.windowHeight/16,0,-1,1)
	var textQuestion = ds_grid_get(questionsGrid,0,question)
	draw_sprite_ext(spr_UI_window,0,p.windowWidth/2,p.windowHeight/2,1,1,0,-1,1)
	draw_text_scribble(p.windowWidth/2,20,"[fa_center][#0f380f][scale,0.5]"+string(textQuestion))



	dif = 0
	repeat(4)
	{
		var text = ds_grid_get(questionsGrid,dif+1,question)
		draw_text_scribble(p.windowWidth/2,64+(10*dif),"[scale,0.5][#0f380f]"+string(text))
		dif += 1
	}
	
	
	if input_check_pressed("up")
	{
		qSel -= 1
		if qSel = -1
		{
			qSel = 3
		}
	}
	if input_check_pressed("down")
	{
		qSel +=1
		if qSel = 4
		{
			qSel = 0
		}
	}
	draw_text_scribble(24,64+(10*qSel),"[scale,0.5][#0f380f]>")
	
	
	if ((input_check_pressed("action")) and (qSel+1 = ds_grid_get(questionsGrid,5,question)))
	{
		ds_list_add(questionedUsed,question)
		newQuestion = true
	}
}