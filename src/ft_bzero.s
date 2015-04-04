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

section	.text

global	_ft_bzero

_ft_bzero:
	;push	rdi
	mov		rcx, rsi
	mov		rax, 0x0

	cld
	rep		stosb

	;pop		rax
	ret