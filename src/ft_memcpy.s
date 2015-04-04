section	.text

global	_ft_memcpy

_ft_memcpy:
	push	rdi

_cpy:
	cmp		rdx, 0
	je		_ret

	movsb
	dec		rdx
	jmp		_cpy

_ret:
	pop		rax
	ret