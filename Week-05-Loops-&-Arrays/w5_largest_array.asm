section .text
	global _start
	
_start:
	mov eax, array
	mov ebx, [array]
	mov ecx, 3
	
check:
	cmp ebx, [eax]
	jge next_cmp
	mov ebx, [eax]
	
next_cmp:
	add eax, 4
	loop check
	mov [large], ebx
	
	mov eax, 1
	mov ebx, 0
	int 0x80
	
section .data
	array dd 8, 16, 24
	
segment .bss
	large resd 1

