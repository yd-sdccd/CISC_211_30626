### Q1
Calculate `result = (var1 + 2) / (var3 - var2)`
- Comment values of `result`, `var1` `var2`, `var3`
- Display `result` variable on console screen in ACII representation
- Identify which registers are used to store the quotient and remainder. Include the quotient and remainder values saved in the registers.
- `gdb` to verify the table and screenshot.
#### Code
```asm
section .text
        global _start

_start:

; var 1 = 2
; var 2 = 4
; var 3 = 6
; result = (var1 + 2) / (var3 - var2)
;result = 2

        mov eax,[var1]
        add eax,2
        mov ebx,[var3]
        sub ebx,[var2]

        xor edx,edx
        div ebx

        mov [result],eax

        mov eax,1
        int 0x80

section .data
        var1 DD 2
        var2 DD 4
        var3 DD 6

segment .bss
        result resd 1
```
![[Pasted image 20260710115220.png]]
### Q2
Simplify `Y = a.b + a'.b + a.b` with a kmap table

| a   | b   | y   |
| --- | --- | --- |
| 0   | 0   | 0   |
| 0   | 1   | 1   |
| 1   | 0   | 0   |
| 1   | 1   | 1   |

| a/b | 0   | 1     |
| --- | --- | ----- |
| 0   | 0   | ***1*** |
| 1   | 0   | ***1*** |
`Y = b`
### Q3
Identify if number is odd or even
- No `AND` or `OR`
- Show thought process and approach used to solve the problem
- Using design, write code, include comments
- Display "odd number" or "even number"

```asm
section .text
        global _start

_start:
        mov eax,8
        test eax,1
        jz evnn

        mov eax,4
        mov ebx,1
        mov ecx,odd_msg
        mov edx,odd_len
        int 0x80

        mov eax,1
        int 0x80

evnn:
        mov eax,4
        mov ebx,1
        mov ecx,even_msg
        mov edx,even_len
        int 0x80

        mov eax,1
        int 0x80

section .data
        odd_msg db 'odd number', 0x0A
        odd_len equ $ - odd_msg

        even_msg db 'even number', 0x0A
        even_len equ $ - even_msg
```
![[Pasted image 20260710115445.png]]
