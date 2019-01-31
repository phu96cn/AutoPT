#include <Func.au3>
;imToaDo(201,205);1
Send("TimToaDo("&Int(MemoryRead($Add_toadonvX,"Int")/256)&","&Int(MemoryRead($Add_toadonvY,"Int")/512)&")")
;Send(MemoryRead($Add_thanhad,"Char[100]"))
Func TrieuCa(ByRef $Type)
   Switch $Type
   Case "ManhTan"
	  If KtraThanh("M¹nh T©n") Then
		 Return 1
	  EndIf
	  TimToaDo(212,190)
TimToaDo(209,188)
TimToaDo(205,186)
TimToaDo(200,184)
TimToaDo(196,182)
TimToaDo(195,181)
	  While KtraThanh("M¹nh T©n") == 0
		 TimDuong(195,180); Cua Manh Tan
		 CtrClick(175,334); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(229,200)
TimToaDo(226,199)
TimToaDo(220,198)
TimToaDo(214,197)
TimToaDo(211,199)
TimToaDo(207,202)
TimToaDo(202,205)
   Case "MucDa"
	  TimToaDo(200,199);2
	  TimToaDo(193,203)
	  While KtraThanh("Môc D·") == 0
		 TimDuong(192,205); Cua MucDa
		 CtrClick(208,391); chuyen map
 	 	 Sleep(2000)
	  WEnd
   TimToaDo(222,192)
   TimToaDo(203,197)
   Case "TranDuong"
	  TimToaDo(221,194)
	  TimToaDo(229,199)
	  TimToaDo(238,203)
	  TimToaDo(243,203)
	  While KtraThanh("TrÇn §­êng") == 0
		 TimDuong(245,202); Cua TranDuong
		 CtrClick(613,286); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "HienVien"
	  TimToaDo(221,194)
	  TimToaDo(229,199)
	  TimToaDo(238,203)
	  While KtraThanh("Hiªn Viªn tÇng 1") == 0
		 TimDuong(244,209); Cua HienVien
		 CtrClick(679,288); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "TapThuong"
	  TimToaDo(219,194)
TimToaDo(223,196)
TimToaDo(222,198)

   EndSwitch
EndFunc
Func MucDa(ByRef $Type)
   TimToaDo(213,202)
   Switch $Type
   Case "CuLoc"
	  TimToaDo(197,210)
	  TimToaDo(188,216)
	  While KtraThanh("Cù Léc") == 0
		 TimDuong(187,218); Cua CuLoc
		 CtrClick(228,382); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(230,182)
	  TimToaDo(229,187)
   Case "TrieuCa"
	  TimToaDo(216,189)
	  TimToaDo(223,185)
	  TimToaDo(223,182)
	  While KtraThanh("TriÒu Ca") == 0
		 TimDuong(225,182); Cua Manh Tan
		 CtrClick(714,361); chuyen map
 	 	 Sleep(2000)
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
	  While KtraThanh("Môc D·") == 0
		 TimDuong(246,175); Cua MucDa
		 CtrClick(658,244); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(214,203)
   Case "XiViu"
	  TimToaDo(217,192);2
	  TimToaDo(205,197)
	  While KtraThanh("Xi V­u Mé") == 0
		 TimDuong(197,201); Cua XiViu
		 CtrClick(410,508); chuyen map
 	 	 Sleep(2000)
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
	  While KtraThanh("Miªu C­¬ng") == 0
		 TimDuong(215,209); Cua MieuCuong
		 CtrClick(511,437); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(196,195)
	  TimToaDo(206,201)
	  TimToaDo(214,205)
	  TimToaDo(215,207)
   Case "CuLoc"
	  While KtraThanh("Cù Léc") == 0
		 TimDuong(216,204); Cua CuLoc
		 CtrClick(697,210); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(221,190)
	  TimToaDo(229,187)
   Case "DuHon"
	  TimToaDo(195,205)
TimToaDo(191,203)
TimToaDo(187,201)
TimToaDo(187,199)
TimToaDo(182,199)
	  While KtraThanh("Du Hån") == 0
		 TimToaDo(179,196); Cua DuHon
		 CtrClick(274,279); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(225,224)
