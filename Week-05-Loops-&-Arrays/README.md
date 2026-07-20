## Loops and Arrays
### Assignment Solution
#### Sections
1. [Flowchart](#Flowchart)
2. [Code](#Code)
3. [Output](#Output)
4. [Challenges](#Challenges)
5. [Resources](#Resources)

Perform the following tasks:
1. Generate a counter using the `EBX` register, debug the code, and explain your findings. Use the _Counter (Optimized Version)_ from the lecture notes. (**2 points**)
2. Calculate the final number of the first 10 Fibonacci numbers starting from 0. The result should be equal to **55**. (**2 points**)
3. Define an integer array of length 3 and determine the largest element in the array. Use `gdb` to debug the code and verify that it works correctly and meets the requirements. (**6 points**)
---
# Flowchart
### Task 1
Using counter (optimized version) from the Loops and Arrays lecture notes. We're incorporating EBX a a counter so that.
# Code
### Task 1: EBX counter
```
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
```
### Task 2: Fibonacci sum
```
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

```
### Task 3: Largest Array Element
Define an integer array of length 3 and determine the largest element in the array
```
section .text
	global _start
	
_start:
	mov eax, array
	mov ebx, [array]
	mov ecx, 3
	
check:
	cmp ebx, [eax]
	jge next_cmp
	mov ebx, [eax]
	
next_cmp:
	add eax, 4
	loop check
	mov [large], ebx
	
	mov eax, 1
	mov ebx, 0
	int 0x80
	
section .data
	array dd 8, 16, 24
	
segment .bss
	large resd 1
```
# Output
Text
```

```

Screenshot
![Assembly program output](./w#output#.png)
# Challenges

# Resources
Additional
1.  
