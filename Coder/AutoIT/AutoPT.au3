#include <NomadMemory.au3>
Start()
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

Func MemoryRead(ByRef $ah_Handle,ByRef $Address)
   Local $var=_MemoryRead($Address , $ah_Handle)
   MsgBox("","",$var)
   Return $var
EndFunc
Func MemoryWrite(ByRef $hWnd,ByRef $Address,ByRef $Value )
   _MemoryWrite($Address , $hWnd, $Value)
EndFunc
Func TimDuong(ByRef $hWnd,ByRef $ValueX,ByRef $ValueY)
   MemoryWrite($hWnd,"0x0F52601C",$ValueX)
   MemoryWrite($hWnd,"0x0F52622C",$ValueY)
EndFunc
Func Start()
   Local $hwn = GetHandle()
   $iv_Pid=WinGetProcess ($hwn)
   $hw=_MemoryOpen($iv_Pid)
   ;CtrClick($hwn,388,379)
   ;CtrClick($hwn,308,379)
   TimDuong($hw,"209","177")
   CtrClick($hwn,746,177) ;nut tim theo toa do
   EndFunc
