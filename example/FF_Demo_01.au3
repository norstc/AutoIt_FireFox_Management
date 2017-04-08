;FF_Demo_01.au3
;start firefox , open the target website , and quit

#include <MsgBoxConstants.au3>
#include "FF.au3"

MsgBox($MB_SYSTEMMODAL, "FF_Demo_01","Hello world")

;start Firefox
_FFStart("http://www.stockstar.com/");

;if connected, just quit
If _FFIsConnected() Then
   ;Do Something
   MsgBox($MB_SYSTEMMODAL, "FF_Demo_01","you should see firefox is open")
   Sleep(2000)
   
   ;some message 
   _FFAction("alert","Bye Bye...")

   ;Close FireFox
   _FFQuit()
EndIf
