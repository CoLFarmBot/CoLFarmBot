SteamCoLLeaveTeam()
{
	WinActivate, Crusaders of Light
	MouseClick, left, 30, 350
	Sleep, 500
	MouseClick, left, 30, 350
	Sleep, 1500
	PixelSearch, Px, Py, 1046, 628, 1046, 628, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 1046, 628
		Sleep, 1000
		MouseClick, left, 750, 500
		Sleep, 1000
;		MsgBox, Leaving Team
	}
	MouseClick, left, 1208, 94
}

