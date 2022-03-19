#!/bin/sh

clear

echo Insira o número \do exercício
ex=$1
if [ -z $1 ]
then
	ex=0
fi

if [ $ex -eq 0 ]; then
main='#include "ft_strlen.c"

#include <stdio.h>
int	main() //EX00
{
	char	*string;
	int	tam;

	string = "Ola, Mundo!";
	tam = ft_strlen(string);
	printf("O tamanho da palavra %s é [%d].\\n", string, tam);
	return (0);
}'
elif [ $ex -eq 1 ]; then
main='#include "ft_putstr.c"

#include <stdio.h>
int	main() //EX01
{
	ft_putstr("Ola, Mundo!");
	printf("\\n");
}'
elif [ $ex -eq 2 ]; then
main='#include "ft_putnbr.c"

#include <stdio.h>
int	main() //EX02
{
	ft_putnbr(-150);
	printf("\\n");
}
'
elif [ $ex -eq 3 ]; then
main='#include "ft_atoi.c"

#include <stdio.h>
int    ft_atoi(char *str);

int    main(void)
{
	char	*c;

	c = "   ++--+15";
    printf("%d\\n", ft_atoi(" ---+--1234ab567"));
    printf("%d\\n", ft_atoi(c));
}'
fi

if [ $ex -ge 10 ]
then
	echo Testando EX$ex...
	echo -e "$main" > c04/ex$ex/main.c
	gcc -Wall -Wextra -Werror c04/ex$ex/main.c ; ./a.out ; rm ./a.out ; rm c04/ex$ex/main.c
else
	echo Testando EX0$ex...
	echo -e "$main" > c04/ex0$ex/main.c
	gcc -Wall -Wextra -Werror c04/ex0$ex/main.c ; ./a.out ; rm ./a.out ; rm c04/ex0$ex/main.c
fi
