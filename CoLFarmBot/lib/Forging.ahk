Forging(Sequence)						;will go to forge after finish farming, input is a string like "1122", make sure 1st position in the bag is the forge material.
{
	Sequence_Count := 1
	Sequence_Array := StrSplit(Sequence, , "") 
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			ClearScreen()
			If Sequence_Array[Sequence_Count] = "1"
				Forge(1)
			else if Sequence_Array[Sequence_Count] = "2"
				Forge(2)
			Sequence_Count := Sequence_Count + 1
		}
		NumberID := NumberID + 1
	}
}
