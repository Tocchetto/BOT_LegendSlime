Global $g_arEnabledBlessing[9] = [34, 108, 0xFF9F24, 54, 108, 0x038BFE, 46, 88, 0x655AD2]

Func SearchFor($arXYColor)
   Local $iShadeVariation = 50

   For $i = 0 To UBound($arXYColor)-1 Step 3
	  Local $iColor = PixelGetColor($arXYColor[$i], $arXYColor[$i+1])
	  If $iColor = $arXYColor[$i+2] Then
		 Return True
	  EndIf

	  If (($iColor < $arXYColor[$i+2]) And (($iColor+$iShadeVariation) >= $arXYColor[$i+2])) Or (($iColor > $arXYColor[$i+2]) And ($iColor-$iShadeVariation) <= $arXYColor[$i+2]) Then
		 ConsoleWrite("Shade variation of " & $iShadeVariation & @CRLF)
		 Return True
	  EndIf
   Next
EndFunc

Global $g_arOpenedBlessingGUI[12] = [121, 427, 0xFEE182, 280, 472, 0x984222, 456, 468, 0x8EF34D, 298, 719, 0xC1456E]

;[0] = number of buttons
;[1] = initial button X coordinate
;[2] = initial button Y coordinate
;[3] = distance in pixels between buttons for X coordinate
;[4] = distance in pixels between buttons for Y coordinate
#CS Global $g_arActivateButtons[5] = [3, 116, 642, 162, 0]
### Global $g_AB_NumberOfButtons = 0
### Global $g_AB_XInitialButtonCoordinate = 1
### Global $g_AB_YInitialButtonCoordinate = 2
### Global $g_AB_XLengthInPixelsBetweenButtons = 3
### Global $g_AB_YLengthInPixelsBetweenButtons = 4
###
### $g_arActivateButtons[$g_AB_NumberOfButtons] = 3
#CE

Func ActivateBlessing()
   MouseClick("left", $g_arEnabledBlessing[0], $g_arEnabledBlessing[1])
   Sleep(200)
   If SearchFor($g_arOpenedBlessingGUI) Then
	  MouseClick("left", 109, 640)
	  Sleep(200)
	  MouseClick("left", 278, 640)
	  Sleep(200)
	  MouseClick("left", 445, 640)
	  Sleep(200)
	  MouseClick("left", 280, 719)
	  Sleep(2000)
   EndIf
EndFunc

Func Blessed()
   Return SearchFor($g_arEnabledBlessing)
EndFunc