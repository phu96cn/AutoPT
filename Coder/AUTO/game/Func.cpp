#pragma once
#include "Func.h"
#include "Memory.h"
#include "CtrMouse.h"

//Func-----------------

void SetWindow(HWND hwnd){
	RECT    r;
	GetWindowRect(hwnd, &r);
	MoveWindow(hwnd, 0, 0, r.right - r.left, r.bottom - r.top, true);
}
void Chaydentoado(HWND hwnd,char x[],char y[]){

	Write_MemoryS(hwnd,M_ToadoX, x);
	Write_MemoryS(hwnd, M_ToadoY, y);
	Mmove(hwnd, UI_btTimX, UI_btTimY);
	Sleep(1000);
	Mclick(hwnd, UI_btTimX, UI_btTimY);
}