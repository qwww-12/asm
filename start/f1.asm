section	.data
	var db 9

section	.text
	global _start

_start:
	mov rax, 60
	; mov rdi, [var] in memory rdi = 0x??????????????|09 -> this is a byte value of var and var is defined by byte so in another byte value is not found so we get on a garbage value but we can use normal mov

	; solution we need use movzx move zero extension
	movzx rdi, byte [var]
	; now rdi = 0x0000000000000009
	syscall

