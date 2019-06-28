CheckSystemMessage()
{
	PixelSearch, Px, Py, 91, 63, 91, 63, 0x032DE8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 40, 80
		Sleep, 300
		MouseClick, left, 168, 80
		Sleep, 300
	}
}