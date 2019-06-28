CheckStart()
{
	Loop 30
	{
		PixelSearch, Px, Py, 641, 636, 641, 636, 0x1883E6, 3, Fast				;Check red pixel on Start Game button, please change this if CoL change a new start button
		if ErrorLevel = 0
		{
			Sleep, 2000
			Return
		}
		Sleep, 2000
	}
}