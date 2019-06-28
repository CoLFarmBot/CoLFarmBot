LuckyDraw()
{
	Input, OutputVar, L1				;input x open lucky draw, c close, z next draw, v close and collect rewards
	NumberID := 1
	while % NumberID < MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			if OutputVar = x
			{
				ClearScreen()
				OpenMenu()
				Sleep, 300
				MouseClick, left, 1157, 477
				Sleep, 700
				MouseClick, left, 701, 711
				Sleep, 700
				MouseClick, left, 466, 128
				Sleep, 700
				MouseClick, left, 992, 598
			}
			else if OutputVar = c
			{
				MouseClick, left, 824, 609
				Sleep, 700
				ClearScreen()
			}
			else if OutputVar = z
			{
				MouseClick, left, 432, 609
			}
			else if OutputVar = v
			{
				MouseClick, left, 824, 609
				Sleep, 700
				Loop 5
				{
					MouseClick, left, 1111, 258
					Sleep, 500
				}
				ClearScreen()
			}
		}
		NumberID := NumberID + 1
	}
}