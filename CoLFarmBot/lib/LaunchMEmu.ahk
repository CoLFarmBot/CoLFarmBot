LaunchMEmu(CloseMEmu, CharacterNumber, CheckLoadComplete, UpdateOnly, MEmuString)								;launch MEmu base on string input
{
	If CloseMEmu = 1											;close All MEmu
	{
		CloseMEmu("0000.0000.0000.0000.0000.0000.0000.0000")
		Sleep, 2000
	}
	MEmu_Array := StrSplit(MEmuString, , ".")					;split MEmuString input Array, "1" is Launch, "0" is skip
	MEmu_WindowsCount := 0
	MaxMEmuCount := MEmu_Array.MaxIndex()
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;launch MEmu_Array with "1" and skip MEmu_Array with "0"
		{
			Run MEmuConsole.exe "%MEmu_Number%", C:\Program Files\Microvirt\MEmu
			MEmu_LastLaunchWindows := % MEmuID
			MEmu_WindowsCount := MEmu_WindowsCount + 1
			Sleep, 5000
		}
	}
	Sleep, 5000
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;check any premature shutdown and re-launch
		{
			IfWinNotExist, % MEmuID
			{
				Run MEmuConsole.exe "%MEmu_Number%", C:\Program Files\Microvirt\MEmu
				MEmu_LastLaunchWindows := % MEmuID
				Sleep, 5000
			}
		}
	}
	WinActivate, % MEmu_LastLaunchWindows
	CheckLaunch()
	Yposition := 0
	YIncrement := Round(288/(MEmu_WindowsCount - 1))
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;arrange windows and start CoL
		{
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 100
				WinMove, % MEmuID, , 600, % Yposition
				Sleep, 100
				MouseClick, left, 222, 385
				Sleep, 200
				MouseClick, left, 222, 385
				Sleep, 3000
				Yposition := Yposition + YIncrement
				MEmu_LastLaunchWindows := % MEmuID
			}
		}
	}
	Sleep, 5000
	if UpdateOnly = 1											;UpdateOnly will stop after CoL Launch and wait for user to input z to end function
	{
		KeyWait, z, D
		Sleep, 100
		Return
	}
	WinActivate, % MEmu_LastLaunchWindows
	CheckStart()												;delay until last windows fully loaded into start game button
	Sleep, 6000
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;check CoL is loaded successfully by checking start game button of the pixel, sometimes CoL not able to launch or will turn into whitescreen/blackscreen
		{
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 100
				PixelSearch, Px, Py, 641, 636, 641, 636, 0x1883E6, 3, Fast					;Check red pixel on Start Game button, please change this if CoL change a new start button
				if ErrorLevel = 1
				{
					Run MEmuConsole.exe ShutdownVm "%MEmu_Number%", C:\Program Files\Microvirt\MEmu
					Sleep, 8000
					Run MEmuConsole.exe "%MEmu_Number%", C:\Program Files\Microvirt\MEmu
					Sleep, 5000
					WinActivate, % MEmuID
					Sleep, 100
					CheckLaunch()
					MouseClick, left, 222, 385
					Sleep, 200
					MouseClick, left, 222, 385
					Sleep, 2000
					CheckStart()
				}
			}
		}
	}
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;click on start game
		{
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 100
				CheckLogin()
			}
		}
	}
	Sleep, 5000
	Loop % MEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Launch := MEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Launch = "1"									;click on start game if 1st time unable to login
		{
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 100
				CheckLogin()
			}
		}
	}
	If CharacterNumber between 1 and 4
	{
		Loop % MEmu_Array.MaxIndex()								
		{
			MEmu_Number := "MEmu_" . A_Index
			MEmu_Launch := MEmu_Array[A_Index]
			MEmuID := "(MEmu" . A_Index . ")"
			If % MEmu_Launch = "1"								;Select 0 will skip which use for relog, select only Character 1 to 4 which can be appear in the screen, character 5 onward will need to add a drag function
			{
				IfWinExist, % MEmuID
				{
					WinActivate, % MEmuID
					Sleep, 100
					SelectCharacter(CharacterNumber)
				}
			}
		}
	}
	If CheckLoadComplete = 1									;0 to skip which use for relog, 1 to check character loading is complete
	{
		Sleep, 25000
		Loop % MEmu_Array.MaxIndex()								
		{
			MEmu_Number := "MEmu_" . A_Index
			MEmu_Launch := MEmu_Array[A_Index]
			MEmuID := "(MEmu" . A_Index . ")"
			If % MEmu_Launch = "1"								;check character is finally loaded, sometimes it may goes into wait screen or go to home screen
			{
				IfWinExist, % MEmuID
				{
					WinActivate, % MEmuID
					Sleep, 100
					PixelSearch, Px, Py, 888, 453, 888, 453, 0x889600, 3, Fast				;check for wait screen
					if ErrorLevel = 0
					{
						MouseClick, left, 888, 453
						Sleep, 1000
					}
					PixelSearch, Px, Py, 222, 385, 222, 385, 0x1435C2, 3, Fast				;check if back to home screen
					if ErrorLevel = 0
					{
						MouseClick, left, 222, 385
						CheckStart()
						MouseClick, left, 640, 660
						Sleep, 5000
					}
					ClearScreen()
				}
			}
		}
	}
}
