CloseMEmu(CloseMEmuString)
{
	CloseMEmu_Array := StrSplit(CloseMEmuString, , ".")
	Loop % CloseMEmu_Array.MaxIndex()								
	{
		MEmu_Number := "MEmu_" . A_Index
		MEmu_Close := CloseMEmu_Array[A_Index]
		MEmuID := "(MEmu" . A_Index . ")"
		If % MEmu_Close = "0"									;Loop to close MEmu with "0" and skip MEmu with "1"
		{
			IfWinExist, % MEmuID
			{
				Run MEmuConsole.exe ShutdownVm "%MEmu_Number%", C:\Program Files\Microvirt\MEmu
				Sleep, 10
			}
		}
	}
}
