ClearScreen()
{
	PixelSearch, Px, Py, 1022, 103, 1022, 103, 0x1831BD, 3, Fast					;Hero Return
	if ErrorLevel = 0
	{
		MouseClick, left, 1022, 103
		Sleep, 300
	}
	PixelSearch, Px, Py, 889, 584, 889, 584, 0x99C8E8, 3, Fast						;Buy Potion
	if ErrorLevel = 0
	{
		MouseClick, left, 964, 387
		Sleep, 300
	}
	PixelSearch, Px, Py, 1014, 112, 1014, 112, 0x1831BD, 3, Fast					;GB schedule
	if ErrorLevel = 0
	{
		MouseClick, left, 1014, 112
		Sleep, 300
	}
	PixelSearch, Px, Py, 1042, 105, 1042, 105, 0x132CB7, 3, Fast					;Aldor rules
	if ErrorLevel = 0
	{
		MouseClick, left, 1042, 105
		Sleep, 300
	}
	PixelSearch, Px, Py, 1018, 105, 1018, 105, 0x1831BD, 3, Fast					;token exchange
	if ErrorLevel = 0
	{
		MouseClick, left, 1018, 105
		Sleep, 300
	}
	PixelSearch, Px, Py, 1120, 123, 1120, 123, 0x1730BC, 3, Fast					;token exchange
	if ErrorLevel = 0
	{
		MouseClick, left, 1120, 123
		Sleep, 300
	}
	PixelSearch, Px, Py, 1023, 106, 1023, 106, 0x142DB7, 3, Fast					;event windows
	if ErrorLevel = 0
	{
		MouseClick, left, 1023, 106
		Sleep, 300
	}
	PixelSearch, Px, Py, 1203, 90, 1203, 90, 0x1831BD, 3, Fast						;ranking windows
	if ErrorLevel = 0
	{
		MouseClick, left, 1203, 90
		Sleep, 300
	}
	PixelSearch, Px, Py, 1205, 90, 1205, 90, 0x1831BD, 3, Fast						;general windows
	if ErrorLevel = 0
	{
		MouseClick, left, 1205, 90
		Sleep, 300
	}
	PixelSearch, Px, Py, 1142, 121, 1142, 121, 0x1730BC, 3, Fast					;mail windows
	if ErrorLevel = 0
	{
		MouseClick, left, 1142, 121
		Sleep, 300
	}
	PixelSearch, Px, Py, 537, 376, 537, 376, 0xAFE9F1, 3, Fast						;left tab
	if ErrorLevel = 0
	{
		MouseClick, left, 537, 376
		Sleep, 300
	}
	PixelSearch, Px, Py, 1254, 64, 1254, 64, 0x1730BC, 3, Fast						;bag
	if ErrorLevel = 0
	{
		MouseClick, left, 1254, 64
		Sleep, 300
	}
	PixelSearch, Px, Py, 1258, 86, 1258, 86, 0x132CB8, 3, Fast						;bag dismantle
	if ErrorLevel = 0
	{
		MouseClick, left, 1258, 86
		Sleep, 300
	}
	PixelSearch, Px, Py, 1151, 173, 1151, 173, 0x1932B1, 3, Fast					;new
	if ErrorLevel = 0
	{
		MouseClick, left, 1151, 173
		Sleep, 300
	}
	PixelSearch, Px, Py, 666, 165, 666, 165, 0x151616, 3, Fast						;goblin windows
	if ErrorLevel = 0
	{
		MouseClick, left, 666, 165
		Sleep, 300
	}
	PixelSearch, Px, Py, 1224, 111, 1224, 111, 0x1831BD, 3, Fast					;bid
	if ErrorLevel = 0
	{
		MouseClick, left, 1224, 111
		Sleep, 300
	}
}