#!/bin/sh

clear

echo Insira o número \do exercício
ex=$1
if [ -z $1 ]
then
	ex=0
fi

# ex00
if [ $ex -eq 0 ]; then
main='
	#include "ft_strcmp.c"
	#include <stdio.h>
	#include <string.h>
	int	main(void)
	{
		char	string1[] = "Ola, Mundo!";
		char	string2[] = "Ola, Mundo!";
		printf("{ %d }\\n", strcmp(string1, string2));
		printf("\\n");
		printf("{ %d }\\n", ft_strcmp(string1, string2));
	}
'
# ex01
elif [ $ex -eq 1 ]; then
main='
	#include "ft_strncmp.c"
	#include <stdio.h>
	#include <string.h>
	int	main(void)
	{
		char	string3[] = "Ola, Mundo!";
		char	string4[] = "Ola, mundo!";
		int	i = 4;
		printf("{ %d }\\n", strncmp(string3, string4, i));
		printf("\\n");
		printf("{ %d }\\n", ft_strncmp(string3, string4, i));
	}
'
# ex02
elif [ $ex -eq 2 ]; then
main='
	#include "ft_strcat.c"
	#include <stdio.h>
	#include <string.h>
	int	main(void)
	{
		char source[ ] = " fresh2refresh" ;
		char target[ ]= " C tutorial" ;
		printf ( "Source string = %s\\n", source ) ;
		printf ( "Target string = %s\\n", target ) ;
		strcat ( target, source ) ;
		printf ( "Target string after strcat( ) = %s\\n", target ) ;
		
		char ft_source[ ] = " fresh2refresh" ;
		char ft_target[ ]= " C tutorial" ;
		printf ( "Source string = %s\\n", ft_source ) ;
		printf ( "Target string = %s\\n", ft_target ) ;
		ft_strcat ( ft_target, ft_source ) ;
		printf ( "Target string after strcat( ) = %s\\n", ft_target ) ;
	}
'
# ex03
elif [ $ex -eq 3 ]; then
main='
	#include "ft_strncat.c"
	#include <stdio.h>
	#include <string.h>
	int	main(void)
	{
		char source[ ] = " fresh2refresh" ;
		char target[ ]= " C tutorial" ;
		printf ( "Source string = %s\\n", source ) ;
		printf ( "Target string = %s\\n", target ) ;
		strncat ( target, source, 5 ) ;
		printf ( "Target string after strcat( ) = %s\\n", target ) ;
		
		char ft_source[ ] = " fresh2refresh" ;
		char ft_target[ ]= " C tutorial" ;
		printf ( "Source string = %s\\n", ft_source ) ;
		printf ( "Target string = %s\\n", ft_target ) ;
		ft_strncat ( ft_target, ft_source, 5 ) ;
		printf ( "Target string after strcat( ) = %s\\n", ft_target ) ;
	}
'
# ex04
elif [ $ex -eq 4 ]; then
main='
#include "ft_strstr.c"
#include <stdio.h>
#include <string.h>
int main(void)
{
	char	*string ="tate tesk testa tatus radicais";
	char	*p;
	char	*pont;
	char	*ache = "test";
	//char	*ache = "mundo";
	p = strstr (string,ache);
	if(p)
	{
		printf("String found!!\\n" );
		printf("\\n");
		printf ("Da frase \"%s\"\\n",string);
		printf("\"%s\" aparece apartir de \"%s\"\\n", ache, p);
	}
	else
		printf("string not found\\n" );

	pont = ft_strstr(string,ache);
	if(pont)
	{
		printf("String achada!!\\n" );
		printf("\\n");
		printf ("Da frase \"%s\"\\n",string);
		printf("\"%s\" aparece apartir de \"%s\"\\n", ache, pont);
	}
	else
		printf("string não achada\\n" );
	return 0;
}
'
# ex05
elif [ $ex -eq 5 ]; then
main='
	#include "ft_strlcat.c"
	#include <stdio.h>
	#include <string.h>
	int	main(void)
	{
		//
	}
'
fi

echo Testando EX0$ex...
echo -e "$main" > c03/ex0$ex/main.c
gcc -Wall -Wextra -Werror c03/ex0$ex/main.c ; ./a.out ; rm ./a.out ; rm c03/ex0$ex/main.c
