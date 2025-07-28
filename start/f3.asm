section	.text
	global _start

_start:
	mov rax, 60
	call _exit
	syscall

_exit:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov [rsp], byte 21
	mov rdi, [rsp]
	add rsp, 8
	pop rbp
	ret
