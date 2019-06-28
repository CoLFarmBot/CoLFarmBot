EnteringRaid()															;will wait for entering raid button to appear after going to normal or normal heroic raid
{
	Loop 24
	{
		PixelSearch, Px, Py, 817, 528, 817, 528, 0xABF5F4, 3, Fast
		if ErrorLevel = 0
		{
			MouseClick, left, 856, 534
			Sleep, 300
			Break
		}
		Sleep, 5000
	}
}
