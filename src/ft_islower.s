# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:26:42 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:26:47 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text

global	_ft_islower

_ft_islower:
	cmp		rdi, 'a'
	jl		_retz
	cmp		rdi, 'z'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov	rax, 0
	ret
