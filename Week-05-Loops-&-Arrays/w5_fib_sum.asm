section .text
	global _start
	
_start:
	mov eax, 0 ; seeded num1
	mov ebx, 1 ; seeded num2
	mov ecx, 10 ; counter

fib:
	push eax
	add eax, ebx
	pop ebx
	loop fib
	
	mov eax, 1
	mov ebx, 0
	int 0x80
