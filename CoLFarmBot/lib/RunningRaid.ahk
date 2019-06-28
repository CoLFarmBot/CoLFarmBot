RunningRaid()													;whenever you enter a raid, the quest box will shows purple character, this will auto click at that purple character to auto running raid, and if the raid finish, it will scan for yellow character and end the raid
{
	Sleep, 10000
	Loop 100
	{
		PixelSearch, Px, Py, 60, 190, 60, 190, 0xF89BB3, 3, Fast
		if ErrorLevel = 0
		{
			MouseClick, left, 60, 190
			Sleep, 300
			;MsgBox Purple found
		}
		else
		{
			PixelSearch, Px, Py, 60, 190, 60, 190, 0x28BDFA, 3, Fast
			if ErrorLevel = 0
				Break
		}
		Sleep, 5000
		ClearScreen()
		ClearUseWindow()
		ConfirmLeaveRaid()
	}
}
