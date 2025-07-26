section	.text
	global _start
_start:
	push 21
	push 1
	call _21
	add rsp, 16
	mov rax, 60
	syscall
_21:
	push rbp
	mov rbp, rsp
	mov rdi, [rbp + 16]
	add rdi, [rbp + 24]
	dec rdi
	pop rbp
	ret
