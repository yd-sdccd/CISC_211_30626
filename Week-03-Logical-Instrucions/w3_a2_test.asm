section .text  
	global _start  
  
_start:  
  
	mov eax, [var1] 
	test eax, 1
	jz even_number
	  
	mov dword [result], 1
	jmp exit_program  
  
even_number:  
	mov dword [result], 0
  
exit_program:  
	mov ebx, 0  
	mov eax, 1  
	int 0x80  
  
section .bss  
	result resd 1  
  
section .data  
	var1 dd 10
