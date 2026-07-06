section .text  
	global _start  
  
_start:  
  
	mov eax, [var1]
	xor eax, eax
	mov [result], eax  
	  
	mov ebx, 0  
	mov eax, 1  
	int 0x80  
  
section .bss  
	result resd 1  
  
section .data  
	var1 dd 10

