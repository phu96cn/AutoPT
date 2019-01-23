#pragma once
#include "Memory.h"

//Func---------------------
string ReadMemoryS(HWND hwnd, DWORD Address){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	char Value[1024];
	if (!ReadProcessMemory(handle, (LPVOID)Address, Value, 4, NULL)) {

	}
	return Value;
}
int ReadMemoryI(HWND hwnd, DWORD Address){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	int Value;
	if (!ReadProcessMemory(handle, (LPVOID)Address, &Value, 7, NULL)) {

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
bool Write_MemoryS(HWND hwnd, DWORD Address, char Value[]){
	DWORD procID;
	GetWindowThreadProcessId(hwnd, &procID);
	HANDLE handle = OpenProcess(PROCESS_ALL_ACCESS, FALSE, procID);
	if (WriteProcessMemory(handle, (LPVOID)Address, Value, sizeof(Value), NULL)){
		return true;
	}
	return false;
}