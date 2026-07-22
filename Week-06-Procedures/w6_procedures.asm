section .text
	global _start
	
_start:
	mov eax, 'A'
	mov ecx, 26
	
increment:
	call print_char
	inc eax
	loop increment

exit:
	mov eax, 1
	mov ebx, 0
	int 0x80
	
print_char:
	push ecx
	push eax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, esp
	mov edx, 1
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, new_line
	mov edx, 1
	int 0x80
	
	pop eax
	pop ecx
	ret
	
section .data 
	new_line db 10
	
