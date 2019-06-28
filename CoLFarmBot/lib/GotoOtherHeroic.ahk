GotoOtherHeroic()
{
	MouseClick, left, 876, 72
	Sleep, 700
	MouseClick, left, 125, 711
	Sleep, 700
	MouseClick, left, 244, 295
	Sleep, 700
	MouseClick, left, 712, 231
	Sleep, 700
	PixelSearch, Px, Py, 990, 560, 990, 560, 0x339675, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 990, 560
		Sleep, 700
		Return
	}
	MouseClick, left, 244, 381
	Sleep, 700
	PixelSearch, Px, Py, 990, 560, 990, 560, 0x339675, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 990, 560
		Sleep, 700
		Return
	}
	MouseClick, left, 244, 452
	Sleep, 700
	PixelSearch, Px, Py, 990, 560, 990, 560, 0x339675, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 990, 560
		Sleep, 700
		Return
	}
}
