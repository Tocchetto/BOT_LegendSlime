HotKeySet("{ESC}", "Terminate")
#include "utils.au3"

Func Terminate()
   Exit 1
EndFunc

WinMove("NoxPlayer", "", 0, 0)

While 1
   ;ConsoleWrite("New test" & @CRLF)
   MouseClick("left", 461, 633)
   Sleep(200)
   MouseClick("left", 457, 904)
   If Not Blessed() Then
	  ConsoleWrite("Not Blessed!" & @CRLF)
	  ActivateBlessing()
   Else
	  ConsoleWrite("Blessed!" & @CRLF)
   EndIf
   Sleep(1000)
WEnd