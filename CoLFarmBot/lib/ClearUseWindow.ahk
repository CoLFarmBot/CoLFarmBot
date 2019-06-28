ClearUseWindow()
{
	Loop 12
	{
		PixelSearch, Px, Py, 889, 590, 889, 590, 0x99C8E8, 3, Fast						;Clear Use Windows
		if ErrorLevel = 0
		{
			MouseClick, left, 889, 590
			Sleep, 100
		}
	}
}