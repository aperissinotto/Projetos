; generate a random number between rdi (low) and rsi (high)
extern rand

section .data
section .bss
section .text

global random_range
random_range:
	; (rand() % (max - min + 1)) + min
 call rand					   ; get random number in eax
 push rdi         ; save low value
 ; (max - min + 1)
 sub		rsi, rdi				; high - low
	add  rsi, 1      ; (high - low + 1)
 ; eax mod rsi
 xor  edx, edx				; clear edx prior to div
 mov  ecx, rsi    ; move range to ecx
 push eax         ; save random number
 div  ecx         ; eax = eax / ecx, edx = eax mod ecx
 ; eax = quotient edx = remainder
 mov  ecx, eax    ; move quotient to ecx
 pop  eax         ; retrieve original random number
 ; eax - (ecx * 


 mov		rax, rdi				; put into rax for return
	ret