SelectCharacter(CharacterNumber)										;Select only Character 1 to 4 which can be appear in the screen, character 5 onward will need to add a drag function
{
	Yposition := 100 + (140 * (CharacterNumber - 1))
	PixelSearch, Px, Py, 1072, 657, 1072, 657, 0x257558, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 1062, Yposition
		Sleep, 100
		MouseClick, left, 1072, 657
		Sleep, 4000
	}
}