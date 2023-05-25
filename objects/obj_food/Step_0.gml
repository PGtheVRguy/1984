/// @description Insert description here
// You can write your code in this editor
var job = string(ds_grid_get(global.schedule,0,global.hour))
if  ((job = "Wakeup") or (job = "Freetime"))
{
	sprite_index = spr_food
}
else
{
	sprite_index = spr_table
}