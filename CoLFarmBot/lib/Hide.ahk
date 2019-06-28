Hide(Except)											;Hide others MEmu by pressing home button, this will reduce the CPU power usage
{
	NumberID := 1
	Loop % MaxMEmuCount
	{
		if % NumberID != Except
		{
			MEmuID := "(MEmu" . NumberID . ")"
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 50
				MouseClick, left, 1296, 659
			}
		}
		NumberID := NumberID + 1
	}
}