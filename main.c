#include "libftasm.h"
#include <stdlib.h>
#include <string.h>
int main(int argc, char **argv) {

	if (argc != 2)
	{
		printf("2 args\n");
		return (0);
	}
	if (ft_isrange(argv[1][0], 'a', 'z'))
		printf("OK1!\n");
	else
		printf("Fail1\n");
	if (ft_isalpha(60))
		printf("OK2!\n");
	else
		printf("Fail2!\n");
	printf("%c\n", ft_toupper(argv[1][0]));
	char * str = malloc(10);
	strcpy(str, "aaaa");
//	str[0] = 'A';
//	str[1] = 'A';
//	str[2] = 'A';
//	str[3] = 'A';
	char * str2 = malloc(6);
	strcpy(str2, "lol");
//	str2[1] = 'B';
//	str2[2] = 'B';
//	str2[3] = 'B';
//	str2[4] = 'B';
//	str2[5] = 'B';

	str = strcat(str, str2);
//	ft_bzero(str, 4);
//	ft_puts(str);
	char * str3 = ft_strdup(str);
	printf("%s\n", str3);
	return (0);
}
