if instance_place(x,y,obj_player)
{
	if playerUsed = false//I forgot what I keep calling this form of variable
	{
		playerUsed = true
		obj_player.state = _state.UI
		runGame = true
	}

}
else
{
	playerUsed = false
}