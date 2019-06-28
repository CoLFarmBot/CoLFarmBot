GotoReavegdeFarmAll()
{
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
			{
			WinActivate, % MEmuID
			Sleep, 100
			ClearScreen()
			GotoReavegdeFarm()
			}
		NumberID := NumberID + 1
	}
}