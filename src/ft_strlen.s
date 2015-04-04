# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:38:37 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:38:39 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strlen

section	.text

_ft_strlen:
	cmp		rdi, 0x0
	je		_ret_null

_ft_strlen_cnt:
	cmp		rdi, 0x0
	je		_ret
	mov		rax, 0x0
	mov		rcx, -1

	cld
	repnz	scasb

	not		rcx
	lea		rax, [rcx - 1]

_ret:
	ret

_ret_null:
	mov		rax, 0x0
	ret
