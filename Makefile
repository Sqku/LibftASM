STATIC_LIB 	= libfts.a

SRC = ft_bzero.s \
	  ft_isalnum.s \
	  ft_isalpha.s \
	  ft_isascii.s \
	  ft_isdigit.s \
	  ft_isprint.s \
	  ft_memcpy.s \
	  ft_memcpy.s \
	  ft_memset.s \
	  ft_puts.s \
	  ft_strcat.s \
	  ft_strdup.s \
	  ft_strlen.s \
	  ft_tolower.s \
	  ft_toupper.s \
	  ft_putchar.s \
	  ft_putchar_fd.s \
	  ft_putstr.s \
	  ft_putstr_fd.s \
	  ft_puts_fd.s \
	  ft_isspace.s \
	  ft_isupper.s \
	  ft_islower.s \
	  ft_cat.s


STATIC_OBJ	= $(patsubst %.s,$(STATIC_DIR)/%.o,$(SRC))

HEAD_DIR	= includes
SRC_DIR		= src
STATIC_DIR	= static

CC			= gcc
NASM		= nasm -f macho64

$(shell mkdir -p $(STATIC_DIR))

all: $(STATIC_LIB)

$(STATIC_LIB): $(STATIC_OBJ)
	ar rc $@ $(STATIC_OBJ)
	ranlib $@

$(STATIC_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) -I $(HEAD_DIR) -o $@ $<

.PHONY: clean fclean re norme

clean:
	@rm -f $(STATIC_OBJ)

fclean: clean
	@rm -f $(STATIC_LIB)

re: fclean
	make

reall: all
