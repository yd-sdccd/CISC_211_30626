## File Management
### Assignment Solution
#### Sections
1. [Flowchart](##Flowchart)
2. [Code and Output](##Code)
3. [Challenges](#Challenges)
4. [Resources](#Resources)

Task
1. Create a text-based file called `quotes.txt` and add the following contents. (**4 marks**)

    > _To be, or not to be, that is the question._
    > 
    > _A fool thinks himself to be wise, but a wise man knows himself to be a fool._
    

2. Append the following quotes to the same file. (**5 marks**)

    > _Better three hours too soon than a minute too late._
    > 
    > _No legacy is so rich as honesty._
## Flowchart
To update a file, perform the following tasks:
- Put the system call `sys_lseek()` number `19` in the `EAX` register.
- Put the file descriptor in the `EBX` register.
- Put the offset value in the `ECX` register.
- Put the reference position for the offset in the `EDX` register.

The reference position can be one of the following:
- Beginning of file: `0`
- Current position: `1`
- End of file: `2`

The system call returns an error code in the `EAX` register if an error occurs.
quotes.txt

Before this task I hadn't really considered the placement of start until I saw the examples in the file management lecture. Most of this program is the example's stitched together.

<img src="week7_flowchart.png" alt="Flowchart" width="400">

## Code
quotes.txt
```txt
_To be, or not to be, that is the question._

_A fool thinks himself to be wise, but a wise man knows himself to be a fool._
```

w7_file_management
```asm
section .data
	filename db 'quotes.txt', 0h
	
	contents db ' To be, or not to be, that is the question.', 0Ah, 0Ah
		db 'A fool thinks himself to be wise, but the wise man knows himself to be a fool.', 0Ah, 0Ah
	contents_len equ $ - contents
	
	append_contents db 'Better three hours too soon than a minute too late.', 0Ah, 0Ah
		db 'No legacy is so rich as honesty.', 0Ah
	append_len equ $ - append_contents
	
section .text
	global _start
	
_start:
	;file create
	mov eax, 8
	mov ebx, filename
	mov ecx, 0777o
	int 0x80
	mov [fd_out], eax
	
	;file write
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, contents
	mov edx, contents_len
	int 0x80
	
	;file close
	mov eax, 6
	mov ebx, [fd_out]
	int 0x80
	
	;file open
	mov eax, 5
	mov ebx, filename
	mov ecx, 1
	mov edx, 0777o
	int 0x80
	mov [fd_out], eax
	
	;file seek
	mov eax, 19
	mov ebx, [fd_out]
	mov ecx, 0
	mov edx, 2
	int 0x80
	
	;file append
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, append_contents
	mov edx, append_len
	int 0x80
	
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

<img src="w7_output#.png" alt="Output" width="300">
## Challenges
I got the errors 
./w7_file_management.asm:5: warning: character constant too long [-w+other] ./w7_file_management.asm:5: warning: byte data exceeds bounds [-w+number-overflow]

It turned out that I was missing a comma.

## Resources
Additional
1. File Management, Danish Khan  https://d-khan.github.io/cisc-courses/assembly/lectures/file_management/
