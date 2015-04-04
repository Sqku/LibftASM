# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/04 13:26:31 by ahua              #+#    #+#              #
#    Updated: 2015/04/04 13:26:34 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text

global _ft_isupper

_ft_isupper:
	cmp		rdi, 'A'
	jl		_retz
	cmp		rdi, 'Z'
	jg		_retz

_reto:
	mov		rax, 1
	ret

_retz:
	mov		rax, 0
	ret
