GotoFarm(FarmNumber)										;FarmNumber 1 is Iron, 2 is Flax
{
	MouseClick, left, 1187, 133
	Sleep, 700
	MouseClick, left, 75, 90
	Sleep, 700
	MouseClick, left, 75, 90
	Sleep, 700
	MouseClick, left, 822, 445
	Sleep, 700
	MouseClick, left, 1095, 710
	Sleep, 1000
	if FarmNumber = 1
	{
		MouseClick, left, 698, 592
	}
	else if FarmNumber = 2
	{
		MouseClick, left, 755, 585 ;downfell			;539, 440 ;riverside2 		;786, 328 ;Everlush			;364, 474 ;ancient ruins			 
	}
	Sleep, 700
	MouseClick, left, 746, 503
	Sleep, 700
}