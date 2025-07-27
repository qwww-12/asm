section	.data
    	s db "qwww-12", 0xA, 0
	sps db ' '
	idx db 0
section	.text
	global _start
_start:
	mov rsi, s
	call _21char1char
	mov rdi, 21
	mov rax, 60
	syscall
_21char1char:
	.loop:
		movzx rbx, byte [idx]
		mov rsi, s
		cmp [rsi + rbx], byte 0
		je .done
		call write1
		inc byte [idx]
		jmp .loop
	.done:
		ret
write1:
	mov rax, 1
	mov rdi, 1
	lea rsi, [rsi + rbx]
	mov rdx, 1
	syscall
	cmp [rsi + 0], byte 10
	je _exitnl
	mov rsi, sps
	syscall
	ret
_exitnl:
	ret
