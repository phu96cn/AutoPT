#include <NomadMemory.au3>
$hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
$Pid=WinGetProcess ($hWnd)
Global $hw= _MemoryOpen($Pid)
;BaseAddress
$baseAddress_nhaptd=0x00761340; offX=314,offY=524
$Add_nhaptdX=_MemoryRead($baseAddress_nhaptd,$hw) + 0x314 ;Address input X
$Add_nhaptdY=_MemoryRead($baseAddress_nhaptd,$hw) + 0x524 ;Address input Y
$Add_toadonvX=0xed8e30 ;Address toado nhan vat X
$Add_toadonvY=0xed8e34 ;Address toado nhan vat Y

Func CtrClick(ByRef $ctrM_x,ByRef $ctrM_y)
   ControlClick($hWnd, "", "","left",1,$ctrM_x-3,$ctrM_y-25)
   Sleep(2000)
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
   MemoryWrite($Add_nhaptdX,$ValueX,"CHAR[20]")
   MemoryWrite($Add_nhaptdY,$ValueY,"CHAR[20]")
   CtrClick(747,177)
   Sleep(1000)
   While (_MemoryRead(0x759CD1,$hw))
	  Sleep(2000)
   WEnd
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
Start()
;CtrClick(528,362)
;TimDuong(209,197)
Func Start()
   ;CtrClick(390,378)
   ;CtrClick(310,378)
   ;CtrClick(310,378)
   ;CtrClick(97,602)
   CtrClick(623,120)
   CtrClick(518,150)
   TimDuong(209,197);TuHang
   CtrClick(590,228)
   Sleep(3000)
   CtrClick(300,328) ; UI 1
   CtrClick(390,378)
   CtrClick(390,378)
   TimDuong(216,201)
   CtrClick(387,387) ;xac nhan mid
   CtrClick(300,328)
   CtrClick(300,328)
   TimDuong(217,200) ;Thukho
   CtrClick(581,310)
   CtrClick(300,328)
   CtrClick(300,328)
   TimDuong(209,197)
   CtrClick(590,228)
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(320,378) ;btxacnhan ben
   CtrClick(320,378)
   TimDuong(213,197) ; Xich Tinh Tu
   CtrClick(578,324) ; Click xichtinh
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(300,328)
   CtrClick(578,324) ; Click xichtinh
   CtrClick(300,328) ; UI 1
   CtrClick(320,378) ;btxacnhan
   CtrClick(387,387) ;xac nhan mid
   TimDuong(215,194) ;Van trung Tu
   CtrClick(561,334) ; Click trung
   CtrClick(300,328) ; UI 1
   CtrClick(300,328) ; UI 1
   CtrClick(561,334) ; Click trung
   CtrClick(300,328) ; UI 1
   CtrClick(320,378) ;btxacnhan ben
   CtrClick(320,378) ;btxacnhan ben
   TimDuong(209,197) ;TuHang
   CtrClick(590,228) ;Click TuHang
   CtrClick(300,328) ; UI 1
   CtrClick(300,328) ; UI 1
   TimDuong(219,203) ;Vo su
   CtrClick(299,255) ;Click Vosu
   CtrClick(300,328) ; UI 1
   CtrClick(320,378) ;btxacnhan ben
   CtrClick(582,221) ;mau1
   CtrClick(528,362) ;btxacnhan
   CtrClick(582,265) ;mau1
   CtrClick(528,409) ;btxacnhan
   CtrClick(044,226) ;mua bi kip;
   CtrClick(062,366) ;btxacnhan
   CtrClick(748,563) ;Dong cuahang
   TimDuong(219,199) ;ThoDong
   CtrClick(603,333) ;Click ThoDong
   CtrClick(302,328) ;
   CtrClick(302,328) ;
   CtrClick(603,333) ;Click ThoDong
   CtrClick(302,328) ;
   CtrClick(320,378) ;btxacnhan ben
   CtrClick(320,378) ;btxacnhan ben
   TimDuong(213,205) ;KimHa
   CtrClick(366,317) ;Click KimHa
   CtrClick(300,328) ; UI 1
   CtrClick(300,328) ; UI 1
   TimDuong(215,194) ;Van trung Tu
   CtrClick(561,334) ; Click trung
   CtrClick(300,328) ; UI 1
   CtrClick(300,328) ; UI 1
   CtrClick(561,334) ; Click trung
   CtrClick(300,328) ; UI 1
   CtrClick(320,378) ;btxacnhan ben
   CtrClick(387,387) ;xac nhan mid
   TimDuong(207,196) ;LinhBao
   CtrClick(334,203) ;Click LinhBao
   CtrClick(300,328) ; UI 1
   ;CtrClick(364,329) ; Chua click duoc dong nhiem vu 2 1 3
   ;CtrClick(364,329) ;Ketthuc khao nghiem
   ;TimDuong(217,200) ;Thukho
   ;CtrClick(581,310)

   EndFunc

