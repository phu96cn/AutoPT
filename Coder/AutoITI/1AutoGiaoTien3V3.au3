#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include<ThuVien/Memory/NomadMemory.au3>
Local $hWnd = WinWait("[CLASS:FSOnline Class]", "", 10)
$iv_Pid=WinGetProcess ($hWnd)
Global $ah_Handle=_MemoryOpen($iv_Pid)

Money()
Func Money()
   $AddMN="0x00765414"
   $Add="0x"& Hex(_MemoryRead($AddMN , $ah_Handle),8)
   $MN="0x" & hex(($Add + 0x3AC),8)
   $VarMN=_MemoryRead($MN , $ah_Handle)-33000;So tien Van de lai 3V 3
   $Van=Int($VarMN/10000)
   ;$Van=($Van)
   ;$ChanMN="0x16093914"
   ;$Chan="0x"& Hex(_MemoryRead($ChanMN , $ah_Handle),8)
   ;$CH="0x" & hex(($Chan + 0x36AC),8)
   ;$Van=_MemoryRead($CH , $ah_Handle)
   ;MsgBox(0,"x",$Chan)
   ;_MemoryWrite($Chan,$ah_Handle,$Van,"char[2]")
   MouseClick("left",61,463,2);Toa do click Chuot tren man hinh
   ;ControlClick ( $hWnd, "", "", "left" , 3, 61, 463-23 );
   Sleep(500)
   ControlSend($hWnd,"","",$Van)
   Sleep(500)
   ControlClick ( $hWnd, "", "", "left" , 2, 54, 519-23 );
   Sleep(500)
   ControlClick ( $hWnd, "", "", "left" , 2, 115, 518-23 )
 ;  msgbox (0 ,"hocautoit.com" ,$Van)
   EndFunc