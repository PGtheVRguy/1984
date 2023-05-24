timer += 1


if input_check("right")
{
	hsp = walkspeed
}
if input_check("left")
{
	hsp = -walkspeed
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
hsp = 0;
vsp = 0;


minuteIncrement += 1;

if minuteIncrement >= 60
{
	minute += 5;
	minuteIncrement = 0;
}

if minute >= 60
{
	hour += 1;
	minute = 0;
}
if hour >= 24
{
	hour = 0;
	minute = 0;
}
//show_debug_message(string(hour)+":"+string(minute)+":"+string(minuteIncrement))