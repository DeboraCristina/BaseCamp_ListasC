/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_non_printable.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: desilva <dede-2231@hotmail.com>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/15 21:30:00 by desilva           #+#    #+#             */
/*   Updated: 2022/03/16 09:45:40 by desilva          ###   ########.fr       */
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

void	ft_putstr_non_printable(char *str);

void	ft_putstr_non_printable(char *str)
{
	char	c;
	char	hex[2];

	c = 0;
	while (str[c])
	{
		if (ft_str_is_printable(str[c]))
			ft_putchar(str[c]);
		else
		{
			ft_putchar(92);
			ft_chartohex(hex, str[c]);
			ft_putchar(hex[0]);
			ft_putchar(hex[1]);
		}
		++c;
	}
}
