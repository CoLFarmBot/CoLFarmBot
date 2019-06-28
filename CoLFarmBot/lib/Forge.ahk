Forge(ForgeNumber)										;forge position 1 or 2
{
	MouseClick, left, 1190, 270
	Sleep, 700
	MouseClick, left, 846, 178
	Sleep, 700
	MouseClick, left, 649, 306
	Sleep, 2000
	if ForgeNumber = 1
	{
		MouseClick, left, 506, 182
	}
	else if ForgeNumber = 2
	{
		MouseClick, left, 506, 301
	}
	Sleep, 700
	MouseClick, left, 998, 607
	Sleep, 700
}