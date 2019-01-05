#include <windows.h>
#include <iostream>
using namespace std;
int main() {
	while (true)
	{	
		char a[1024] = " Phong Than_Dong Thien Phuc Dia";
		/*char b[1024];
		GetConsoleTitle(a, 1024);
		
		wsprintf(b, "%d/%d",
			GetTickCount(),
			GetCurrentProcessId());
		SetConsoleTitle(b);*/
		HWND hwndFound = FindWindow(NULL, a);
		cout << hwndFound<<endl;
		Sleep(3000);
	}
		system("pause");
	return 0;
}