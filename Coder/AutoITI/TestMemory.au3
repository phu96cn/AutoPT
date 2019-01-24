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
;msgbox (0 ,"hocautoit.com" ,$iv_Pid)

Global $ah_Handle=_MemoryOpen($iv_Pid)
;msgbox (0 ,"hocautoit.com" ,@error)
Money()
$iv_Address="0x0018A868"

$Add="0x"& Hex(_MemoryRead($iv_Address , $ah_Handle),8)
$X="0x" & hex(($Add + 0x2A4C),8)
$Y="0x" & hex(($Add + 0x2A50),8)
$Hp="0x" & hex(($Add + 0x1128),8)
$VarX=_MemoryRead($X , $ah_Handle)
$VarY=_MemoryRead($Y , $ah_Handle)
$VarHp=_MemoryRead($Hp , $ah_Handle)
;msgbox (0 ,"hocautoit.com" ,$X)

;If $var = 179 Then
   ;MsgBox(0, 0, "TRUE")
;Else
  ; MsgBox(0,0,"False")
;EndIf

msgbox (0 ,"hocautoit.com" ,"Toa do: " & $VarX/256 &","& $VarY/512 & @LF & "HP: "& $VarHp)

$v_DataX=49244
$v_DataY=96316
_MemoryWrite($X , $ah_Handle , $v_DataX)
_MemoryWrite($Y , $ah_Handle , $v_DataY)
Func Money()
   $AddMN="0x00765414"

$Add="0x"& Hex(_MemoryRead($AddMN , $ah_Handle),8)
$MN="0x" & hex(($Add + 0x3AC),8)
$VarMN=_MemoryRead($MN , $ah_Handle)
$Van=Int($VarMN/10000)
;If $var = 179 Then
   ;MsgBox(0, 0, "TRUE")
;Else
  ; MsgBox(0,0,"False")
;EndIf
msgbox (0 ,"hocautoit.com" ,$Add)
msgbox (0 ,"hocautoit.com" ,"Money: " &$Van&"V " & $VarMN-($Van*10000))

EndFunc
