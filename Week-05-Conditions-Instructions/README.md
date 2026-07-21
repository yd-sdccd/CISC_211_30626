## Conditions Instructions
### Assignment Solution
#### Sections
1. [Flowchart](#Flowchart)
2. [Code](#Code)
3. [Output](#Output)
4. [Challenges](#Challenges)
5. [Resources](#Resources)

Perform the following tasks:
1. Generate a sequence of either even or odd numbers up to 20.
2. Find the largest number among **five integer values**. Use initialized variables for the input values and store the result in an uninitialized variable named `largest`.
I recommend using the following debugging parameters to display the results. See the lecture materials for additional explanations.

```
layout asm
layout regs
watch (int) largest
break _start
run
stepi
```
# Flowchart
### Generate a sequence of either even or odd numbers up to 20
For this project I'm going to use the incremental example from the Conditional Instructions lecture that increments and prints the corresponding ASCII character, and also use portions of the Logical Instructions assignment to check if even or odd.
### Find the largest number among five integer values.
Use initialized variables for the input values and store the result in an uninitiated variable named `largest`.

Using largest number example from Conditional Instructions lecture.
# Code
### Even number generator
```
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
```
### Find largest number
```
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
```
# Output
### Task 1: Even Num Gen
![Assembly program output](./w5output1.png)
![Assembly program output](./w5output2.png)
### Task 2: Find largest
![Assembly program output](./w5output3.png)
# Challenges

# Resources
Additional
1. Conditions Instructions, Danish Khan  https://d-khan.github.io/cisc-courses/assembly/lectures/condition_instructions/
