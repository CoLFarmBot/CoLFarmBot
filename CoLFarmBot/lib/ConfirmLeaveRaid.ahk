ConfirmLeaveRaid()												;pressing confirm leave raid button
{
	PixelSearch, Px, Py, 750, 496, 750, 496, 0xABF4F3, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 750, 496
		Sleep, 300
	}
}