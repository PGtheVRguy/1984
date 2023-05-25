/// @description Insert description here
// You can write your code in this editor

if instance_place(x,y,obj_player)
{
	if input_check_pressed("action")
	{
		if dayUsed != global.day
		{
			global.san += 20
			global.rep -= 20
			dayUsed = global.day
		}
	}

}