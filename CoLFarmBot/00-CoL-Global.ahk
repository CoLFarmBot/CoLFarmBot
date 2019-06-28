global MaxMEmuCount := 50
If A_WDay = 7
	global BuyingFood := 1						;buy food only on Saturday
else
	global BuyingFood := 0