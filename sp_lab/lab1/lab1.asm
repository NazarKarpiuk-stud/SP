.586 
.model flat, stdcall 
option casemap: none 

include C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\include\windows.inc
include C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\include\kernel32.inc
include C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\include\masm32.inc
include C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\include\debug.inc
include C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\include\user32.inc
 
includelib C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\lib\kernel32.lib 
includelib C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\lib\masm32.lib 
includelib C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\lib\debug.lib
includelib C:\sp2019_soft__12345-master\portable_masm32\masm32p\masm32\lib\user32.lib

.data
arr dd -1,0,1,2,3,4,5,6,7,8
b dd -1
d dd 4
count dd 0
.code
	start:
	mov ecx,10
	mov edx,0
mitka:
	mov eax,[arr+ecx*4-4]
	cmp ecx,0
	je mitka1
	dec ecx
	cmp eax,0
	jl mitka
	cmp b,eax
	jg mitka
	cmp eax,d
	jg mitka
	inc count
mitka1:
	cmp ecx,0
	jg mitka
	PrintDec count, "Counter value"
	invoke ExitProcess, NULL
end start