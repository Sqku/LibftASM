# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:38:24 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:38:27 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strdup
extern	_ft_strlen, _ft_memcpy, _malloc

section	.text

_ft_strdup:
	push	rdi
	call	_ft_strlen

	pop		rsi
	mov		rdi, rax
	mov		rbx, rsi
	push	rdi
	call	_malloc
	cmp		rax, 0x0
	je		_ret

	pop		rdx
	mov		rdi, rax
	mov		rsi, rbx
	call	_ft_memcpy

_ret:
	ret