TimToaDo(223,221)
TimToaDo(221,217)
TimToaDo(218,212)
TimToaDo(217,209)
   Case "TapThuong"
	  TimToaDo(196,204)
TimToaDo(196,206)
TimToaDo(195,209)
   EndSwitch
EndFunc
Func MieuCuong(ByRef $Type)
   TimToaDo(224,196);1
   Switch $Type
   Case "XiViu"
	  TimToaDo(203,185);2
	  While KtraThanh("Xi V­u Mé") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(215,197);1
	  TimToaDo(212,198);2
	  TimToaDo(201,205);3
   EndSwitch
EndFunc
Func ManhTan(ByRef $Type)
   Switch $Type
   Case "YenSon"
	  TimToaDo(197,202)
TimToaDo(194,199)
TimToaDo(191,197)
TimToaDo(193,194)
TimToaDo(195,190)
TimToaDo(196,186)
	  While KtraThanh("YÕn S¬n") == 0
		 TimDuong(197,185); Cua YenSon
		 CtrClick(192,136); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(232,224)
TimToaDo(229,221)
TimToaDo(230,217)
TimToaDo(228,214)
TimToaDo(224,211)
TimToaDo(221,209)
   Case "TrieuCa"
	  TimToaDo(203,203)
TimToaDo(209,201)
TimToaDo(213,198)
TimToaDo(216,197)
TimToaDo(222,198)
TimToaDo(227,199)
TimToaDo(231,200)
TimToaDo(232,200)
	  While KtraThanh("TriÒu Ca") == 0
		 TimDuong(233,199); Cua TrieuCa
		 CtrClick(632,389); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(200,184)
TimToaDo(205,186)
TimToaDo(209,189)
TimToaDo(214,192)
   Case "DuHon"
TimToaDo(197,207)
TimToaDo(194,209)
TimToaDo(189,209)
TimToaDo(185,212)
TimToaDo(183,215)
TimToaDo(181,219)
TimToaDo(179,223)
	  While KtraThanh("Du Hån") == 0
		 TimDuong(178,256); Cua DuHon
		 CtrClick(500,340); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(201,192)
TimToaDo(202,196)
TimToaDo(204,200)
TimToaDo(207,203)
TimToaDo(210,205)
   Case "TamSon"
TimToaDo(198,203)
TimToaDo(193,202)
TimToaDo(188,201)
TimToaDo(181,199)
TimToaDo(175,200)
TimToaDo(170,200)
	  While KtraThanh("Tam S¬n") == 0
		 TimDuong(169,200); Cua TamSon
		 CtrClick(212,402); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(208,203)
TimToaDo(203,203)
TimToaDo(198,203)
TimToaDo(192,203)
TimToaDo(188,200)
   EndSwitch
EndFunc
Func DuHon(ByRef $Type)
   Switch $Type
   Case "ManhTan"
TimToaDo(213,207)
TimToaDo(209,203)
TimToaDo(204,200)
TimToaDo(202,196)
TimToaDo(200,192)

	  While KtraThanh("M¹nh T©n") == 0
		 TimToaDo(199,189); Cua Manh Tan
		 CtrClick(439,121); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(182,220)
TimToaDo(183,216)
TimToaDo(185,212)
TimToaDo(189,209)
TimToaDo(194,210)
TimToaDo(197,208)
TimToaDo(200,206)
   Case "XiViu"
	  TimToaDo(214,207)
TimToaDo(217,209)
TimToaDo(219,212)
TimToaDo(220,216)
TimToaDo(222,219)
TimToaDo(223,222)
TimToaDo(226,224)
TimToaDo(228,226)
	  While KtraThanh("Xi V­u Mé") == 0
		 TimToaDo(228,227); Cua SungThanhDaiDoanh
		 CtrClick(652,359); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(181,199)
TimToaDo(186,198)
TimToaDo(187,201)
TimToaDo(189,203)
TimToaDo(193,203)
   EndSwitch
EndFunc
Func YenSon(ByRef $Type)
   Switch $Type
   Case "ManhTan"
	  TimToaDo(224,210)
TimToaDo(227,213)
TimToaDo(230,216)
TimToaDo(229,220)
TimToaDo(230,223)
TimToaDo(234,226)
	  While KtraThanh("M¹nh T©n") == 0
		 TimDuong(239,228); Cua Manh Tan
		 CtrClick(340,528); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(194,189)
