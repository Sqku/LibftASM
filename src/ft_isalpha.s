# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 12:32:46 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 12:32:53 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text

global _ft_isalpha

_ft_isalpha:
		cmp		rdi, 65
		jl		_retz
		cmp		rdi, 122
		jg		_retz
		cmp		rdi, 90
		jle		_reto
		cmp		rdi, 97
		jge		_reto

_retz:
		mov		rax, 0
		ret

_reto:
		mov		rax, 1
		ret 
