%define M_SCALL(nb)			0x2000000 | nb
%define STDOUT				1
%define READ				3
%define WRITE				4
%define BUFF_SIZE			256

global	_ft_cat

section		.bss
	buff	resb	BUFF_SIZE

section		.text

_ft_cat:
	push	rbp
	mov		rbp, rsp

_cat:
	push	rdi

	mov		rsi, buff
	mov		rdx, BUFF_SIZE
	mov		rax, M_SCALL(READ)
	syscall
	jc		_ret

	cmp		rax, 0
	jle		_ret

	mov		rdi, STDOUT
	mov		rdx, rax
	mov		rax, M_SCALL(WRITE)
	syscall

	pop		rdi
	jmp		_cat

_ret:
	mov		rsp, rbp
	pop		rbp
	ret