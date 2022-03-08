;WinClose("迅雷快鸟")
WinActivate("迅雷快鸟")

$position = WinGetPos("迅雷快鸟")
ConsoleWrite($position)
MouseMove($position[0]+120,$position[1]+450)
MouseClick("left")

Sleep(30 * 1000)

MouseClick("left")