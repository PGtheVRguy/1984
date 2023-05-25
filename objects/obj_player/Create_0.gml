hsp = 0;
vsp = 0;
walkspeed = 1;
timer = 0;
ia = 0;




global.schedule = load_csv("schedule.csv");

global.darkGreen = #306230;
global.darkerGreen = #0f380f;
global.lightGreen = #8bac0f;
global.lighterGreen = #9bbc0f;

energy = 60;
minuteIncrement = 0;
minute = 0;
hour = 4;


elevatorUI = false

enum _state
{
	generic,
	UI
}

state = _state.generic


//UI
uiSel = 0
uiMax = 3

if global.usedElevator = true
{
	x = obj_trigger.x
	y = obj_trigger.y
}