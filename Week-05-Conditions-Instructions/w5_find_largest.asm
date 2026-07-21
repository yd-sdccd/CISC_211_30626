section .text
    global _start

_start:
    mov eax, [num1]
    cmp eax, [num2]
    jg cmp3
    mov eax, [num2]

cmp3:
    cmp eax, [num3]
    jg cmp4
    mov eax, [num3]
    
cmp4:
	cmp eax, [num4]
	jg cmp5
	mov eax, [num4]
	
cmp5:
	cmp eax, [num5]
	jg label
	mov eax, [num5]

label:
	mov [largest], eax
	
exit:
        mov ebx, 0
        mov eax,1
        int 0x80

section .data
        num1 dd 30
        num2 dd 20
        num3 dd 10
        num4 dd 40
        num5 dd 50

segment .bss
        largest resb 2
