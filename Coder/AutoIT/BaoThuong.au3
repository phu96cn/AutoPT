;#include <Func.au3>
#include <AutoDiChuyen.au3>
;Send(MemoryRead($nvchieuhon,"char[100]"))


; <HyperLinkWorldPos="����[21,221,198]">-T�p th��ng c�n <c=g>2<c> <c=r>C�<c>
;" <HyperLinkWorldPos="����o21,221,198]">-T�p th��ng c�n <c=g>2<c> <c=r>Nham<c>"
; <HyperLinkWorldPos="����o21,221,198]">-T�p th��ng c�n <c=g>4<c> <c=r>H�ng<c>
Func TrieuCa_TayKi()
TrieuCa("ManhTan")
ManhTan("TamSon")
TamSon("DongQuan")
DongQuan("TayKi")
EndFunc
Func TayKi_TrieuCa()
TayKi("DongQuan")
DongQuan("TamSon")
TamSon("ManhTan")
ManhTan("TrieuCa")
EndFunc
Func TrieuCa_SungThanh()
TrieuCa("ManhTan")
ManhTan("YenSon")
YenSon("SungThanhDaiDoanh")
EndFunc
Func SungThanh_TrieuCa()
SungThanhDaiDoanh("YenSon")
YenSon("ManhTan")
ManhTan("TrieuCa")
EndFunc
Func TrieuCa_Xiviu()
TrieuCa("ManhTan")
ManhTan("DuHon")
DuHon("XiViu")
EndFunc
Func Xiviu_TrieuCa()
XiViu("DuHon")
DuHon("ManhTan")
ManhTan("TrieuCa")
EndFunc
Func TrieuCa_NgocHuCung()
TrieuCa("ManhTan")
ManhTan("TamSon")
TamSon("DongQuan")
DongQuan("ChanNuiConLuan")
EndFunc
Func NgocHuCung_TrieuCa()
SungThanhDaiDoanh("YenSon")
YenSon("ManhTan")
ManhTan("TrieuCa")
EndFunc