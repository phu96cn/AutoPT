#include "CtrMouse.h"

//Func----------
LPARAM pt(int x, int y) {
	POINT   ptc;
	ptc.x = x - 3;
	ptc.y = y - 25;
	LPARAM  lparam = MAKELPARAM(ptc.x, ptc.y);
	return lparam;
}
void Mclick(HWND hwnd, int x, int y) {

	PostMessage(hwnd, WM_LBUTTONDOWN, MK_LBUTTON, pt(x, y));
	Sleep(0);
	PostMessage(hwnd, WM_LBUTTONUP, MK_LBUTTON, pt(x, y));
}
void MclickDB(HWND hwnd, int x, int y) {
	PostMessage(hwnd, WM_LBUTTONDBLCLK, MK_LBUTTON, pt(x, y));
}
void Mmove(HWND hwnd, int x, int y) {
	PostMessage(hwnd, WM_MOUSEMOVE, MK_CONTROL, pt(x, y));
}