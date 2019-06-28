#Include 00-CoL-Global.ahk

;	CloseMEmu("0000.0000.0000.0000.0000.0000.0000.0000")
	LaunchMEmu(1, 1, 1, 0, "1111.0000.0000.0000.0000.0000.0000.0000")
	GroupNormalRun(3, 1)
	LaunchMEmu(1, 1, 1, 0, "0000.0000.0000.0000.0000.1111.0000.0000")
	GroupNormalRun(23, 2)
Return
