# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahua <ahua@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/01/23 15:33:03 by ahua              #+#    #+#              #
#    Updated: 2015/04/02 21:44:44 by ahua             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fractol
SRC = main.c \
	  init.c \
	  key_hook.c \
	  color.c \
	  loop_hook.c \
	  julia.c \
	  mandelbrot.c \
	  douady.c

	
LIB	= libft/libft.a

OBJ = $(SRC:.c=.o)
CC = gcc
FLAGS = -Wall -Wextra -Werror 

all: $(NAME)

$(NAME): $(OBJ)
	@make -C libft/ re
	@$(CC) -o $(NAME) $(OBJ) $(FLAGS) -I. $(LIB) -I minilibx_macos -lmlx -framework OpenGL -framework AppKit -Os

%.o: %.c
	@$(CC) -c -o $@ $(FLAGS) $^

.PHONY : clean fclean re

clean:
	@rm -f $(OBJ)
	@make -C libft/ clean

fclean: clean
	@rm -f $(NAME)
	@make -C libft/ fclean

re: fclean $(NAME)
