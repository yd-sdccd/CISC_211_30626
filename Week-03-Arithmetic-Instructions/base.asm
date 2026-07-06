section .text
	global _start
	
_start:
	
	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
sections .bss
	result resd 1

section .data
	var1 dd 2
	var2 dd 4
	var3 dd 6
	var4 dd 8
