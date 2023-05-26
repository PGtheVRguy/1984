

job = ds_grid_get(global.schedule,0,global.hour)

if job = "Lights Out"
{
	if orDay != global.day
	{
		orDay = global.day
		global.rep -= 30
	}
	
}