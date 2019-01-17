#include <windows.h>
#include <iostream>
#define _CRT_SECURE_NO_WARNINGS
using namespace std;
LPARAM pt(HWND hwnd, int x, int y) {
	RECT    r;
	GetWindowRect(hwnd, &r);
	//cout << r.left <<"  "<<r.top << endl;
	POINT   ptc;
	ptc.x = x - 3;
	ptc.y = y - 25;
	//ScreenToClient(hwnd, &ptc);
	//cout << ptc.x <<"  "<< ptc.y<<endl;
	LPARAM  lparam = MAKELPARAM(ptc.x, ptc.y);
	return lparam;
}
void Mclick(HWND hwnd, int x, int y,int sl) {
	PostMessage(hwnd, WM_LBUTTONDOWN, MK_LBUTTON, pt(hwnd, x, y));
	Sleep(sl);
	PostMessage(hwnd, WM_LBUTTONUP, MK_LBUTTON, pt(hwnd, x, y));
	Sleep(sl);
}
void MclickDB(HWND hwnd, int x, int y) {
	PostMessage(hwnd, WM_LBUTTONDBLCLK, MK_LBUTTON, pt(hwnd, x, y));
	//PostMessage(hwnd, WM_LBUTTONUP, MK_LBUTTON, pt(hwnd, x, y));
}
void Mmove(HWND hwnd, int x, int y, int sl) {
	PostMessage(hwnd, WM_MOUSEMOVE, MK_CONTROL, pt(hwnd, x, y));
	Sleep(sl);
}
void ControlClick(HWND hwnd)
{
	//Mclick(hwnd, 662, 175, 500);
	Mmove(hwnd, 662, 175, 500);
	Mclick(hwnd, 662, 175,500);
	//Mclick(hwnd, 395, 383, 500);
}
void SetWindow(HWND hwnd){
	RECT    r;
	GetWindowRect(hwnd, &r);
	MoveWindow(hwnd, 0, 0, r.right - r.left, r.bottom - r.top, true);
		cout << r.left << "  " << r.top << endl;
}
int main() {
	char a[1024] = " Phong Than_Dong Thien Phuc Dia";
	HWND hwn=FindWindow(NULL, a);;
	while (true)
	{		
		/*char b[1024];
		GetConsoleTitle(a, 1024);
		
		wsprintf(b, "%d/%d",
			GetTickCount(),
			GetCurrentProcessId());
		SetConsoleTitle(b);*/
	//	
		//ControlClick(hwn);
		SetWindow(hwn);
		Sleep(3000);
		system("pause");
	}
		
	return 0;
}