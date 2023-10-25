#include <ScreenCapture.au3>
#include <FileConstants.au3>
#include <WinAPIFiles.au3>
#include <Process.au3>

local $month = @MON
local $day = @MDAY
local $formattedDate = StringFormat("%02d-%02d-%04d", $day, $month, @YEAR)
local $folderName = "Prints " & $formattedDate
local $folderPath = @DesktopDir & "\" & $folderName

;create file
local $desktopCapture = _ScreenCapture_Capture("")
If Not FileExists($folderPath) Then
  DirCreate($folderPath)
EndIf

;print desktop
print("Desktop")

;prints redes
_RunDos("start /MAX control ncpa.cpl" )
WinWaitActive("[CLASS:CabinetWClass]")
print("Rede")

;prints 
ControlClick("[CLASS:CabinetWClass]", "", "[CLASS:SysListView32; INSTANCE:1]")
ControlSend("[CLASS:CabinetWClass]", "", "[Class:SysListView32; INSTANCE:1]", "{APPSKEY}")

;function screen capture
func print($name)
  _ScreenCapture_Capture($folderPath & "\" &$name & ".png")
EndFunc