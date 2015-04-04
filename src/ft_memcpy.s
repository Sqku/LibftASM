# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:34:01 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:34:03 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
