#include <ScreenCapture.au3>
#include <FileConstants.au3>
#include <WinAPIFiles.au3>

local $month = @MON
local $day = @MDAY
local $formattedDate = StringFormat("%02d-%02d-%04d", $day, $month, @YEAR)
local $folderName = "Prints " & $formattedDate
local $folderPath = @DesktopDir & "\" & $folderName

local $desktopCapture = _ScreenCapture_Capture("C:\Users\Administrador\Desktop\Prints 25-10-2023")

If Not FileExists($folderPath) Then
  DirCreate($folderPath)
EndIf

$hWnd = Win

_ScreenCapture_SaveImage($folderPath & "\Desktop.png", $desktopCapture)
_ScreenCapture_CaptureWnd($folderPath & "\Test.png", )