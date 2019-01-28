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
;Func
;Send(MemoryRead($nvchieuhon,"char[100]"))

$chose=InputBox("","Chọn vị trí đánh thu thập")
   Start()
Func ThuThap()
   While (MemoryRead($nvchieuhon,"char[100]")<>" Håi b¸o <c=g>Thñ Khè<c>")
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
Func LayTenThanh()
   $thanh= MemoryRead( $Add_thanhad,"char[20]")
   Return $thanh
EndFunc
Func VeNHC()
   If(KtraThanh("Thñ D­¬ng s¬n") == 1) Then
	  TimDuong(200,198)
	  CtrClick(550,321)
	  Sleep(2000)
	  Return 0
   ElseIf(KtraThanh("T©y C«n L«n") == 1) Then
	  TimDuong(231,235)
	  CtrClick(352,571)
	  Sleep(2000)
	  Return 0
   EndIf
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
Func NhanNV()
   If (MemoryRead($nvchieuhon,"char[100]")<>" Håi b¸o <c=g>Thñ Khè<c>" ) Then
	  If (MemoryRead($nvchieuhon,"char[100]")<>"" ) Then
		 Return 1
	  EndIf
   EndIf
   While(MemoryRead($Add_TTudanh,"int"))
	  While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
	  CtrClick(790,289)
	  Sleep(1000)
   WEnd
   While KtraThanh("Ngäc H­ cung") == 0
	  VeNHC()
   WEnd
   TimDuong(217,200) ; Thu kho NHC
   CtrClick(557,316) ; Click Thủ Khố
   Sleep(4000)
   CtrClick(303,328) ; Click Kế Tục
   Sleep(2000)
   CtrClick(303,328) ; Tra nv
   Sleep(2000)
   CtrClick(303,328) ; Click ke tuc
   Sleep(2000)
  ; CtrClick(303,328) ; Click tuyet quai
   CtrClick(403,328) ; Click bang lang
   Sleep(2000)
   CtrClick(303,328) ; ket thuc
   2000
EndFunc
Func RaThuDuongSon()
   While KtraThanh("Ngäc H­ cung") == 0
	  VeNHC()
   WEnd
   TimDuong(204,204) ; Cua thu duong son
   CtrClick(293,451) ; Click chuyen map
   Sleep(2000)
EndFunc
Func RaTayConLuan()
   If KtraThanh("T©y C«n L«n") == 1 Then
	  Return 1
   EndIf
   While KtraThanh("Ngäc H­ cung") == 0
	  VeNHC()
   WEnd
   TimDuong(222,193) ; Cua tay con luan
   CtrClick(410,343) ; Click chuyen map
   Sleep(2000)
EndFunc
Func Start()
   While true
   While(MemoryRead($Add_TTudanh,"int"))
	  While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
	  CtrClick(790,289)
	  Sleep(1000)
   WEnd
   NhanNV()
   While KtraThanh("T©y C«n L«n") == 0
	  RaTayConLuan()
   WEnd
   Switch $chose
   Case 1
		 while KtraToado(204,236)==1
		 TimDuong(204,236)
		 WEnd
	  Case 2
		 while KtraToado(210,234)==1
        TimDuong(210,234)
		WEnd
	  Case 3
		while KtraToado(201,227)==1
        TimDuong(201,227)
		WEnd
	  Case 4
		while KtraToado(207,227)==1
        TimDuong(207,227)
		WEnd
	  Case 5
		while KtraToado(203,223)==1
        TimDuong(203,223)
		WEnd
	  Case 6
		while KtraToado(210,223)==1
		TimDuong(210,223)
	 WEnd
	 Case 7
		while KtraToado(221,214)==1
        TimDuong(221,214)
		WEnd
	  Case 8
		while KtraToado(227,212)==1
        TimDuong(227,212)
		WEnd
	  Case 9
		while KtraToado(230,214)==1
		TimDuong(230,214)
		WEnd
	  Case Else
   EndSwitch
   ThuThap()
   WEnd
EndFunc
