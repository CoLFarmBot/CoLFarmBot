Group3HeroicRun()										;will do heroic raid run, leader will be one of the alts
{
	Lead := 3
	MEmu_Lead := "(MEmu" . Lead . ")"
	TimeStamp := A_Now
	StartTime := A_Now
	FileAppend, %TimeStamp% - Group %Lead% Heroic Run`n, 99-Farm-Log.txt
	LaunchMEmu(1, 1, 1, 0, "1111.0000.0000.0000.0000.0000.0000.0000")
	Sleep, 10000
	WinActivate, % MEmu_Lead
	MakeSquad()
	WinActivate, % MEmu_Lead
	SelectStarSquad()
	Sleep, 5000
	CloseMEmu("0010.0000.0000.0000.0000.0000.0000.0000")
	Sleep, 10000
	LaunchMEmu(0, 1, 1, 0, "0000.0000.0000.0000.0000.1111.0000.0000")
	Sleep, 10000
	WinActivate, % MEmu_Lead
	MakeSquadCont()
	WinActivate, % MEmu_Lead
	Sleep, 300
	ClearScreen()
	Sleep, 300
	MouseClick, left, 22, 233
	Sleep, 300
	CloseMEmu("0010.0000.0000.0000.0000.0000.0000.0000")
	Sleep, 5000
	WinActivate, % MEmu_Lead
	GotoScarPlainsHeroic()
	WinActivate, % MEmu_Lead
	EnteringRaid()
	WinActivate, % MEmu_Lead
	RunningRaid()
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	WinActivate, % MEmu_Lead
	GotoOtherHeroic()
	WinActivate, % MEmu_Lead
	EnteringRaid()
	WinActivate, % MEmu_Lead
	RunningRaid()
	WinActivate, % MEmu_Lead
	Sleep, 5000
	ClearScreen()
	ClearUseWindow()
	GotoReavegdeFarm()
	Sleep, 10000
	CloseMEmu("0000.0000.0000.0000.0000.0000.0000.0000")
	Sleep, 10000
	SteamCoLLeaveTeam()
	TimeStamp := A_Now
	EndTime := A_Now
	EnvSub, EndTime, %StartTime%, minutes
	FileAppend, %TimeStamp% - %EndTime% Minute Elapse`n, 99-Farm-Log.txt
}