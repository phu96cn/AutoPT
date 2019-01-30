#include <Func.au3>
;imToaDo(201,205);1
;Send("TimToaDo("&Int(MemoryRead($Add_toadonvX,"Int")/256)&","&Int(MemoryRead($Add_toadonvY,"Int")/512)&")")
Send(MemoryRead($Add_thanhad,"Char[100]"))
Func TrieuCa(ByRef $Type)
   TimToaDo(201,205)
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
	  TimToaDo(200,199);2
	  TimToaDo(193,203)
	  While KtraThanh("MucDa") == 0
		 TimToaDo(192,205); Cua MucDa
		 CtrClick(208,391); chuyen map
	  WEnd
TimToaDo(222,192)
TimToaDo(203,197)
   Case "TranDuong"
	  TimToaDo(221,194)
	  TimToaDo(229,199)
	  TimToaDo(238,203)
	  TimToaDo(243,203)
	  While KtraThanh("TranDuong") == 0
		 TimToaDo(245,202); Cua TranDuong
		 CtrClick(613,286); chuyen map
	  WEnd
   Case "HienVien"
	  TimToaDo(221,194)
	  TimToaDo(229,199)
	  TimToaDo(238,203)
	  While KtraThanh("HienVien") == 0
		 TimToaDo(244,209); Cua HienVien
		 CtrClick(679,288); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func MucDa(ByRef $Type)
   TimToaDo(213,202)
   Switch $Type
   Case "CuLoc"
	  TimToaDo(197,210)
	  TimToaDo(188,216)
	  While KtraThanh("CuLoc") == 0
		 TimToaDo(187,218); Cua CuLoc
		 CtrClick(228,382); chuyen map
	  WEnd
	  TimToaDo(230,182)
	  TimToaDo(229,187)
   Case "TrieuCa"
	  TimToaDo(216,189)
	  TimToaDo(223,185)
	  TimToaDo(223,182)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(225,182); Cua Manh Tan
		 CtrClick(714,361); chuyen map
	  WEnd
	  TimToaDo(202,199)
	  TimToaDo(205,197)
	  TimToaDo(212,193)
	  TimToaDo(215,192)
   EndSwitch
EndFunc
Func CuLoc(ByRef $Type)
   Switch $Type
   Case "MucDa"
	  TimToaDo(242,182)
	  TimToaDo(242,177)
	  While KtraThanh("MucDa") == 0
		 TimToaDo(246,175); Cua MucDa
		 CtrClick(658,244); chuyen map
	  WEnd
	  TimToaDo(214,203)
   Case "XiViu"
	  TimToaDo(217,192);2
	  TimToaDo(205,197)
	  While KtraThanh("XiViu") == 0
		 TimToaDo(197,201); Cua XiViu
		 CtrClick(410,508); chuyen map
	  WEnd
	  TimToaDo(203,202)
   EndSwitch
EndFunc
Func XiViu(ByRef $Type)
   TimToaDo(201,203)
   Switch $Type
   Case "MieuCuong"
	  TimToaDo(204,208)
	  TimToaDo(213,208)
	  While KtraThanh("MieuCuong") == 0
		 TimToaDo(215,209); Cua MieuCuong
		 CtrClick(511,437); chuyen map
	  WEnd
	  TimToaDo(196,195)
	  TimToaDo(206,201)
	  TimToaDo(214,205)
	  TimToaDo(215,207)
   Case "CuLoc"
	  While KtraThanh("CuLoc") == 0
		 TimToaDo(216,204); Cua CuLoc
		 CtrClick(697,210); chuyen map
	  WEnd
	  TimToaDo(221,190)
	  TimToaDo(229,187)
   Case "DuHon"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func MieuCuong(ByRef $Type)
   TimToaDo(224,196);1
   Switch $Type
   Case "XiViu"
	  TimToaDo(203,185);2
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
	  TimToaDo(215,197);1
	  TimToaDo(212,198);2
	  TimToaDo(201,205);3
   EndSwitch
EndFunc
Func ManhTan(ByRef $Type)
   Switch $Type
   Case "YenSon"
	  TimToaDo(195,201)
	  TimToaDo(190,197)
	  TimToaDo(197,194)
	  TimToaDo(196,186)
	  While KtraThanh("YenSon") == 0
		 TimToaDo(197,185); Cua YenSon
		 CtrClick(192,136); chuyen map
	  WEnd
	  TimToaDo(228,223)
	  TimToaDo(230,215)
	  TimToaDo(220,210)
   Case "TrieuCa"
	  TimToaDo(208,201)
	  TimToaDo(214,197)
	  TimToaDo(223,198)
	  While KtraThanh("TrieuCa") == 0
		 TimToaDo(233,199); Cua TrieuCa
		 CtrClick(632,389); chuyen map
	  WEnd
	  TimToaDo(206,187)
	  TimToaDo(215,192)
   Case "DuHon"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TamSon"
	  TimToaDo(196,202);4
	  TimToaDo(188,201);5
	  TimToaDo(183,199);6
	  While KtraThanh("Tam S¬n") == 0
		 TimToaDo(169,200); Cua TamSon
		 CtrClick(212,402); chuyen map
	  WEnd
	  TimToaDo(191,202)
   EndSwitch
