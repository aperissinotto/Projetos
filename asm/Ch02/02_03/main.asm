; call extern functions
extern input
extern print_string
extern print_strz
extern newline_out

section .data
	prompt		db		"Who are you? ",0
	response	db		"Hello, ",0
    prompt2     db      "What is your mood? ",0
    response2   db      "Well, ",0
    response3   db      ", I fell ",0
    response4   db      " too ",0
	newline		db		10
	size		equ		16			; buffer size
    size2       equ     30          ; buffer size2
	SYS_exit	equ		60				; system call to terminated
	EXIT_OK		equ		0				; OK exit status

section .bss
	input_buf	resb	size		; string input buffer
    input_buf2  resb    size2       ; feeling buffer	

section .text
	global _start
_start:
    mov     rdi, prompt     ; point to prompt
    call    print_strz      ; print string

    mov     rdi, input_buf  ; point to buffer
    mov     rsi, size       ; point to length
    call    input           ; get the name

    mov     rdi, response   ; point to response
    call    print_strz      ; print string
    
    mov     rdi, input_buf  ; point to buffer
    call    print_strz      ; print string
    call    newline_out     ; pula linha

    mov     rdi, prompt2    ; point to prompt
    call    print_strz      ; print string

    mov     rdi, input_buf2 ; point to buffer
    mov     rsi, size2      ; point to length
    call    input           ; get the name

    mov     rdi, response2  ; point to response
    call    print_strz      ; print string
    mov     rdi, input_buf  ; point to buffer
    call    print_strz      ; print string
    mov     rdi, response3  ; point to response
    call    print_strz      ; print string
    mov     rdi, input_buf2 ; point to buffer
    call    print_strz      ; print string
    mov     rdi, response4  ; point to response
    call    print_strz      ; print string
    call    newline_out     ; pula linha

	mov		rax, SYS_exit			; exit program
	mov		rdi, EXIT_OK
	syscall

; end of _start