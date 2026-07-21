section .text
    global _start

_start:
    mov eax, 0
	
increase:
	inc eax
	
test_even:
	test eax, 1
	jnz increase
	
print:
	mov [tmp], eax
	push eax
	mov eax, 4
	mov ebx, 1
	mov ecx, tmp
	mov edx, 1
	int 0x80
	
	mov eax, 4
	mov ebx, 1
	mov ecx, space
	mov edx, 1
	int 0x80
	
check_limit:
	pop eax
	cmp eax, 20
	jl increase
	
exit:
	mov eax, 1
    int 0x80
	
segment .bss
        tmp resb 1

section .data
    space dd 10
