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
;Send(MemoryRead($Add_HP,"int"))
;Start()
$chose=InputBox("","Ch?n v? trí dánh thu th?p")
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
Func VeSungThanhDoanh()
   While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
   If(KtraThanh("Sïng thµnh") == 1) Then
	  TimDuong(227,184)
	  CtrClick(545,127)
	  Sleep(2000)
	  Return 0
   ElseIf(KtraThanh("B¾c H¶i") == 1) Then
	  TimDuong(241,175)
	  CtrClick(483,147)
	  Sleep(2000)
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
   While KtraThanh("Sïng Thµnh doanh") == 0
	  VeSungThanhDoanh()
   WEnd
   TimDuong(202,198) ; Thu kho
   CtrClick(341,282) ; Click Th? Kh?
   Sleep(4000)
   CtrClick(303,328) ; ClickUI 1
   Sleep(2000)
   CtrClick(303,328) ; Tra nv
   Sleep(2000)
   CtrClick(303,328) ; Click ke tuc
   Sleep(2000)
   ;CtrClick(303,328) ; Click tuyet quai
   CtrClick(403,328) ; Click bang lang
   Sleep(2000)
   CtrClick(303,328) ; ket thuc
   2000
EndFunc
Func RaSungThanh()
   While KtraThanh("Sïng Thµnh doanh") == 0
	  VeSungThanhDoanh()
   WEnd
   TimDuong(192,204) ; Cua thu sungthanh
   CtrClick(364,477) ; Click chuyen map
   Sleep(2000)
EndFunc
Func RaBacHai()
   If KtraThanh("B¾c H¶i") == 1 Then
	  Return 1
   EndIf
   While KtraThanh("Sïng Thµnh doanh") == 0
	  VeSungThanhDoanh()
   WEnd
   TimDuong(193,195) ; Cua BacHai
   CtrClick(266,120) ; Click chuyen map
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
   While KtraThanh("B¾c H¶i") == 0
	  RaBacHai()
   WEnd

   Switch $chose
	  Case 1
		 while KtraToado(217,192)==1
		 TimDuong(217,192)
		 WEnd
	  Case 2
		 while KtraToado(213,194)==1
        TimDuong(213,194)
		WEnd
	  Case 3
		while KtraToado(220,194)==1
        TimDuong(220,194)
		WEnd
	  Case 4
		while KtraToado(224,196)==1
        TimDuong(224,196)
		WEnd
	  Case 5
		while KtraToado(219,198)==1
        TimDuong(219,198)
		WEnd
	  Case 6
		while KtraToado(221,199)==1
		TimDuong(221,199)
		WEnd
	  Case Else
   EndSwitch
   ThuThap()
   WEnd
EndFunc
