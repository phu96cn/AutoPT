#include <NomadMemory.au3>
#include <Func.au3>
;Func
;Send(MemoryRead($nvchieuhon,"char[100]"))
$chose=InputBox("","Chon vi tri danh")
   Start()
Func VeNHC()
   While(MemoryRead($Add_HP,"int")==0)
	  CtrClick(276,296)
	  Sleep(1000)
	  Start()
	  WEnd
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
   While(MemoryRead($nvchieuhon,"char[100]")<>" §èi t­îng nhiÖm vô lÇn nµy: <c=r>KiÕm Nh©n<c> (30)")
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
	  ;CtrClick(303,328) ; ket thuc
	  CtrKeyboard('{ESC}')
	  Sleep(2000)
   Wend
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