TimToaDo(194,192)
TimToaDo(191,196)
TimToaDo(191,198)
TimToaDo(196,202)
TimToaDo(199,204)
   Case "SungThanhDaiDoanh"
	  TimToaDo(219,207)
TimToaDo(214,205)
TimToaDo(210,203)
TimToaDo(205,201)
TimToaDo(201,200)
	  While KtraThanh("Sïng Thµnh doanh") == 0
		 TimDuong(201,200); Cua SungThanhDaiDoanh
		 CtrClick(113,267); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(208,202)

   EndSwitch
EndFunc
Func SungThanhDaiDoanh(ByRef $Type)

   Switch $Type
   Case "TapThuong"
	  TimToaDo(211,201)
TimToaDo(215,198)
TimToaDo(217,197)
   Case "SungThanh"

	  While KtraThanh("Sïng thµnh") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "YenSon"
	  TimToaDo(208,203)
TimToaDo(211,205)
	  While KtraThanh("YÕn S¬n") == 0
		 TimDuong(212,205); Cua Manh Tan
		 CtrClick(437,509); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(206,202)
TimToaDo(211,204)
TimToaDo(215,206)
TimToaDo(219,208)
   Case "BacHai"
	  While KtraThanh("B¾c H¶i") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func BacHai(ByRef $Type)
   Switch $Type
   Case "SungThanhDaiDoanh"
	  While KtraThanh("Sïng Thµnh doanh") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "DongQuan"
	  While KtraThanh("§ång Quan") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func SungThanh(ByRef $Type)
   Switch $Type
   Case "SungThanhDaiDoanh"
	  While KtraThanh("Sïng Thµnh doanh") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "TamSon"
	  While KtraThanh("Tam S¬n") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func TamSon(ByRef $Type)
   Switch $Type
   Case "SungThanh"
	  TimToaDo(188,200)
	  While KtraThanh("Sïng thµnh") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "ManhTan"
	  TimToaDo(193,202)
TimToaDo(198,203)
TimToaDo(203,203)
TimToaDo(208,203)
TimToaDo(213,203)
	  While KtraThanh("M¹nh T©n") == 0
		 TimDuong(214,203); Cua Manh Tan
		 CtrClick(569,217); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(174,200)
TimToaDo(179,199)
TimToaDo(185,200)
TimToaDo(190,202)
TimToaDo(195,202)
TimToaDo(200,204)
   Case "DongQuan"
TimToaDo(183,200)
TimToaDo(178,200)
TimToaDo(173,202)
TimToaDo(169,202)
	  While KtraThanh("§ång Quan") == 0
		 TimDuong(170,203); Cua DongQuan
		 CtrClick(126,409); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(211,200)
TimToaDo(205,201)
TimToaDo(201,203)
TimToaDo(195,205)
TimToaDo(191,207)
   Case "TuyetLongTinh"
	  While KtraThanh("TuyÖt Long lÜnh") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func DongQuan(ByRef $Type)
   Switch $Type
   Case "TayKi"
TimToaDo(192,210)
TimToaDo(190,213)
TimToaDo(186,215)
TimToaDo(181,216)
TimToaDo(175,216)
TimToaDo(170,217)
TimToaDo(169,221)
TimToaDo(169,224)
TimToaDo(166,228)
TimToaDo(162,227)
	  While KtraThanh("T©y Kú") == 0
		 TimDuong(158,229); Cua TayKi
		 CtrClick(412,511); chuyen map
 	 	 Sleep(2000)
	  WEnd
TimToaDo(202,203)
TimToaDo(197,201)
TimToaDo(194,199)
TimToaDo(189,197)
TimToaDo(182,193)
   Case "BacHai"
	  While KtraThanh("B¾c H¶i") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "TamSon"
TimToaDo(191,207)
TimToaDo(194,205)
TimToaDo(199,204)
TimToaDo(203,202)
TimToaDo(208,200)
TimToaDo(213,199)
TimToaDo(216,197)
	  While KtraThanh("Tam S¬n") == 0
		 TimDuong(215,196); Cua TamSon
		 CtrClick(603,221); chuyen map
 	 	 Sleep(2000)
	  WEnd
	 TimToaDo(174,202)
