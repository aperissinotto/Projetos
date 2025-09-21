; message module - output a string
section .data
	string1		db		"Assembly: I'm a low-level language",0x0a
	string_len1	equ		$-string1
	
 string2		db		"Assembly: I'm fast",0x0a
	string_len2	equ		$-string2
	
 string3		db		"Assembly: My development cycle is long",0x0a
	string_len3	equ		$-string3

	STDOUT		equ		1			; standard output device
	SYS_write	equ		1			; system call to write message

section .bss
section .text

global call_dialog1
call_dialog1:	
	mov		rsi, string1				; text address
	mov		rdx, string_len1			; size
	mov		rdi, STDOUT				; output device
	mov		rax, SYS_write			; write the text
	syscall
	ret

global call_dialog2
call_dialog2:	
	mov		rsi, string2				; text address
	mov		rdx, string_len2			; size
	mov		rdi, STDOUT				; output device
	mov		rax, SYS_write			; write the text
	syscall
	ret

global call_dialog3
call_dialog3:	
	mov		rsi, string3				; text address
	mov		rdx, string_len3			; size
	mov		rdi, STDOUT				; output device
	mov		rax, SYS_write			; write the text
	syscall
	ret

; end