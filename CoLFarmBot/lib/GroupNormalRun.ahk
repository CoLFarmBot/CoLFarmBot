GroupNormalRun(Lead, Farm)										;will do normal raid run, leader will be one of the alts
{
	TimeStamp := A_Now
	StartTime := A_Now
	FileAppend, %TimeStamp% - Group %Lead% Normal Run`n, 99-Farm-Log.txt
	MEmu_Lead := "(MEmu" . Lead . ")"
	WinActivate, % MEmu_Lead
	MakeTeam()
	WinActivate, % MEmu_Lead
	SelectStarTeam()
	WinActivate, % MEmu_Lead
	Sleep, 300
	ClearScreen()
	Sleep, 300
	MouseClick, left, 22, 233
	Sleep, 300
	WinActivate, % MEmu_Lead
	GotoNormalRaid(4)
	Hide(Lead)
	WinActivate, % MEmu_Lead
	EnteringRaid()
	WinActivate, % MEmu_Lead
	RunningRaid()
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	WinActivate, % MEmu_Lead
	GotoNormalRaid(3)
	Wake(Lead)
	Sleep, 10000
	Hide(Lead)
	WinActivate, % MEmu_Lead
	EnteringRaid()
	WinActivate, % MEmu_Lead
	RunningRaid()
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	WinActivate, % MEmu_Lead
	GotoNormalRaid(2)
	Wake(Lead)
	Sleep, 10000
	Hide(Lead)
	WinActivate, % MEmu_Lead
	EnteringRaid()
	WinActivate, % MEmu_Lead
	RunningRaid()
	Wake(Lead)
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	WinActivate, % MEmu_Lead
	HandInOfferingQuestGroup(Lead)
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	GotoFarm(Farm)
	Sleep, 10000
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			MailCollect()
			Sleep, 2000
			LuckyCardFlip()
			Sleep, 2000
			ClearBlueGear()
		}
		NumberID := NumberID + 1
	}
	Sleep, 10000
	CloseMEmu("0000.0000.0000.0000.0000.0000.0000.0000")
	Sleep, 10000
	SteamCoLLeaveTeam()
	TimeStamp := A_Now
	EndTime := A_Now
	EnvSub, EndTime, %StartTime%, minutes
	FileAppend, %TimeStamp% - %EndTime% Minute Elapse`n, 99-Farm-Log.txt
}