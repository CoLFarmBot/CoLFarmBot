#Include C:\autohotkey\CoL\00-CoL-Global.ahk

` & 1::										;quick click 10x
	Loop 10
	{
		Click
		Sleep, 70
	}
Return

` & 2::										;farm all alts
	WinGetActiveTitle, PreviousWindow
	NumberID := 1
	Loop % MaxMEmuCount
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
			{
			WinActivate, % MEmuID
			Sleep, 50
			MouseClick, left, 555, 487
			Sleep, 50
			}
		NumberID := NumberID + 1
	}
	WinActivate, %PreviousWindow%
	MouseMove 646, 421
Return

` & 3::										;clear alts
	if BuyingFood = 1
	{
		BuyFood()							;check hp and mana reserve, press x to buy hp food, c to buy mana food, other key to skip
	}	
	ClearScreen()
	OpenEvent()
	ClaimActivityReward()					;claim all activity
	ClearUseWindow()
	Sleep, 2000
	OpenDailyLoot()							;open daily loop to see if can buy secret currency chest, press z to go next
	KeyWait, z, D
	Sleep, 50
	ClearScreen()
	Sleep, 50
	ClearScreen()
	Sleep, 50
	ClearScreen()
	MouseClick, left, 956, 162				;open daily rewards, press z to go next
	Sleep, 50
	KeyWait, z, D
	Sleep, 50
	ClearScreen()
	OpenMenu()
	MouseClick, left, 1148, 366				;open equipment chamber, press z to go next
	Sleep, 50
	ClearUseWindow()
	KeyWait, z, D
	Sleep, 50
	ClearScreen()
	OpenMenu()
	OpenArtifact()							;open artifact, 1st will go to daily free claim, 2nd will dismantle purple, 3rd to upgrade, press z every time to go next
	KeyWait, z, D
	Sleep, 50
	ClearScreen()
	MouseClick, left, 1182, 264
	Sleep, 200
	MouseClick, left, 999, 643
	Sleep, 100
	MouseClick, left, 796, 625				;open bag and dismantle blue and below
Return

` & 4::										;click on same spot for every 0.5sec until hold 4 to stop
	Loop
	{
		Sleep, 10
		if GetKeyState("4")  				;Hold 4 to exit.
		{    
			break
		}
		Click
		Sleep, 500
	}
Return

