SwitchCharacter()
{
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 10
			ClearScreen()
			OpenMenu()
			PixelSearch, Px, Py, 1063, 568, 1063, 568, 0x3579CE, 3, Fast
			if ErrorLevel = 0
			{
				MouseClick, left, 1063, 568
				Sleep, 300
			}
			PixelSearch, Px, Py, 1222, 672, 1222, 672, 0x3579CE, 3, Fast
			if ErrorLevel = 0
			{
				MouseClick, left, 1222, 672
				Sleep, 300
			}
			MouseClick, left, 772, 627
		}
		NumberID := NumberID + 1
	}
	Input, OutputVar, L1				;input 1 to select 1st characters, 2 for 2nd characters, 3 for 3rd characters, 4 for 4th charcaters
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 10
			if OutputVar = 1
				SelectCharacter(1)
			else if OutputVar = 2
				SelectCharacter(2)
			else if OutputVar = 3
				SelectCharacter(3)
			else if OutputVar = 4
				SelectCharacter(4)
		}
		NumberID := NumberID + 1
	}
}