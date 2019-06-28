Wake(Except)												;wake all alts up by pressing CoL button to reconnect back
{
	NumberID := 1
	Loop % MaxMEmuCount
	{
		if % NumberID != Except
		{
			MEmuID := "(MEmu" . NumberID . ")"
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 50
				MouseClick, left, 196, 374
			}
		}
		NumberID := NumberID + 1
	}
	Sleep, 5000
	NumberID := 1
	Loop % MaxMEmuCount
	{
		if % NumberID != Except
		{
			MEmuID := "(MEmu" . NumberID . ")"
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 50
				PixelSearch, Px, Py, 641, 636, 641, 636, 0x1883E6, 3, Fast
				if ErrorLevel = 0
				{
					MouseClick, left, 640, 660
				}	
			}
		}	
		NumberID := NumberID + 1
	}
}