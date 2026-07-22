section .text
    global _start

_start:
    mov eax, 8
    call num_chk

    mov eax, 1
    mov ebx, 0
    int 0x80

num_chk:
    test eax, 1
    jz even_num

odd_num:
    mov eax, 4
    mov ebx, 1
    mov ecx, odd_msg
    mov edx, odd_len
    int 0x80
    ret

even_num:
    mov eax, 4
    mov ebx, 1
    mov ecx, even_msg
    mov edx, even_len
    int 0x80
    ret

section .data
    odd_msg db 'odd number', 0x0A
    odd_len equ $ - odd_msg

    even_msg db 'even number', 0x0A
    even_len equ $ - even_msg
