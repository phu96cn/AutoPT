Test()
Func Test()
   Local $hWnd;

   $hWnds = GetHandle()
   MsgBox("", "", $hWnds)
   EndFunc
Func GetHandle()
   $hWnd = WinGetHandle(" Phong Than_Dong Thien Phuc Dia")
   Return $hWnd
   EndFunc
