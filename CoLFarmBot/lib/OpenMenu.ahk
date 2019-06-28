OpenMenu()
{
	Sleep, 100
	PixelSearch, Px, Py, 1240, 373, 1240, 373, 0x938A93, 3, Fast
	if ErrorLevel = 1
	{
		MouseClick, left, 1257, 270
		Sleep, 300
	}
}