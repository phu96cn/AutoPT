//#include <windows.h>
#include <stdio.h>

#include "Func.h"
#include "Memory.h"
#include "CtrMouse.h"
#include "CtrKeyboard.h"
#define _CRT_SECURE_NO_WARNINGS
using namespace std;

void ControlClick(HWND hwnd)
{
	//Mclick(hwnd, 662, 175, 500);
	//Mclick(hwnd, 395, 383, 500);
	Chaydentoado(hwnd,"216","200");
}

void SearchWay(HWND hwnd, char Valuex[], char Valuey[]){
	Write_MemoryS(hwnd, M_ToadoX, Valuex);
	Write_MemoryS(hwnd, M_ToadoY, Valuey);
	MclickDB(hwnd, 0, 1); //click nut tim duong
}
void Test(char Valuex[]){
	printf("%s", Valuex);
}
void Test2(char Valuex[]){
	Test(Valuex);
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
		SetWindow(hwn);
	//	
		//ControlClick(hwn);
		Mclick(hwn, 430, 484);
	//	ReadMem(hwn);
	//	STRING = 1;
		//ReadMemory(hwn, AddressTen);
		//cout << ReadMemoryS(hwn, M_ToadoX);
		//cout << Write_MemoryS(hwn, M_ToadoX,"215");

		//printf("%x \n",M_ToadoY);
//		Sleep(3000);
		//Test2("255");
		system("pause");
		
	}
		
	return 0;
}