;WinClose("迅雷快鸟")
WinActivate("迅雷快鸟")

$position = WinGetPos("迅雷快鸟")
ConsoleWrite($position)
MouseMove($position[0]+120,$position[1]+450)
MouseClick("left")

Sleep(30 * 1000)

MouseClick("left")

Sleep(50 * 1000)


if WinExists("宽带解绑") Then
   $bind_position = WinGetPos("宽带解绑")
   ConsoleWrite($bind_position[0])

   ;MsgBox ( 1, "title", $bind_position[0])
   Sleep(2 * 1000)
   MouseMove($bind_position[0]+173,$bind_position[1]+290)
   Sleep(2 * 1000)
   MouseClick("left")

EndIf
