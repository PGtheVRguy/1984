/// @description Insert description here
// You can write your code in this editor

if instance_place(x,y,obj_player)
{
	if playerPlace = false
	{
		playerPlace = true
		runGame = true
		obj_player.state = _state.UI
	}
}
else
{
	playerPlace = false
}




