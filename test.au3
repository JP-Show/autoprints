#include <Process.au3>
#include <MsgBoxConstants.au3>

_RunDos("start control ncpa.cpl" )
WinWaitActive("[CLASS:CabinetWClass]")

ControlClick("[CLASS:CabinetWClass]", "", "[CLASS:DirectUIHWND; INSTANCE:3]", "right", 1, 25, 25)

Send("!ap")
WinWaitActive("[CLASS:#32770]")
WinActivate("[CLASS:#32770]")
Send("!o")