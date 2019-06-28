QuickSell()
{
	Loop
	{
		Input, OutputVar, L1				;input a sell min price, s switch to main, d main buy, f dismantle, g return
		if OutputVar = a
		{
			MouseGetPos, Xposition, Yposition
			Loop 6
			{
				MouseClick, left, 588, 513
				Sleep, 10
			}
			MouseClick, left, 641, 672
			MouseMove Xposition, Yposition
		}
		else if OutputVar = s
		{
			WinActivate, Crusaders of Light
			Sleep, 50
			MouseMove 522, 247
		}
		else if OutputVar = d
		{
			MouseClick, left, 522, 247
			Sleep, 50
			MouseClick, left, 1101, 617
			Sleep, 50
			MouseClick, left, 652, 723
		}
		else if OutputVar = f
		{
			MouseGetPos, Xposition, Yposition
			MouseClick, left, Xposition, Yposition
			Sleep, 50
			MouseClick, left, 485, 474
			Sleep, 50
			MouseClick, left, 483, 416
			Sleep, 100
			MouseClick, left, 743, 489
			Xposition := Xposition + 90
			If Xposition > 1290
			{
				Xposition := Xposition - 450
				Yposition := Yposition + 90
			}
			MouseMove Xposition, Yposition
		}
		else if OutputVar = g
		{
			Return
		}
	}
}