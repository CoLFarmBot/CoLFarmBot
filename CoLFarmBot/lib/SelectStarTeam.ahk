SelectStarTeam()												;as Main is warrior, this will goes to different position to look for warrior icon and select it's star circle
{
	ClearScreen()
	Sleep, 500
	MouseClick, left, 24, 351
	Sleep, 1500
	PixelSearch, Px, Py, 963, 547, 963, 547, 0x3758D7, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 1038, 339
		Sleep, 300
		MouseClick, left, 820, 213
		Sleep, 1000
	}
	PixelSearch, Px, Py, 122, 547, 122, 547, 0x3758D5, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 243, 339
		Sleep, 300
		MouseClick, left, 366, 213
		Sleep, 1000
	}
	PixelSearch, Px, Py, 753, 547, 753, 547, 0x3758D5, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 854, 339
		Sleep, 300
		MouseClick, left, 979, 213
		Sleep, 1000
	}
	PixelSearch, Px, Py, 332, 547, 332, 547, 0x3758D5, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 436, 339
		Sleep, 300
		MouseClick, left, 566, 213
		Sleep, 1000
	}
}