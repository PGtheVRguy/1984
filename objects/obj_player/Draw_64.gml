/// @description Insert description here
// You can write your code in this editor

windowWidth = 160
windowHeight = 144
draw_sprite_ext(spr_UI,0,windowWidth/2,20,(windowWidth/16)-2,1,0,-1,1)

draw_sprite_ext(spr_clock,0,windowWidth-20,windowHeight-20,1,1,0,-1,1)
draw_sprite_ext(spr_clock,1,windowWidth-20,windowHeight-20,1,1,lerp(0,-720,hour/24),-1,1)

draw_set_font(fo_main)
draw_set_halign(fa_center)

//if ds_grid_value_exists()

//var text = ds_list_find_value(schedule,currentJob)

var text = string(ds_grid_get(global.schedule,0,hour))



//var text = "  "
draw_text(windowWidth/2,14,text)

draw_text_scribble(0,windowHeight,"[fa_bottom][fa_left]E"+string(energy))

//draw_text(windowWidth/2,14,string(hour) + ":" + string(minute))