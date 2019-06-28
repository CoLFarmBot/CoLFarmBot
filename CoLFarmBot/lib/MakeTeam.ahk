MakeTeam()												;Before make team, leader of group need to create 1 group and add 3 other alts and main into the team list
{
	MouseClick, left, 24, 351
	Sleep, 600
	MouseClick, left, 757, 631
	Sleep, 600
	MouseClick, left, 1006, 112
	Sleep, 600
	MouseClick, left, 1203, 94
	Sleep, 600
	MouseClick, left, 1029, 71
	Sleep, 600
	MouseClick, left, 51, 178
	Sleep, 600
	MouseClick, left, 276, 77
	Sleep, 600
	MouseClick, left, 491, 193
	Sleep, 1000
	MouseClick, left, 768, 247
	Sleep, 200
	MouseClick, left, 492, 305
	Sleep, 1000
	MouseClick, left, 767, 355
	Sleep, 200
	MouseClick, left, 493, 417
	Sleep, 1000
	MouseClick, left, 766, 147
	Sleep, 200
	MouseClick, left, 494, 524
	Sleep, 1000
	MouseClick, left, 765, 191
	Sleep, 1000
	IfWinExist, Crusaders of Light
	{
		WinActivate, Crusaders of Light
		Sleep, 50
		PixelSearch, Px, Py, 745, 479, 745, 479, 0x3C9E78, 3, Fast
		if ErrorLevel = 0
		{
			MouseClick, left, 745, 479
			Sleep, 50
		}
	}
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			PixelSearch, Px, Py, 745, 479, 745, 479, 0x35906F, 3, Fast
			if ErrorLevel = 0
			{
				MouseClick, left, 745, 479
				Sleep, 200
			}
		}
		NumberID := NumberID + 1
	}
}