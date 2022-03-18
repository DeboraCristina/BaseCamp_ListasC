#!/bin/sh

clear

echo Insira o número \do exercício
ex=$1
if [ -z $1 ]
then
	ex=0
fi

if [ $ex -eq 0 ]; then
main='
#include "ft_strcpy.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	string[15];

	//função a ser copiada
	strcpy(string, "Olá, Mundo!");
	//função do ex00
	ft_strcpy(string, "Hello, World!");
	printf("%s\\n", string);
}
'
elif [ $ex -eq 1 ]; then
main='
#include "ft_strncpy.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	string[15];
	int 	n;

	n = 4;
	strncpy(string, "Olá, Mundo!", n);
	printf("%s\\n", string);
	ft_strncpy(string, "Olá, Mundo!", n);
	printf("%s\\n", string);
}
'
elif [ $ex -eq 2 ]; then
main='
#include "ft_str_is_alpha.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*teste01 = "abc";
	char	*teste02 = "ABC";
	char	*teste03 = "Abc";
	char	*teste04 = "aB1";
	char	*teste05 = "a\\n";
	char	*teste06 = "123";

	printf("Teste 1 %s - {%d}\\n", teste01, ft_str_is_alpha(teste01));
	printf("Teste 2 %s - {%d}\\n", teste02, ft_str_is_alpha(teste02));
	printf("Teste 3 %s - {%d}\\n", teste03, ft_str_is_alpha(teste03));
	printf("Teste 4 %s - {%d}\\n", teste04, ft_str_is_alpha(teste04));
	printf("Teste 5 %s - {%d}\\n", teste05, ft_str_is_alpha(teste05));
	printf("Teste 6 %s - {%d}\\n", teste06, ft_str_is_alpha(teste06));
}
'
elif [ $ex -eq 3 ]; then
main='
#include "ft_str_is_numeric.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*teste01 = "1489";
	char	*teste02 = "0188";
	char	*teste03 = "Abc";
	char	*teste04 = "aB1";
	char	*teste05 = "a\\n";
	char	*teste06 = "123";

	printf("Teste 1 %s - {%d}\\n", teste01, ft_str_is_numeric(teste01));
	printf("Teste 2 %s - {%d}\\n", teste02, ft_str_is_numeric(teste02));
	printf("Teste 3 %s - {%d}\\n", teste03, ft_str_is_numeric(teste03));
	printf("Teste 4 %s - {%d}\\n", teste04, ft_str_is_numeric(teste04));
	printf("Teste 5 %s - {%d}\\n", teste05, ft_str_is_numeric(teste05));
	printf("Teste 6 %s - {%d}\\n", teste06, ft_str_is_numeric(teste06));
}
'
elif [ $ex -eq 4 ]; then
main='
#include "ft_str_is_lowercase.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*teste01 = "abc";
	char	*teste02 = "ABC";
	char	*teste03 = "123";

	printf("Teste 1 %s - {%d}\\n", teste01, ft_str_is_lowercase(teste01));
	printf("Teste 2 %s - {%d}\\n", teste02, ft_str_is_lowercase(teste02));
	printf("Teste 3 %s - {%d}\\n", teste03, ft_str_is_lowercase(teste03));
}
'
elif [ $ex -eq 5 ]; then
main='
#include "ft_str_is_uppercase.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*teste01 = "abc";
	char	*teste02 = "ABC";
	char	*teste03 = "123";

	printf("Teste 1 %s - {%d}\\n", teste01, ft_str_is_uppercase(teste01));
	printf("Teste 2 %s - {%d}\\n", teste02, ft_str_is_uppercase(teste02));
	printf("Teste 3 %s - {%d}\\n", teste03, ft_str_is_uppercase(teste03));
}
'
elif [ $ex -eq 6 ]; then
main='
#include "ft_str_is_printable.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*teste01 = "Abc";
	char	*teste02 = "aB1";
	char	*teste03 = "a\\n";
	char	*teste04 = "\0";

	printf("Teste 1 %s - {%d}\\n", teste01, ft_str_is_printable(teste01));
	printf("Teste 2 %s - {%d}\\n", teste02, ft_str_is_printable(teste02));
	printf("Teste 3 %s - {%d}\\n", teste03, ft_str_is_printable(teste03));
	printf("Teste 4 %s - {%d}\\n", teste04, ft_str_is_printable(teste04));
}
'
elif [ $ex -eq 7 ]; then
main='
#include "ft_strupcase.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char txt[] = "ola, mundo!";

	printf("%s\\n", ft_strupcase(txt));
}
'
elif [ $ex -eq 8 ]; then
main='
#include "ft_strlowcase.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char txt[] = "OLA, MUNDO!";

	printf("%s\\n", ft_strlowcase(txt));
}
'
elif [ $ex -eq 9 ]; then
main='
#include "ft_strcapitalize.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char string[] = "ola, mundo!";
	char string2[] = "oi, tudo bem? 42palavras quarenta-e-duas; cinquenta+e+um";
	printf("%s\\n", ft_strcapitalize(string));
	printf("%s\\n", ft_strcapitalize(string2));
}
'
elif [ $ex -eq 10 ]; then 
main='
#include "ft_strlcpy.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	printf("Não fiz. E não VOU fazer!");
}
'
elif [ $ex -eq 11 ]; then
main='
#include "ft_putstr_non_printable.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	*frase;

	frase = "Oi\\nvoce esta bem?";
	ft_putstr_non_printable(frase);
	printf("\\n");
}
'
elif [ $ex -eq 12 ]; then
main='
#include "ft_print_memory.c"
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char	c;

	printf("%p", &c);
	printf("\\n");
}
'
fi



if [ $ex -ge 10 ]
then
	echo Testando EX$ex...
	echo -e "$main" > c02/ex$ex/main.c
	gcc -Wall -Wextra -Werror c02/ex$ex/main.c ; ./a.out ; rm ./a.out ; rm c02/ex$ex/main.c
else
	echo Testando EX0$ex...
	echo -e "$main" > c02/ex0$ex/main.c
	gcc -Wall -Wextra -Werror c02/ex0$ex/main.c ; ./a.out ; rm ./a.out ; rm c02/ex0$ex/main.c
fi
