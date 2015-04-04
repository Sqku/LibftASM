# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:26:17 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:26:19 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text

global _ft_isspace

_ft_isspace:
	cmp		rdi, 9
	je		_reto
	cmp		rdi, 10
	je		_reto
	cmp		rdi, 11
	je		_reto
	cmp		rdi, 12
	je		_reto
	cmp		rdi, 13
	je		_reto
	cmp		rdi, 32
	je		_reto
	mov		rax, 0
	ret

_reto:
	mov		rax, 1
	ret
