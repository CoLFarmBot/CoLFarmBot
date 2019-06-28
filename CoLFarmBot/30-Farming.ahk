#Include 00-CoL-Global.ahk

	LaunchMEmu(1, 1, 1, 0, "1111.0000.0000.0000.0000.0000.0000.0000")
	Farming(250, 15000)
	Forging("2222")
	Sleep, 480000															;wait 8 minutes for crafting material
	GotoReavegdeFarmAll()
	Sleep, 20000
	LaunchMEmu(1, 1, 1, 0, "0000.1111.0000.0000.0000.0000.0000.0000")
	Farming(250, 15000)
	Forging("2222")
	Sleep, 480000
	GotoReavegdeFarmAll()
	Sleep, 20000
	CloseMEmu("0000.0000.0000.0000.0000.0000.0000.0000")
Return
