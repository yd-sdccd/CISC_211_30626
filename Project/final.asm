section .data 
	;enter msg and key
	msg db 'MSG'
	msg_len equ $ - msg
	key db 'key'
	
	;filename
	filename db 'output.txt', 0h
	
	;output to textfile
	line1 db 'Plain text: '
	line1_len equ $ - line1
	line2 db 'Key: '
	line2_len equ $ - line2
	line3 db 'Encrypted text: '
	line3_len equ $ - line3
	line4 db 'Decrypted text: '
	line4_len equ $ - line4
	
	newline db 0xa
	
section .text
	global _start
	
_start:
	mov ecx, 0
	
encrypt:
	mov al, [msg + ecx]
	xor al, [key + ecx]
	mov [encrypted_msg + ecx], al
	
	inc ecx
	cmp ecx, msg_len
	jl encrypt
	
	mov ecx, 0
	
decrypt:
	mov al, [encrypted_msg + ecx]
	xor al, [key + ecx]
	mov [decrypted_msg + ecx], al
	
	inc ecx
	cmp ecx, msg_len
	jl decrypt

output:
	;create file
	mov eax, 8
	mov ebx, filename
	mov ecx, 0777o
	int 0x80
	mov [fd_out], eax
	
	;write line1
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, line1
	mov edx, line1_len
	int 0x80
	;write msg
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, msg
	mov edx, msg_len
	int 0x80
	
	;new line
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, newline
	mov edx, 1
	int 0x80
	
	;write line2
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, line2
	mov edx, line2_len
	int 0x80
	;write key
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, key
	mov edx, msg_len
	int 0x80
	
	;new line
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, newline
	mov edx, 1
	int 0x80
	
	;write line3
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, line3
	mov edx, line3_len
	int 0x80
	;write encrypted_msg
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, encrypted_msg
	mov edx, msg_len
	int 0x80
	
	;new line
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, newline
	mov edx, 1
	int 0x80
	
	;write line4
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, line4
	mov edx, line4_len
	int 0x80
	;write decrypted_msg
	mov eax, 4
	mov ebx, [fd_out]
	mov ecx, decrypted_msg
	mov edx, msg_len
	int 0x80

close_exit:
	;close file
	mov eax, 6
	mov ebx, [fd_out]
	int 0x80
	
	;exit
	mov eax, 1
	mov ebx, 0
	int 0x80

section .bss
	encrypted_msg resb msg_len
	decrypted_msg resb msg_len
	fd_out resd 1
