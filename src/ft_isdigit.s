# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:33:29 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:33:32 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text

global	_ft_isdigit

_ft_isdigit:
	cmp		rdi, '0'
	jl		_retz
	cmp		rdi, '9'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
