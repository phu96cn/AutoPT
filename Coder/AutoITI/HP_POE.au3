#include<ThuVien/Memory/NomadMemory.au3>
Local $hWnd = WinWait("[CLASS:POEWindowClass]", "", 10)
$iv_Pid=WinGetProcess ($hWnd)
;msgbox (0 ,"hocautoit.com" ,$iv_Pid)

Global $ah_Handle=_MemoryOpen($iv_Pid)
$iv_Address="0x1F38493C"

$Add="0x"& Hex(_MemoryRead($iv_Address , $ah_Handle),8)
$X="0x" & hex(($Add + 0x38),8)
;While 1
$VarHp=_MemoryRead($X , $ah_Handle)
If $varHP <> NULL Then
   MsgBox(0,0,$varHP)
 If $varHp < 100 Then
   ControlSend ( $hWnd, "","","134")
 EndIf
EndIf
;WEnd

