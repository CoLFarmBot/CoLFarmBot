HandInOfferingQuestGroup(Lead)										;hand in offering quest after complete raid, will start with leader and then 3 more other alts
{
	MEmu_Lead := "(MEmu" . Lead . ")"
	WinActivate, % MEmu_Lead
	HandInOfferingQuestLeader()
	NumberID := 1
	Loop % MaxMEmuCount
	{
		if % NumberID != Lead
		{
			MEmuID := "(MEmu" . NumberID . ")"
			IfWinExist, % MEmuID
			{
				WinActivate, % MEmuID
				Sleep, 50
				HandInOfferingQuest()
			}
		}
		NumberID := NumberID + 1
	}
}