/// @description Insert description here
// You can write your code in this editor

windowWidth = 160
windowHeight = 144
draw_set_font(fo_main)
draw_set_halign(fa_center)
switch(state)
{
	case _state.generic:
		draw_sprite_ext(spr_UI,0,windowWidth/2,20,(windowWidth/16)-1,1,0,-1,1)

		draw_sprite_ext(spr_clock,0,windowWidth-20,windowHeight-20,1,1,0,-1,1)
		draw_sprite_ext(spr_clock,1,windowWidth-20,windowHeight-20,1,1,lerp(0,-720,hour/24),-1,1)
		
		var text = string(ds_grid_get(global.schedule,0,hour))
		draw_text_scribble(windowWidth/2,14,"[#9bbc0f]" + text)
		draw_text_scribble(-1,windowHeight+1,"[fa_bottom][fa_left][#0f380f]S"+string(global.san))
		draw_text_scribble(0,windowHeight,"[fa_bottom][fa_left][#306230]S"+string(global.san))		
		draw_text_scribble(-1,windowHeight-20+1,"[fa_bottom][fa_left][#0f380f]R"+string(global.rep))
		draw_text_scribble(0,windowHeight-20,"[fa_bottom][fa_left][#306230]R"+string(global.rep))
		
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

	draw_text_scribble(24,(64)+20*uiSel,">")
	
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