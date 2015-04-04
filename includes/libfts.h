#ifndef LIBFTS_H
# define LIBFTS_H

# include <string.h>

void				ft_bzero(void *s, size_t n);
char				*ft_strcat(char *s1, const char *s2);
int					ft_isalnum(int c);
int					ft_isalpha(int c);
int					ft_isascii(int c);
int					ft_isdigit(int c);
int					ft_isprint(int c);
int					ft_tolower(int c);
int					ft_toupper(int c);
int					ft_puts(const char *str);

size_t				ft_strlen(const char *s);
void				*ft_memset(void *b, int c, size_t len);
void				*ft_memcpy(void *dst, const void *src, size_t n);
char				*ft_strdup(const char *s1);

void				ft_cat(int fd);

void				ft_putchar(char c);
void				ft_putchar_fd(char c, int fd);
void				ft_putstr(const char *s);
void				ft_putstr_fd(const char *s, int fd);
int					ft_puts_fd(const char *str, int fd);
int					ft_isspace(int c);
int					ft_isupper(int c);
int					ft_islower(int c);

#endif