timer += 1
switch(state)
{
	case _state.generic:
	ranSleepChance = false
		if input_check("right")
		{
			hsp = walkspeed
			image_xscale = 1
		}
		if input_check("left")
		{
			hsp = -walkspeed
			image_xscale = -1
		}
		if input_check("up")
		{
			vsp = -walkspeed
		}
		if input_check("down")
		{
			vsp = walkspeed
		}
		var movespeed = abs(hsp)+abs(vsp)
		if movespeed != 0
		{
			ia = sin(timer/10)*15
		}
		else
		{
			ia = lerp(ia,0,0.25)
		}
		move_and_collide(hsp,vsp,obj_collision);
	break;
	case _state.UI:
		if input_check_pressed("down")
		{
			uiSel += 1
			if uiSel > uiMax
			{
				uiSel = 0
			}
		}
		if input_check_pressed("up")
		{
			uiSel -= 1
			if uiSel < 0
			{
				uiSel = uiMax
			}

		}
	break;
}


hsp = 0;
vsp = 0;


minuteIncrement += 1;

if minuteIncrement >= 60
{
	global.minute += 5;
	
}

if global.minute >= 60
{
	global.hour += 1;
	global.minute = 0;
}
if global.hour >= 24
{
	global.hour = 0;
	global.minute = 0;
}
//show_debug_message(string(hour)+":"+string(minute)+":"+string(minuteIncrement))











//INTERACTIONS

if instance_place(x,y,obj_food)
{
	if ((global.san <= 100) and (minuteIncrement >= 60))
	{
		global.san += 5
	}
}


if minuteIncrement >= 60
{
	minuteIncrement = 0
}