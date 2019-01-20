#include <windows.h>
#include <stdio.h>
#include <String>
#include <iostream>
#include "define.h"
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
string ReadMemoryS(HWND hwnd, DWORD Address){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	char Value[1024];
	if (!ReadProcessMemory(handle, (LPVOID)Address, Value, 4, NULL)) {
		cout << "ReadProcessMemory FAILED" << endl;
	}
	return Value;
}
int ReadMemoryI(HWND hwnd, DWORD Address){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	int Value ;
	if (!ReadProcessMemory(handle, (LPVOID)Address, &Value, 7, NULL)) {
		cout << "ReadProcessMemory FAILED" << endl;
	}
	return Value;
}

bool Write_MemoryI(HWND hwnd, DWORD Address, int Value){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	if (WriteProcessMemory(handle, (LPVOID)Address, &Value, sizeof(Value), NULL)){
		return true;
	}
	return false;
}
bool Write_MemoryS(HWND hwnd, DWORD Address){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	char Value[4] = "215";
	if (WriteProcessMemory(handle, (LPVOID)Address, &Value, sizeof(Value), NULL)){
		return true;
	}
	return false;
}
void Test(){
	int a=5;
	char b = 'a';
	if (typeid(a) == typeid(int)){
		cout << "1";
	}
	if (typeid(b) == typeid(int)){
		cout << "2";
	}else
	if (typeid(b) == typeid(char)){
		cout << "3";
	}
	else{
		cout << "0";
	}
}
int main() {
	HWND hwn = FindWindow(NULL, tile_PhongThan);
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
	//	ReadMem(hwn);
	//	STRING = 1;
		//ReadMemory(hwn, AddressTen);
		cout << ReadMemoryS(hwn, M_ToadoX);
		cout << Write_MemoryS(hwn, M_ToadoX);
//		Sleep(3000);
		//Test();
		system("pause");
		
	}
		
	return 0;
}