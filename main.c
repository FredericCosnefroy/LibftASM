#include "libftasm.h"
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

int main(int argc, char **argv) {

	if (argc != 2)
	{
		printf("2 args\n");
		return (0);
	}
//	if (ft_isrange(argv[1][0], 'a', 'z'))
//		printf("OK1!\n");
//	else
//		printf("Fail1\n");
//	if (ft_isalpha(60))
//		printf("OK2!\n");
//	else
//		printf("Fail2!\n");
	char * str3 = malloc(8);
	ft_memcpy(str3, "Bonsoir", 8);
//	printf("%s\n", str3);
	//ft_strdup(str3);
	char * str4 = ft_strdup(str3);
	int fd = open(argv[1], O_RDONLY);
//	printf("%s\n", str4);
	ft_cat(fd);
//	printf("%s, %s, %d\n", str, str3, ft_strlen(str2));
	return (0);
}
