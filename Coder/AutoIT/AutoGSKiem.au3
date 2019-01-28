#include <NomadMemory.au3>
#include <Func.au3>
;Func
;Send(MemoryRead($nvchieuhon,"char[100]"))
$chose=InputBox("","Chon vi tri danh")
   Start()
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
Func NhanNV() ; dang sua
   If (KtraNhanNV()==0) Then
	  Return 1
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
   While(KtraNhanNV()==1)
	  TimDuong(201,198) ; Thu kho
	  CtrClick(575,287) ; Click Th? Kh?
	  Sleep(4000)
	  CtrClick(303,328) ; ClickUI 1
	  Sleep(2000)
	  CtrClick(303,328) ; Tra nv
	  Sleep(2000)
	  CtrClick(303,328) ; Click ke tuc
	  Sleep(2000)
	  CtrClick(303,328) ; Click tuyet quai
	  Sleep(2000)
	  ;CtrClick(403,328) ; Click bang lang
   ; Sleep(500)
	  CtrClick(303,328) ; ket thuc
	  CtrClick(303,328) ; ket thuc
	  ;CtrKeyboard('{ESC}')
	  Sleep(2000)
   Wend
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
   While KtraThanh("Sïng thµnh") == 0
	  RaSungThanh()
   WEnd

   Switch $chose
	  Case 1
		 while KtraToado(220,180)==1
		 TimDuong(220,180)
		 WEnd
	  Case 2
		 while KtraToado(217,179)==1
        TimDuong(217,179)
		WEnd
	  Case 3
		while KtraToado(213,181)==1
        TimDuong(213,181)
		WEnd
	  Case 4
		while KtraToado(209,180)==1
        TimDuong(209,180)
		WEnd
	  Case 5
		while KtraToado(202,179)==1
        TimDuong(202,179)
		WEnd
	  Case 6
		while KtraToado(206,182)==1
		TimDuong(206,182)
		WEnd
	  Case Else
   EndSwitch
   ThuThap()
   WEnd
EndFunc
