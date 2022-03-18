#include <unistd.h>
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char *p;

	p = "ola!";
	write(1, &"B", 32);
}

