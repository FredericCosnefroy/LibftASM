#ifndef LIBFTASM_H
# define LIBFTASM_H

#include <stdio.h>
int ft_strlen(char *str);
int ft_isrange(char c, int start, int end);
int ft_isalpha(char c);
int ft_toupper(unsigned int c);
void	ft_bzero(void *str, unsigned int size);
char * ft_strcat(char * dst, char * src);
int ft_puts(char * str);

char * ft_strdup(char * str);
#endif
