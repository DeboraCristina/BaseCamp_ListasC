/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_memory.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/16 09:43:52 by desilva           #+#    #+#             */
/*   Updated: 2022/03/16 20:48:16 by desilva          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

int	ft_str_is_printable(char c)
{
	if (c >= 32 && c <= 126)
		return (1);
	return (0);
}

char	*ft_chartohex(char *res, int c)
{
	char	cont;
	char	pd;
	char	sd;

	cont = 0;
	pd = '0';
	sd = '0';
	while (cont < c)
	{
		sd++ ;
		if (sd == ':')
			sd = 'a';
		if (sd > 'f')
		{
			sd = '0';
			pd++;
		}
		++ cont;
	}
	res[0] = pd;
	res[1] = sd;
	return (res);
}


void	*ft_print_memory(void *addr)
{
	char	separador;
	char	hex[2];

	separador = 0;
	while (separador <= 32)
	{
		if (separador % 4 == 0)
			ft_putchar(' ');
		ft_chartohex(hex, addr[separador]);
		ft_putchar(hex[0]);
		ft_putchar(hex[1]);
	}
}
