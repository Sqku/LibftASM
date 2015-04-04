# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr_fd.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:25:12 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:25:14 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define M_SCALL(nb)			0x2000000 | nb
%define WRITE				4

global	_ft_putstr_fd
extern	_ft_strlen

section	.text

_ft_putstr_fd:
	push	rdi
	call	_ft_strlen

	mov		rdx, rax
	mov		rdi, rsi
	pop		rsi
	mov		rax, M_SCALL(WRITE)

	syscall
	ret
