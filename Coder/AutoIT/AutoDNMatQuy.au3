#include <Func.au3>
;Func
;Send(MemoryRead($nvchieuhon,"char[100]"))
;Start()
;~ MsgBox("","",$Add_nhaptdX)
$chose=InputBox("","Ch?n v? trí dánh thu th?p")
   Start()
Func ThuThapDN()
   $nvchieuhon=_memoryread($BaseAddress_Nhiemvu,$hw)+0x0
   $nvchieuhon=_memoryread($nvchieuhon,$hw)+0x115
   MemoryRead($nvchieuhon,"char[100]")
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
	  $nvchieuhon=_memoryread($BaseAddress_Nhiemvu,$hw)+0x0
	  $nvchieuhon=_memoryread($nvchieuhon,$hw)+0x115
   WEnd

   While(MemoryRead($Add_TTudanh,"int")
	  While(MemoryRead($Add_HP,"int")==0)
		 CtrClick(276,296)
		 Sleep(1000)
		 Start()
	  WEnd
	  CtrClick(790,289)
	  Sleep(1000)
   WEnd
EndFunc


Func VeXiVuuMo()
   If(KtraThanh("Miªu C­¬ng") == 1) Then
	  TimDuong(183,189)
	  CtrClick(437,211)
	  Sleep(2000)
	  Return 0
   ElseIf(KtraThanh("T©y C«n L«n") == 1) Then
	  TimDuong(231,235)
	  CtrClick(352,571)
	  Sleep(2000)
	  Return 0
   EndIf
EndFunc
Func NhanNV()
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
   While KtraThanh("Xi V­u Mé") == 0
	  VeXiVuuMo()
   WEnd
   While(KtraNhanNV()==1)
	  while KtraToado(197,202)==1
		 TimDuong(197,202) ; Thu kho NHC
	  WEnd
	  Sleep(5000)
	  CtrClick(517,125) ; Click Th? Kh?
	  Sleep(4000)
	  CtrClick(303,328) ; Click K? T?c
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
	  Sleep(2000)
   WEnd
EndFunc

;RaMieuCuong()
Func RaMieuCuong()
   While KtraThanh("Xi V­u Mé") == 0
	  VeXiVuuMo()
   WEnd
   TimDuong(215,209) ; Cua Mieu cuong
   CtrClick(518,434) ; Click chuyen map
   Sleep(2000)
EndFunc
Func RaTayConLuan()

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
	  While KtraThanh("Miªu C­¬ng") == 0
		 RaMieuCuong()
	  WEnd

	  Switch $chose
		 Case 1
			while KtraToado(190,185)==1
			   TimToaDo(190,185)
			WEnd
		 Case 2
			while KtraToado(195,185)==1
			   TimToaDo(195,185)
			WEnd
		 Case 3
			while KtraToado(190,190)==1
			   TimToaDo(190,190)
			WEnd
		 Case 4
			while KtraToado(190,195)==1
			   TimToaDo(190,195)
			WEnd
		 Case 5
			while KtraToado(195	,195)==1
			   TimToaDo(195,195)
			WEnd
		 Case 6
			while KtraToado(195,190)==1
			   TimToaDo(195,190)
			WEnd
		 Case Else
	  EndSwitch
	  ThuThap()
   WEnd
EndFunc
