CheckLaunch()
{
	Sleep, 2000
	Loop 20
	{
		PixelSearch, Px, Py, 222, 385, 222, 385, 0x1435C2, 3, Fast
		if ErrorLevel = 0
		{
			Return
		}
		Sleep, 1000
	}
}