TimToaDo(178,201)
TimToaDo(183,200)
TimToaDo(188,200)
   Case "ChanNuiConLuan"
	  TimToaDo(193,209)
TimToaDo(194,211)
TimToaDo(196,214)
TimToaDo(197,219)
TimToaDo(195,222)
TimToaDo(197,226)
TimToaDo(196,230)
	  While KtraThanh("Ch©n nói C«n L«n") == 0
		 TimDuong(194,232); Cua ChanNuiConLuan
		 CtrClick(132,286); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(243,201)
TimToaDo(238,198)
TimToaDo(232,196)
TimToaDo(227,196)
TimToaDo(221,195)
TimToaDo(216,192)

   EndSwitch
EndFunc
Func ChanNuiConLuan(ByRef $Type)
   Switch $Type
   Case "DongQuan"
	  TimToaDo(217,193)
TimToaDo(220,195)
TimToaDo(225,196)
TimToaDo(229,196)
TimToaDo(233,196)
TimToaDo(239,199)
TimToaDo(243,201)
TimToaDo(246,201)
	  While KtraThanh("§ång Quan") == 0
		 TimDuong(247,201); Cua DongQuan
		 CtrClick(530,280); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(198,229)
TimToaDo(196,225)
TimToaDo(196,220)
TimToaDo(195,215)
TimToaDo(194,211)
TimToaDo(192,208)
   Case "NgocHuCung"
	  TimToaDo(212,189)
	  While KtraThanh("Ngäc H­ cung") == 0
		 TimDuong(210,188); Cua NgocHuCung
		 CtrClick(103,136); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(219,202)
   EndSwitch
EndFunc
Func NgocHuCung(ByRef $Type)
   Switch $Type
   Case "ChanNuiConLuan"
TimToaDo(217,201)
TimToaDo(220,202)
	  While KtraThanh("Ch©n nói C«n L«n") == 0
		 TimDuong(222,204); Cua ChanNuiConLuan
		 CtrClick(604,368); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(214,191)
   Case "TayConLuan"
	  While KtraThanh("T©y C«n L«n") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "ThuDuongSon"
	  While KtraThanh("Thñ D­¬ng s¬n") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "TapThuong"
TimToaDo(214,202)
TimToaDo(209,201)
TimToaDo(205,202)
TimToaDo(201,201)
   EndSwitch
EndFunc
Func TayConLuan(ByRef $Type)
   Switch $Type
   Case "NgocHuCung"
	  While KtraThanh("Ngäc H­ cung") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func ThuDuongSon(ByRef $Type)
   Switch $Type
   Case "NgocHuCung"
	  While KtraThanh("Ngäc H­ cung") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   EndSwitch
EndFunc
Func TayKi(ByRef $Type)
   Switch $Type
   Case "HoangMac"
	  While KtraThanh("Hoang m¹c") == 0
		 TimDuong(158,229); Cua TayKi
		 CtrClick(412,511); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "DongQuan"
TimToaDo(186,195)
TimToaDo(191,198)
TimToaDo(196,201)
TimToaDo(201,202)
TimToaDo(204,205)
;TimToaDo(190,213)
;TimToaDo(193,210)
	  While KtraThanh("§ång Quan") == 0
		 TimDuong(206,206); Cua DongQuan
		 CtrClick(608,334); chuyen map
 	 	 Sleep(2000)
	  WEnd
	  TimToaDo(163,226)
TimToaDo(168,226)
TimToaDo(170,222)
TimToaDo(173,218)
TimToaDo(178,216)
TimToaDo(184,215)
   Case "BangXuyen"
	  While KtraThanh("Ngäc TuyÒn") == 0
		 TimDuong(195,181); Cua Manh Tan
		 CtrClick(158,118); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "KySon"
	  TimToaDo(182,193)
	  TimToaDo(191,197)
	  TimToaDo(201,202)
	  While KtraThanh("Kú S¬n") == 0
		 TimDuong(199,209); Cua KySon
		 CtrClick(273,569); chuyen map
 	 	 Sleep(2000)
	  WEnd
   Case "TapThuong"
	  TimToaDo(185,192)
TimToaDo(190,189)
TimToaDo(194,188)
TimToaDo(195,189)
   EndSwitch
EndFunc