` & 5::										;Go to character selection screen, then press 1 = 1st char, 2 = 2nd, 3 = 3rd, 4 = 4th 
	SwitchCharacter()
Return

F7::
	Wake(0)
Return

F8::
	Hide(0)
Return

F11::										;quick invite and disband
	MouseClick, left, 17, 345
	Sleep, 500
	MouseClick, left, 743, 631
	Sleep, 500
	MouseClick, left, 1004, 108
	Sleep, 500
	MouseClick, left, 432, 336
	Sleep, 500
	MouseClick, left, 209, 292
	KeyWait, F12, D
	Sleep, 300
	MouseClick, left, 1004, 108
	Sleep, 300
	MouseClick, left, 432, 336
	Sleep, 300
	MouseClick, left, 576, 388
	Sleep, 300
	MouseClick, left, 1093, 632
	Sleep, 300
	MouseClick, left, 751, 491
	Sleep, 300
	ClearScreen()
Return

LShift & x::								;quick dismantle
	MouseGetPos, Xposition, Yposition
	Click
	Sleep, 300
	PixelSearch, Px, Py, 465, 322, 465, 322, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 465, 322
		Sleep, 200
		PixelSearch, Px, Py, 415, 265, 415, 265, 0x99C8E8, 3, Fast
		if ErrorLevel = 0
		{
			MouseClick, left, 415, 265
			Sleep, 200
		}
	}
	PixelSearch, Px, Py, 454, 353, 454, 353, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 454, 353
		Sleep, 200
	}
	PixelSearch, Px, Py, 443, 389, 443, 389, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 443, 389
		Sleep, 200
	}
	PixelSearch, Px, Py, 443, 423, 443, 423, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 443, 423
		Sleep, 200
	}
	PixelSearch, Px, Py, 443, 446, 443, 446, 0x99C8E8, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 443, 446
		Sleep, 200
	}
	MouseClick, left, 746, 413
	Sleep, 50
	MouseClick, left, 640, 492
	Sleep, 50
	MouseClick, left, 746, 487
	Sleep, 50
	Xposition := Xposition + 90
	If Xposition > 1290
	{
		Xposition := Xposition - 450
		Yposition := Yposition + 90
	}
	MouseMove Xposition, Yposition
Return

LShift & z::								;lucky draw
	LuckyDraw()
	WinActivate, Crusaders of Light
	MouseMove 646, 421
Return

LShift & c::								;transfer with headwear
	WinGetActiveTitle, PreviousWindow
	WinActivate, Crusaders of Light
	MouseMove 868, 345
	KeyWait, z, D
	Sleep, 100
	Loop 6
	{
		MouseClick, left, 784, 514
		Sleep, 10
	}
	MouseClick, left, 640, 665
	WinActivate, %PreviousWindow%
	MouseClick, left, 513, 291
	KeyWait, z, D
	Sleep, 100
	MouseClick, left, 1084, 610
	Sleep, 300
	MouseClick, left, 638, 718
	Sleep, 300
	MouseClick, left, 318, 129
	KeyWait, z, D
	Sleep, 100
	Loop 6
	{
		MouseClick, left, 586, 510
		Sleep, 10
	}
	MouseClick, left, 637, 667
	WinActivate, Crusaders of Light
	MouseClick, left, 170, 133
	Sleep, 300
	MouseClick, left, 516, 285
	KeyWait, z, D
	Sleep, 100
	MouseClick, left, 1095, 610
	Sleep, 300
	MouseClick, left, 637, 720
	Sleep, 300
	MouseClick, left, 326, 130
Return

LShift & v::								;quick open sell tab
	NumberID := 1
	while % NumberID < 40
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			ClearScreen()
			MouseClick, left, 1103, 266
			Sleep, 50
			OpenMenu()
			MouseClick, left, 1157, 477
			Sleep, 500
			MouseClick, left, 319, 137
			KeyWait, z, D
			Sleep, 50
			ClearScreen()
			MouseClick, left, 1182, 264
			KeyWait, z, D
			Sleep, 50
			ClearScreen()
			BuyFood()
		}
		NumberID := NumberID + 1
	}
	WinActivate, Crusaders of Light
	MouseMove 646, 421
Return

LShift & b::								;quick check bag
	NumberID := 1
	while % NumberID < 40
	{
		MEmuID := "(MEmu" . NumberID . ")"
		IfWinExist, % MEmuID
		{
			WinActivate, % MEmuID
			Sleep, 50
			ClearScreen()
			MouseClick, left, 1182, 264
			KeyWait, z, D
			Sleep, 50
			ClearScreen()
		}
		NumberID := NumberID + 1
	}
	WinActivate, Crusaders of Light
	MouseMove 646, 421
Return

LShift & a::								;quick sell
	QuickSell()
Return

LShift & s::								;quick sell max price
	MouseGetPos, Xposition, Yposition
	Loop 5
	{
		MouseClick, left, 784, 534
		Sleep, 10
	}
	MouseClick, left, 680, 665
	MouseMove Xposition, Yposition
Return

LShift & d::								;quick sell crystal 1300g
	MouseClick, left, 1111, 604
	Sleep, 300
	MouseClick, left, 675, 511
	Sleep, 300
	MouseClick, left, 624, 181
	Sleep, 50
	MouseClick, left, 792, 181
	Sleep, 50
	MouseClick, left, 702, 442
	Sleep, 50
	MouseClick, left, 702, 442
	Sleep, 50
	MouseClick, left, 788, 442
	Sleep, 100
	MouseClick, left, 675, 460
Return
