#include <NomadMemory.au3>
$hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
$Pid=WinGetProcess ($hWnd)
Global $hw= _MemoryOpen($Pid)
$BaseAddress = 0x613474; 0x78 1C
$AddressCap1 = _memoryread($BaseAddress,$hw)+0x48
$AddressCap2 = _memoryread($AddressCap1,$hw)+0x1C
While(_memoryread($AddressCap2,$hw,"Int")<18)
   ControlClick($hWnd, "", "","left",1,312-3,378-25)
   Sleep(1000)
   ControlClick($hWnd, "", "","left",1,312-3,378-25)
   Sleep(1000)
   ControlClick($hWnd, "", "","left",1,312-3,378-25)
   Sleep(180000)
WEnd