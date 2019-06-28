OpenArtifact()
{
	PixelSearch, Px, Py, 1224, 587, 1224, 587, 0x84DEF7, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 1224, 587
		Sleep, 500
	}
	PixelSearch, Px, Py, 1224, 691, 1224, 691, 0x84DEF7, 3, Fast
	if ErrorLevel = 0
	{
		MouseClick, left, 1224, 691
		Sleep, 500
	}
	MouseClick, left, 663, 704
	Sleep, 500
	PixelSearch, Px, Py, 204, 643, 204, 643, 0xEFA4E6, 3, Fast
	if ErrorLevel = 1
	{
		MouseMove 200, 604
		KeyWait, z, D
	}
	MouseClick, left, 475, 704
	Sleep, 500
	MouseClick, left, 131, 615
	Sleep, 100
	MouseClick, left, 788, 604
	KeyWait, z, D
	MouseClick, left, 113, 704
}