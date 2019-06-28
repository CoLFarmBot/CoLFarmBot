BuyFood()
{
	if BuyingFood = 1
	{
		ClearScreen()
		OpenMenu()
		MouseClick, left, 1229, 366
		Sleep, 500
		MouseClick, left, 293, 708
		Sleep, 300
		Input, OutputVar, L1				;input x for buy HP food, c for buy MP food, any other key to skip
		if OutputVar = x
		{
			MouseClick, left, 369, 337
			Sleep, 500
			MouseClick, left, 183, 357
			Sleep, 300
			Loop 4
			{
				MouseClick, left, 1130, 403
				Sleep, 10
			}
			Sleep, 300
			MouseClick, left, 1008, 607
			Sleep, 2000
		}
		else if OutputVar = c
		{
			MouseClick, left, 369, 337
			Sleep, 500
			MouseClick, left, 533, 357
			Sleep, 300
			Loop 4
			{
				MouseClick, left, 1130, 403
				Sleep, 10
			}
			Sleep, 300
			MouseClick, left, 1008, 607
			Sleep, 2000
		}
		ClearUseWindow()
		ClearScreen()
		ClearScreen()
		Sleep, 1000
	}
}