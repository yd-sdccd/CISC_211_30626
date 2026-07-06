section .text
        global _start

_start:
        ; use this space for the main body of your program
        ; ======== write your code below ===========

		mov eax, [var1] ; load var1 into eax
		add eax, [var2] ; add var2 into eax
		mov [result],g eax ; store result into result

        ; ======== write your code above ===========

        mov eax,1      ; set eax register to 1 (do not remove this line)
        int 0x80       ; interrupt 0x80 (do not remove this line)

segment .bss
        ; use this space for uninitialized variable (result)
        
        result resd 1 ; reservs one 32-bit value

segment .data
        ; use this space for initialized variables (var1 and var2)
        
        var1 dd 10 ; initialized to 10
        var2 dd 15 ; initialized o 15
        