EndFunc
Func YenSon(ByRef $Type)
   Switch $Type
   Case "ManhTan"
	  TimToaDo(231,216)
	  TimToaDo(230,223)
	  TimToaDo(236,227)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(239,228); Cua Manh Tan
		 CtrClick(340,528); chuyen map
	  WEnd
	  TimToaDo(196,191)
	  TimToaDo(191,197)
	  TimToaDo(195,201)
   Case "SungThanhDaiDoanh"
	  TimToaDo(214,206)
	  TimToaDo(209,204)
	  TimToaDo(202,200)
	  While KtraThanh("SungThanhDaiDoanh") == 0
		 TimToaDo(201,200); Cua SungThanhDaiDoanh
		 CtrClick(113,267); chuyen map
	  WEnd
	  TimToaDo(208,202)
   EndSwitch
EndFunc
Func SungThanhDaiDoanh(ByRef $Type)

   Switch $Type
   Case "SungThanh"

	  While KtraThanh("Sïng thµnh") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "YenSon"
	  TimToaDo(208,203)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(212,205); Cua Manh Tan
		 CtrClick(437,509); chuyen map
	  WEnd
	  TimToaDo(208,203)
	  TimToaDo(216,206)
	  TimToaDo(220,210)
   Case "BacHai"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func BacHai(ByRef $Type)
   Switch $Type
   Case "SungThanhDaiDoanh"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "DongQuan"
	  While KtraThanh("§ång Quan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func SungThanh(ByRef $Type)
   Switch $Type
   Case "SungThanhDaiDoanh"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TamSon"
	  While KtraThanh("Tam S¬n") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func TamSon(ByRef $Type)
   Switch $Type
   Case "SungThanh"
	  TimToaDo(188,200)
	  While KtraThanh("Sïng thµnh") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "ManhTan"
	  TimToaDo(194,203)
TimToaDo(208,203)
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(214,203); Cua Manh Tan
		 CtrClick(569,217); chuyen map
	  WEnd
	  TimToaDo(179,199)
	  TimToaDo(187,201)
	  TimToaDo(195,202)
	  TimToaDo(200,204)
   Case "DongQuan"
	  TimToaDo(188,200)
	  TimToaDo(176,200)
	  While KtraThanh("§ång Quan") == 0
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
	  While KtraThanh("T©y Kú") == 0
		 TimToaDo(158,229); Cua TayKi
		 CtrClick(412,511); chuyen map
	  WEnd
	  TimToaDo(202,203)
	  TimToaDo(192,198)
	  TimToaDo(182,193)
   Case "BacHai"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "TamSon"
	  TimToaDo(193,209)
	  TimToaDo(195,204)
	  TimToaDo(207,200)
	  TimToaDo(213,198)
	  While KtraThanh("Tam S¬n") == 0
		 TimToaDo(215,196); Cua TamSon
		 CtrClick(603,221); chuyen map
	  WEnd
	  TimToaDo(175,202)
	  TimToaDo(178,201)
	  TimToaDo(188,200)

   Case "ChanNuiConLuan"
	  TimToaDo(192,210)
	  TimToaDo(188,215)
	  TimToaDo(188,222)
	  TimToaDo(193,226)
	  TimToaDo(199,228)
	  TimToaDo(195,232)
	  While KtraThanh("Ch©n nói C«n L«n") == 0
		 TimToaDo(194,232); Cua Manh Tan
		 CtrClick(132,286); chuyen map
	  WEnd
	  TimToaDo(243,201)
	  TimToaDo(233,196)
	  TimToaDo(217,193)
   EndSwitch
EndFunc
Func ChanNuiConLuan(ByRef $Type)
   Switch $Type
   Case "DongQuan"
	  TimToaDo(223,196)
	  TimToaDo(235,196)
	  TimToaDo(245,202)
	  While KtraThanh("§ång Quan") == 0
		 TimToaDo(247,201); Cua DongQuan
		 CtrClick(530,280); chuyen map
	  WEnd
	  TimToaDo(198,228)
	  TimToaDo(195,223)
	  TimToaDo(196,215)
	  TimToaDo(194,210)
	  TimToaDo(190,207)
   Case "NgocHuCung"
	  While KtraThanh("Ngäc H­ cung") == 0
		 TimToaDo(210,188); Cua NgocHuCung
		 CtrClick(103,136); chuyen map
	  WEnd
	  TimToaDo(217,201)
   EndSwitch
EndFunc
Func NgocHuCung(ByRef $Type)
   Switch $Type
   Case "ChanNuiConLuan"
TimToaDo(217,201)
	  While KtraThanh("Ch©n nói C«n L«n") == 0
		 TimToaDo(222,204); Cua ChanNuiConLuan
		 CtrClick(604,368); chuyen map
	  WEnd
	  TimToaDo(214,191)
   Case "TayConLuan"
	  While KtraThanh("T©y C«n L«n") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   Case "ThuDuongSon"
	  While KtraThanh("ManhTan") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func TayConLuan(ByRef $Type)
   Switch $Type
   Case "NgocHuCung"
	  While KtraThanh("Ngäc H­ cung") == 0
		 TimToaDo(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
	  WEnd
   EndSwitch
EndFunc
Func ThuDuongSon(ByRef $Type)
   Switch $Type
   Case "NgocHuCung"
	  While KtraThanh("Ngäc H­ cung") == 0
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
	  While KtraThanh("§ång Quan") == 0
		 TimToaDo(206,206); Cua DongQuan
		 CtrClick(158,118); chuyen map
	  WEnd
	  TimToaDo(169,224)
	  TimToaDo(173,218)
	  TimToaDo(184,215)
	  TimToaDo(191,212)
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