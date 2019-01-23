#pragma once
#include "define.h"
string ReadMemoryS(HWND hwnd, DWORD Address);
int ReadMemoryI(HWND hwnd, DWORD Address);
bool Write_MemoryI(HWND hwnd, DWORD Address, int Value);
bool Write_MemoryS(HWND hwnd, DWORD Address, char Value[]);