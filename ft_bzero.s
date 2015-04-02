# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/02 21:46:09 by ahua              #+#    #+#              #
#    Updated: 2015/04/02 21:50:24 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_bzero

_ft_bzero:
		cmp		rcx, rsi
		je		_null
		push	rdi
		mov		rcx, rsi
		mov		rax, 0

		rep		stosb

		pop		rax
		ret

_null:
		mov		rax, 0
		ret

