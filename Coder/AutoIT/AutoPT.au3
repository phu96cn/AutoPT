#include <NomadMemory.au3>
Func GetHandle()
   $hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
   Return $hWnd
EndFunc
Func CtrClick(ByRef $hWnd,ByRef $ctrM_x,ByRef $ctrM_y)
   ControlClick($hWnd, "", "","left",2,$ctrM_x-3,$ctrM_y-25)
EndFunc

Func CtrKeyboard(ByRef $hWnd,ByRef $String)
   ControlSend($hWnd, "", "", $String)
EndFunc

Func MemoryRead(ByRef $hWnd,ByRef $Address)
   $iv_Pid=WinGetProcess (" Phong Than_Dong Thien Phuc Dia")
   $ah_Handle=_MemoryOpen($iv_Pid)
   Local $var=_MemoryRead($Address , $ah_Handle)
   MsgBox("","",$var)
   Return $var
EndFunc
Func MemoryWrite(ByRef $hWnd,ByRef $Address,ByRef $Value )
   Local $var=_MemoryWrite($Address , $hWnd, $Value)
   Return $var
EndFunc

MemoryRead(GetHandle(), "0x11239C28")