#include "CtrKeyboard.h"

//Func--------------
void SendKey(HWND hwnd){
	{
		//SendMessage(hwnd, EM_REPLACESEL, (WPARAM)TRUE, (LPARAM)text);
		SendMessage(hwnd, WM_KEYDOWN, VK_F5, 1);
		Sleep(500);
		SendMessage(hwnd, WM_KEYUP, VK_F5, 1);
		//return 1;
	}
}