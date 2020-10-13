.386 
.model flat, c 
printf proto arg1:ptr byte, printlist:vararg
option casemap:none 
PUBLIC pruklad 
.data 
_T1 dword 0 
_T2 dword 0
_T3 dword 0 
_T4 dword 0
_T5 dword 0
_K EQU 6DD02316h
Msg db 'Result in Asm(from_Asm): %d', 0
.code
pruklad PROC 
push ebp 
mov ebp,esp

;T1 = D2*4
mov eax, dword ptr[ebp+12]
mov ecx,4
imul ecx 
mov _T1,eax

;T2 = B2/4 
mov eax, dword ptr [ebp+8]
mov ecx, 4
idiv ecx
mov _T2,eax

;T3 = K+T2
mov eax,_K
add eax,_T2
mov _T3,eax

;T4 = T3-T1
mov eax,_T3
sub eax,_T1
mov _T4,eax

;T5 = T4-E1
mov eax,_T4
sub ax, word ptr[ebp+16]
mov _T5,eax

pop ebp
invoke printf, addr Msg, eax
ret
pruklad ENDp
END