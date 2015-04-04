# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar_fd.s                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:24:25 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:24:28 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_putchar_fd

section	.text

_ft_putchar_fd:
	push	rdi

	mov		rdx, 1
	mov		rdi, rsi
	mov		rsi, rsp
	mov		rax, M_SCALL(WRITE)

	syscall

	pop		rax
	ret
