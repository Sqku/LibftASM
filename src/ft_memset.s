# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:34:11 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:34:13 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text

global	_ft_memset

_ft_memset:
	push	rdi
	mov		rcx, rdx
	mov		rax, rsi

	cld
	rep		stosb

	pop		rax
	ret
