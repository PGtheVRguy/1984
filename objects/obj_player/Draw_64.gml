/// @description Insert description here
// You can write your code in this editor

draw_set_font(fo_main)
draw_set_halign(fa_center)
switch(state)
{
	case _state.generic:
		draw_sprite_ext(spr_UI,0,windowWidth/2,20,(windowWidth/16)-1,1,0,-1,1)

		draw_sprite_ext(spr_clock,0,windowWidth-20,windowHeight-15,1,1,0,-1,1)
		draw_sprite_ext(spr_clock,1,windowWidth-20,windowHeight-15,1,1,lerp(0,-720,global.hour/24),-1,1)
		
		var text = string(ds_grid_get(global.schedule,0,global.hour))
		draw_text_scribble(windowWidth/2,14,"[#9bbc0f]" + text)
	//	draw_text_scribble(-1,windowHeight+1,"[fa_bottom][fa_left][#8bac0f]S"+string(global.san))
	//	draw_text_scribble(0,windowHeight,"[fa_bottom][fa_left][#9bbc0f]S"+string(global.san))		
		draw_text_scribble(4,windowHeight-5+1,"[fa_bottom][fa_left][#8bac0f]S"+string(global.san))
		draw_text_scribble(5,windowHeight-5,"[fa_bottom][fa_left][#9bbc0f]S"+string(global.san))
		
	break;
	case _state.sleep:
		draw_sprite_ext(spr_UI_sleep,0,0,0,1.0001,1.00001,0,-1,1)
		if ranSleepChance = false
		{
			if global.worked = false
			{
				global.rep -= 10
			}
			sleepTimer = 0
			ranSleepChance = true
			
			if global.rep <= 10
			{
				var sur = irandom_range(0,1)
				if global.rep <= 0
				{
					var sur = 0
				}
				if sur = 0
				{
					dead = true
					sleepText = "You have been vaporized,\n bad job 'Comrade' "
				}
				else
				{
					dead = false
					sleepText = "You survived through the night"
				}
			}
			else
			{
				dead = false
				sleepText = "You survived through the night"
			}
		}
		sleepTimer += 1
		if sleepTimer > 120
		{
			var scribSleepText = scribble("[fa_center][#306230][fo_small][scale,1.25]" + sleepText).wrap(windowWidth-10)
			scribSleepText.draw(windowWidth/2,30)
		}
		if sleepTimer > 180
		{
			var scribSleepSub = scribble("[fa_center][#306230][fo_small]Hit your action key to continue").wrap(windowWidth-20)
			scribSleepSub.draw(windowWidth/2,60)
			//draw_text_scribble(windowWidth/2,45,)
			
			if input_check_pressed("action")
			{
				if dead = false
				{
					state = _state.generic
					global.hour = 4
					global.minute = 0
					global.day += 1
					global.worked = false
				}
				else
				{
					room = rm_end
				}
			}
		}
	break;
}


if elevatorUI = true
{
	uiMax = 1
	state = _state.UI
	 draw_sprite_ext(spr_UI_window,0,windowWidth/2,windowHeight/2,1,1,0,-1,1)
	draw_text_scribble(windowWidth/2,20,"[fa_center][#0f380f]Where to go?")

	if room = rm_home{
		var destination = "work"
	}
	if room = rm_work
	{
		var destination = "home"
	}
		draw_text_scribble(windowWidth/2,64,"[fa_center][#0f380f]" + destination)
	draw_text_scribble(windowWidth/2,84,"[fa_center][#0f380f]Back")

	draw_text_scribble(24,(64)+20*uiSel,"[#0f380f]>")
	
	if input_check_pressed("action")
	{
		if uiSel = 0
		{
			global.usedElevator = true	
			room = asset_get_index("rm_" + destination)
			
		}
		if uiSel = 1
		{
			state = _state.generic
			elevatorUI = false
		}
	}
}
//draw_text(windowWidth/2,14,string(hour) + ":" + string(minute))