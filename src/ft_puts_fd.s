# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts_fd.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:25:35 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:26:03 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_puts_fd
extern	_ft_strlen

section	.text

_ft_puts_fd:
	cmp		rdi, 0x0
	je		_ret

	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall

	push	10
	mov		rsi, rsp
	mov		rdx, 1
	mov		rax, M_SCALL(WRITE)

	syscall

	pop rax

_ret:
	ret
