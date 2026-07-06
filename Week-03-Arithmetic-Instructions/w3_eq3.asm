section .text
	global _start
	
_start:
	
	mov eax, [var1]
	neg eax
	imul eax, [var2]
	add eax, [var3]
	mov [result], eax
	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
section .bss
	result resd 1

section .data
	var1 dd 2
	var2 dd 4
	var3 dd 6
	var4 dd 8
