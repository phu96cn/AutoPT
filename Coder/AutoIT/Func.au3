#include <NomadMemory.au3>
$hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
$Pid=WinGetProcess ($hWnd)
Global $hw= _MemoryOpen($Pid)
;BaseAddress
$baseAddress_nhaptd=0x00761340; offX=314,offY=524
$baseAddress_thanh=0x00B0B2C4 ;0xF0B2C4
$baseAddress_nhanvat=0x009CEDB4
$BaseAddress_tien= 0x00765414
$BaseAddress_Nhiemvu=0x00761A98
$BaseAddress_TTudanh =0xad3ac0
$BaseAddress_CapNv=0x5A1C44 ;
$BaseAddress_CamVP=0x751290
MemoryWrite($BaseAddress_CamVP,1,"Int")
;Address
$Add_nhaptdX=_MemoryRead($baseAddress_nhaptd,$hw) + 0x314 ;Address input X
$Add_nhaptdY=_MemoryRead($baseAddress_nhaptd,$hw) + 0x524 ;Address input Y
$Add_thanhad=_MemoryRead($baseAddress_thanh ,$hw) + 0xF0B2C4 ; Address Thanh
$Add_toadonvX=0xed8e30 ;Address toado nhan vat X
$Add_toadonvY=0xed8e34 ;Address toado nhan vat Y
$Add_TTudanh= _MemoryRead($BaseAddress_TTudanh,$hw)+0xed3ac0 ; L?y tr?ng thái t? dánh
; lay Address HP
$Add_HP=_memoryread($baseAddress_nhanvat,$hw)+0xc714
$HP=_memoryread($Add_HP,$hw,"int")
; L?y Address thu th?p
$nvchieuhon=_memoryread($BaseAddress_Nhiemvu,$hw)+0x0
$nvchieuhon=_memoryread($nvchieuhon,$hw)+0x115
Func KtraNhanNV()
   $nvchieuhon=_memoryread($BaseAddress_Nhiemvu,$hw)+0x0
   $nvchieuhon=_memoryread($nvchieuhon,$hw)+0x115
   If (MemoryRead($nvchieuhon,"char[100]")==" Håi b¸o <c=g>Thñ Khè<c>" ) Then
	  return 1
   EndIf
	  If (MemoryRead($nvchieuhon,"char[100]")=="" ) Then
		 Return 1
	  EndIf
   return 0 ; khong cho nhan
EndFunc
Func ThuThap()
;~    MemoryRead($nvchieuhon,"char[100]")
   While (KtraNhanNV()==0)
	  While(MemoryRead($Add_TTudanh,"int")==0)
		 CtrClick(790,289)
		 Sleep(1000)
	  WEnd
	  Sleep(2000)
	  While(MemoryRead($Add_HP,"int")==0)
		 CtrClick(276,296)
		 Sleep(1000)
		 Start()
	  WEnd
	  Sleep(2000)
   WEnd
   While(MemoryRead($Add_TTudanh,"int"))
	  While(MemoryRead($Add_HP,"int")==0)
		 CtrClick(276,296)
		 Sleep(1000)
		 Start()
	  WEnd
	  CtrClick(790,289)
	  Sleep(1000)
   WEnd
EndFunc
Func CtrClick(ByRef $ctrM_x,ByRef $ctrM_y)
   ControlClick($hWnd, "", "","left",1,$ctrM_x-3,$ctrM_y-25)
EndFunc
Func CtrKeyboard(ByRef $String)
   ControlSend($hWnd, "", "", $String)
EndFunc
Func MemoryRead(ByRef $Address,ByRef $Type )
   Local $var=_MemoryRead($Address,$hw,$Type)
  ;  MsgBox("","",$var)
   Return $var
EndFunc
Func MemoryWrite(ByRef $Address,ByRef $Value,ByRef $Type )
   _MemoryWrite($Address , $hw, $Value,$Type)
EndFunc
Func TimDuong(ByRef $ValueX,ByRef $ValueY)
   While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
   $Thanhht=LayTenThanh()
   MemoryWrite($Add_nhaptdX,$ValueX,"CHAR[20]")
   MemoryWrite($Add_nhaptdY,$ValueY,"CHAR[20]")
   CtrClick(747,177)
   Sleep(1000)
   While (_MemoryRead(0x759CD1,$hw))
	  While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
	  Sleep(2000)
   WEnd
EndFunc
Func TimToaDo(ByRef $ValueX,ByRef $ValueY)
   While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
   $Thanhht=LayTenThanh()
   MemoryWrite($Add_nhaptdX,$ValueX,"CHAR[20]")
   MemoryWrite($Add_nhaptdY,$ValueY,"CHAR[20]")
   CtrClick(747,177)
   Sleep(1000)
   While (KtraToado($ValueX,$ValueY))
	  CtrClick(747,177)
	  While (_MemoryRead(0x759CD1,$hw))
		 While(MemoryRead($Add_HP,"int")==0)
		 CtrClick(276,296)
		 Sleep(1000)
		 Start()
		 WEnd
		 Sleep(2000)
	  WEnd
   WEnd
EndFunc
Func LayTenThanh()
   $thanh= MemoryRead( $Add_thanhad,"char[20]")
   Return $thanh
EndFunc
Func KtraToado(ByRef $ToadoX,ByRef $ToadoY)
   $TdX= Int(MemoryRead($Add_toadonvX,"Int")/256)
   If $TdX <> $ToadoX Then
	  Return 1
   EndIf
   $TdY= Int(MemoryRead($Add_toadonvY,"Int")/512)
   If $TdY <> $ToadoY Then
	  Return 1
   EndIf
   Return 0
EndFunc
Func KtraThanh(ByRef $Text)
   $thanh= MemoryRead( $Add_thanhad,"char[20]")
   If($thanh == $Text) Then
	  Return 1
   Else
	  Return 0
   EndIf
EndFunc


