#include <Func.au3>
Send("TimToaDo("&Int(MemoryRead($Add_toadonvX,"Int")/256)&","&Int(MemoryRead($Add_toadonvY,"Int")/512)&")")
Func Trieuca(ByRef $Type)
   TimToaDo(224,196);1
   Switch $Type
   Case "ManhTan"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
	  TimToaDo(215,197);1
	  TimToaDo(212,198);2
	  TimToaDo(201,205);3
   Case "MucDa"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TranDuong"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "HienVien"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func ManhTan(ByRef $Type)
   Switch $Type
   Case "YenSon"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "DuHon"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TamSon"
	  TimToaDo(196,202);4
	  TimToaDo(188,201);5
	  TimToaDo(183,199);6
	  While KtraThanh("TamSon") == 0
		 TimToaDo(169,200); Cua TamSon
		 CtrClick(212,402); chuyen map
	  WEnd
	  TimToaDo(191,202)
   EndSwitch
EndFunc
Func TamSon(ByRef $Type)
   Switch $Type
   Case "SungThanh"
TimToaDo(188,200)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "DongQuan"
	  TimToaDo(188,200)
	  TimToaDo(176,200)
	  While KtraThanh("DongQuan") == 0
		 TimToaDo(170,203); Cua DongQuan
		 CtrClick(126,409); chuyen map
	  WEnd
	  TimToaDo(202,202)
	  TimToaDo(194,205)
   Case "TuyetLongTinh"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func DongQuan(ByRef $Type)
   Switch $Type
   Case "TayKi"
	  TimToaDo(186,210)
	  TimToaDo(187,215)
	  TimToaDo(175,217)
	  TimToaDo(165,222)
	  TimToaDo(161,223)
	  TimToaDo(162,227)
	  While KtraThanh("TayKi") == 0
		 TimToaDo(158,229); Cua TayKi
		 CtrClick(412,511); chuyen map
	  WEnd
	  TimToaDo(202,203)
	  TimToaDo(192,198)
	  TimToaDo(182,193)
   Case "DongQuan"
		 While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TuyetLongTinh"
	  TimToaDo(186,210)
	  TimToaDo(187,215)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc

Func TayKi(ByRef $Type)
   Switch $Type
   Case "HoangMac"
	  While KtraThanh("TayKi") == 0
		 TimToaDo(158,229); Cua TayKi
		 CtrClick(412,511); chuyen map
	  WEnd
   Case "DongQuan"
	  TimToaDo(182,193)
	  TimToaDo(191,197)
	  TimToaDo(201,202)
	  While KtraThanh("DongQuan") == 0
		 TimToaDo(206,206); Cua DongQuan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "BangXuyen"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "KySon"
	  TimToaDo(182,193)
	  TimToaDo(191,197)
	  TimToaDo(201,202)
	  While KtraThanh("KySon") == 0
		 TimToaDo(199,209); Cua KySon
		 CtrClick(273,569); chuyen map
	  WEnd
   EndSwitch
EndFunc