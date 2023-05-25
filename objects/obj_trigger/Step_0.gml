if instance_place(x,y,obj_player)
{
	if disableTrig = false
	{
		
		if trig = "elevator"
		{
			obj_player.elevatorUI = true
		}
	
	}

	disableTrig = true
	
}
else
{
	disableTrig = false
}