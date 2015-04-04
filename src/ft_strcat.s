# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:38:13 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:38:15 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strcat

section	.text

_ft_strcat:
	push	rdi
	cmp		rsi, 0x0
	je		_ret

_s1:
	cmp		byte[rdi], 0x0
	je		_s2
	inc		rdi
	jmp		_s1

_s2:
	cmp		byte[rsi], 0x0
	je		_ret

	movsb

	jmp		_s2

_ret:
	pop		rax
	ret
