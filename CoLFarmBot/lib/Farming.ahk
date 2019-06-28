Farming(FarmLoop, FarmInterval)					;adjust the FarmLoop and FarmInterval for optimum farming
{
	CheckStaminaCount := 1
	EmptyStaminaCount := 0
	LoopCount := 1
	Loop % FarmLoop
	{
		Sleep, 10
		if GetKeyState("F10")  					; Hold F10 to Pause
		{    
			Pause
		}
		NumberID := 1
		Loop % MaxMEmuCount
		{
			MEmuID := "(MEmu" . NumberID . ")"
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 100
				ClearScreen()
				MouseClick, left, 555, 487
				Sleep, 100
				If CheckStaminaCount > 9
				{
					OpenMenu()
					MouseClick, left, 1229, 366
					Sleep, 500
					PixelSearch, Px, Py, 735, 359, 735, 359, 0x3E678E, 3, Fast					;Open character screen to check if stamina reach 0
					if ErrorLevel = 0
					{
						EmptyStaminaCount := EmptyStaminaCount + 1
					}
					ClearScreen()
				}
			}
			NumberID := NumberID + 1
		}
		If CheckStaminaCount > 9
		{
			CheckStaminaCount := 0
			TimeStamp := A_Now
			FileAppend, %TimeStamp% - at %LoopCount% Loop %EmptyStaminaCount% empty`n, 99-Farm-Log.txt
		}
		If EmptyStaminaCount > 1										;if more than 2 character's stamina reach 0, it will exit
		{
			break
		}
		CheckStaminaCount := CheckStaminaCount + 1
		EmptyStaminaCount := 0
		LoopCount := LoopCount + 1
		Sleep, % FarmInterval											;sleep a few seconds to farm again, can be adjusted base on your own
	}
}