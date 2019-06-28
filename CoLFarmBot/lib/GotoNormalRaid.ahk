GotoNormalRaid(RaidNumber)
{
	MouseClick, left, 876, 72
	Sleep, 700
	MouseClick, left, 125, 711
	Sleep, 700
	if RaidNumber = 4								;4 is Goblin Camp
	{
		MouseClick, left, 244, 459
	}
	else if RaidNumber = 3							;3 is Ancestral Altar
	{
		MouseClick, left, 244, 376
	}
	else if RaidNumber = 2							;2 is Dire Gallon
	{
		MouseClick, left, 244, 292
	}
	else if RaidNumber = 1							;1 is Scar Plain
	{
		MouseClick, left, 244, 217
	}
	Sleep, 700
	MouseClick, left, 1003, 566
	Sleep, 700
}
