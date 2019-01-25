#include <NomadMemory.au3>
#include <Func.au3>
$hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
$Pid=WinGetProcess ($hWnd)
Global $hw= _MemoryOpen($Pid)
;BaseAddress
$baseAddress_nhaptd=0x00761340; offX=314,offY=524
$baseAddress_thanh=0x00B0B2C4 ;0xF0B2C4
$baseAddress_nhanvat=0x009CEDB4
$BaseAddress_tien= 0x00765414
;Address
$nhaptdX=_MemoryRead($baseAddress_nhaptd,$hw) + 0x314 ;Address input X
$nhaptdY=_MemoryRead($baseAddress_nhaptd,$hw) + 0x524 ;Address input Y


;Func


Func TimDuong(ByRef $ValueX,ByRef $ValueY)
   _MemoryWrite($nhaptdX,$hw,$ValueX,"CHAR[20]")
   _MemoryWrite($nhaptdY,$hw,$ValueY,"CHAR[20]")
   CtrClick($hWnd,742,179);nut tim theo toa do
   Sleep(1000);
   CtrClick($hWnd,742,179)

EndFunc
Start()
Func Start()
   $b= _MemoryRead( $baseAddress_thanh,$hw)+0xF0B2C4
   $b= _memoryread( $b,$hw,"char[20]")
   EndIf
   ;CtrClick($hwn,388,379)
   ;CtrClick($hwn,308,379)
   TimDuong(217,200)
   ;CtrClick($hwn,746,177) ;nut tim theo toa do
   EndFunc
