#!/bin/sh

clear

echo Insira o número \do exercício
#read ex
ex=$1

if [ $ex -eq 0 ]; then
main='#include "ft_ft.c"
#include <stdio.h>
int main(void)
{
	int i = 24;
	ft_ft(&i);
	printf("%d\\n", i);
}'
elif [ $ex -eq 1 ]; then
main='#include "ft_ultimate_ft.c"
#include <stdio.h>
int main(void)
{
	int i = 24;
	int *p1 = &i;
	int **p2 = &p1;
	int ***p3 = &p2;
	int ****p4 = &p3;
	int *****p5 = &p4;
	int ******p6 = &p5;
	int *******p7 = &p6;
	int ********p8 = &p7;
	int *********p9 = &p8;
	ft_ultimate_ft(p9);
	printf("%d\\n", i);
}'

elif [ $ex -eq 2 ]; then
main='#include "ft_swap.c"
int main(void)
{
	int na = 2;
	int nb = 4;

	printf("A = %d; B = %d\\n", na, nb);

	int *p1 = &na;
	//int *p2 = &nb;
	ft_swap(p1, &nb);

	printf("A = %d; B = %d\\n", na, nb);
}'

elif [ $ex -eq 3 ]; then
main='#include "ft_div_mod.c"
#include <stdio.h>
int main(void)
{
	int a = 23;
	int b = 5;

	printf("A = %d / B = %d\\n", a, b);

	ft_div_mod(a, b, &a, &b);

	printf("Divisão = %d & Módulo = %d\\n", a, b);
}'

elif [ $ex -eq 4 ]; then
main='#include "ft_ultimate_div_mod.c"
#include <stdio.h>
int main(void)
{
	int nA = 18;
	int nB = 7;

	printf("A = %d | B = %d\\n", nA, nB);

	ft_ultimate_div_mod(&nA, &nB);

	printf("Divisão = %d & Módulo = %d\\n", nA, nB);
}'

elif [ $ex -eq 5 ]; then
main='#include "ft_putstr.c"
#include <stdio.h>
int main(void)
{
	char	*string01;
	string01 = "abc";

	char	string02[] = "abobrinha";

	char	string03[4];
	string03[0] = 'o';
	string03[1] = 'l';
	string03[2] = 'a';
	string03[3] = '|';

	ft_putstr(string01);
	printf("\\n");
	ft_putstr(string02);
	printf("\\n");
	ft_putstr(string03);
	printf("\\n");
}'

elif [ $ex -eq 6 ]; then
main='#include "ft_strlen.c"
#include <stdio.h>
int main(void)
{
	char	*string01;
	string01 = "def";

	char	string02[] = "bananinha";

	int resultado01 = ft_strlen(string01);
	int resultado02 = ft_strlen(string02);

	printf("%s tem %d caracteres\\n",string01, resultado01);
	printf("%s tem %d caracteres\\n",string02, resultado02);
}'

elif [ $ex -eq 7 ]; then
main='#include "ft_rev_int_tab.c"
#include <stdio.h>
int main(void)
{
	int tabela[5];

	tabela[0] = 1;
	tabela[1] = 2;
	tabela[2] = 3;
	tabela[3] = 4;
	tabela[4] = 5;

	for (int n = 0; n < 5; n++)
	{
		printf("%d", tabela[n]);
	}
	printf("\\n");
	ft_rev_int_tab(tabela, 5);
	for (int n = 0; n < 5; n++)
	{
		printf("%d", tabela[n]);
	}
	printf("\\n");
}'

elif [ $ex -eq 8 ]; then
main='#include "ft_sort_int_tab.c"
#include <stdio.h>
int main(void)
{
	int	nums[] = {6, 1, 0, 4, 3, 2, 8, 5, 7};
	int	tnums = 9;
	int	c;
	
	c = 0;
	while (c < tnums)
	{
		printf("%d", nums[c++]);
	}
	printf("\\n");

	ft_sort_int_tab(nums, tnums);

	c = 0;
	while (c < tnums)
	{
		printf("%d", nums[c++]);
	}
	printf("\\n");
}'
fi

echo Testando EX0$ex...

echo -e "$main" > c01/ex0$ex/main.c
gcc -Wall -Wextra -Werror c01/ex0$ex/main.c ; ./a.out ; rm c01/ex0$ex/main.c

