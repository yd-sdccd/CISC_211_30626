### Question 1:

I added two lines to the end of _foobar, before `ret`. 
```asm
mov esp, ebp
pop ebp

ret
```
The original code block had the error:
./build.sh: line 4: 5602 Segmentation fault (core dumped) ./$1

This is caused by ret being sent to an invalid address due to the additional items stored on the stack.
Restored ESP to the original location of EBP and then repopulated EBP, removing it's item from the stack. Now ESP is back to where the return address was stored in the stack. When ret is called, it looks to the correct location in the stack and returns to _start.
The correct output is 2028.

### Question 4: 
Pretty much the same as the previous file management assignment. ECX determines file permissions, 0600o is for -rw in linux.

```asm

section .data
     filename db 'file.txt', 0h

section .text
       global _start
     
_start:
       ;file create
      mov eax, 8
 mov ebx, filename
     mov ecx, 0600o
    int 0x80
       mov [fd_out], eax

   ;file close
   mov eax, 6
      mov ebx, [fd_out]
  int 0x80

     mov eax, 1
        mov ebx, 0
   int 0x80

section .bss
    fd_out resd 1
```
