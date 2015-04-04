# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:33:11 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:33:14 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text

global	_ft_isascii

_ft_isascii:
	cmp		rdi, 0
	jl		_retz
	cmp		rdi, 127
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
