section .text
    global _start

_start:
    mov ecx,10  ;ecx is a counter register
    mov ebx, 0 ; ebx as counter
        
    label:
    inc ebx
    loop label

    mov eax,1
    int 0x80