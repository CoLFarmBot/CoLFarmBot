SelectStarSquad()
{
	ClearScreen()
	Sleep, 500
	MouseClick, left, 24, 351
	Sleep, 1500
	PixelSearch, Px, Py, 290, 212, 290, 212, 0x5D7ED1, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 290, 212
		Sleep, 300
		MouseClick, left, 473, 39
		Sleep, 1000
	}
	PixelSearch, Px, Py, 158, 297, 158, 297, 0x5D7ED1, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 158, 297
		Sleep, 300
		MouseClick, left, 343, 125
		Sleep, 1000
	}
	PixelSearch, Px, Py, 290, 297, 290, 297, 0x5D7ED1, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 290, 297
		Sleep, 300
		MouseClick, left, 473, 128
		Sleep, 1000
	}
	PixelSearch, Px, Py, 158, 382, 158, 382, 0x5D7ED1, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 158, 382
		Sleep, 300
		MouseClick, left, 343, 214
		Sleep, 1000
	}
	ClearScreen()
	Sleep, 300
}